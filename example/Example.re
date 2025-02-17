module Modules = {
  let container =
    Css.Module.make(
    Css.block(~text_align=`center, ~clear=`both, ~color=`darkcyan, ()));

  let title =
    Css.Module.make(Css.inline(~vertical_align=`initial, ~color=`black, ()));

  let flex =
    Css.Module.make(
    Css.flex(
      ~flex_direction=`column,
      ~color=`coral,
      ~border=Css.Properties.Border.make(~width=`px(2.), ~style=`dotted, ()),
      (),
    ));

  let flex_item =
    Css.Module.make(Css.flex_item(~align_self=`flex_start, ()));

  /* You can use `map` on a css module. Here it's just upcasting the type, so
   * the actual implementation hasn't changed and the module name will stay the
   * same.
   * But if you modify the underlying styles then the module name also updates.
   */
  let foo =
    container
    |> Css.Module.map @@
    Js.Dict.map @@
    ((. a) => (a :> Css.Property.t(Css.Property.display)));
};

open Html;

let stylesheet =
  Css.Stylesheet.(
    make(
      `utf_8,
      [
        css_module(Modules.container),
        css_module(Modules.title),
        css_module(Modules.flex),
        css_module(Modules.flex_item),
      ],
    )
  );

let style = {
  open Webapi.Dom;
  let style = document |> Document.createElement("style");

  Element.setInnerHTML(style, Css.Stylesheet.show(stylesheet));
  style;
};

let body =
  Webapi.Dom.(
    document
    |> Document.asHtmlDocument
    |> Js.Option.andThen((. e) => HtmlDocument.body(e))
    |> Js.Option.getExn
  );

let _ = Webapi.Dom.Element.appendChild(style, body);

/* Don't worry anymore about CSS silently failing! this library ensures that
 * you only apply CSS styles and attributes that are valid for the element */
let _ =
  div(
    ~id="some_div",
    /* This fails because div elements are block elements - the vertical-align
      * property applies to inline elements
     ~style:(Css.inline ~vertical_align:`baseline ())
      */
    ~style=Css.block(~color=`red, ()),
    [||],
  );

/* You can override the CSS display styles, but this library intentionally
 * restricts this functionality to the generic flow (`<div>`), phrasing
 * (`<span>`) and sectioning (`<section>`) containers as other use cases are
 * usually a CSS antipattern */
let _ =
  Div.flex(
    ~style=Css.flex(~justify_content=`center, ()),
    [|
      Span.inline_block(
        ~style=Css.inline_block(~color=`blue, ()),
        [|text("foo")|],
      ),
      Section.inline_flex([|text("bar")|]),
    |],
  );

/* Only valid children are allowed for each element */
let _ =
  html([|
    /* This fails because the <html> tag only takes a <head> or <body> element
      * as children
     span [|text "foo"|]
      */
    head([||]),
  |]);

/* Only valid attributes are allowed for each element. The anchor tag accepts
 * a `href` attribute, and the `link` aria role is also allowed */
let anchor =
  a(
    ~id="link",
    ~href="#",
    /* Anchor elements can accept the `link` aria role */
    ~aria=Html.Aria.link(~aria_hidden=(), ~aria_label="foo", ()),
    ~on_click=_ => Js.log("clicked!"),
    [|text("some link")|],
  );

/* Make functions that only take a specific kind of element or group of elements */
let f = (_: Html.Node.t(Html.Node.span)): unit => ();
let _ = f(span([|text("hello")|]));

/* Add custom types. This creates a custom type called `foo`. This also works
 * very well with web components */
let custom_foo: Html.Node.t([> Html.Node.custom([> | `foo])]) = (
  Obj.magic @@ span([|text("foo")|]):
    Html.Node.t([> Html.Node.custom([> | `foo])])
);

/* You can even give your custom element the ability to take only specific
 * children! OCaml's powerful polymorphic variants will correctly unify the
 * elements you pass into the array.
 * This example constructs a custom `foo` element that only takes other custom
 * `foo` elements, custom `bar` elements, and `span` and `br` elements:
 */
let make_custom_bar =
    (
      children:
        array(
          Html.Node.t(
            [
              Html.Node.custom([ | `bar | `foo])
              | Html.Node.span
              | Html.Node.br
            ],
          ),
        ),
    )
    : Html.Node.t([> Html.Node.custom([> | `bar])]) =>
  /* TODO: stubbed, needs implementation */
  Obj.magic(children);

let _: Html.Node.t(Html.Node.custom([ | `bar])) =
  make_custom_bar([|
    span([|text("Custom foo:")|]),
    br(),
    custom_foo,
    /* This fails because <p> tags aren't allowed
       p [|text "foobar"|]
        */
  |]);

/* You can also typecheck based on your custom type */
let f' = (_: Html.Node.t(Html.Node.custom([ | `foo]))): unit => ();
let _ = f'(custom_foo);

/* CSS modules deal with a lot of the pitfalls of CSS in a large scale app.
 * Provide one CSS module per component and no longer worry about precedence
 * rules, or enforcing conventions like BEM, or applying silly hacks and
 * refactoring if the dev team painted themselves into a corner. Keep it simple. */
let my_title =
  Css.Module.make(Css.block(~color=`coral, ~font_size=`em(24.), ()));

/* You can then apply these to your elements, but make sure you serve the CSS
 * module in a stylesheet (inline or served as a CSS file) */
let _ = h1(~css_module=my_title, [|text("This is my title")|]);

/* These work much like postcss modules except that you get to use Ocaml's type
 * system to ensure that you only reference a module that actually exists, and
 * no preprocessing is required.
 *
 * And you can still build these if you aren't using Ocaml on the backend by
 * generating the CSS stylesheets as part of your build, and then you can even
 * apply other transformations like autoprefixer if you need to. */

/* Example */
let example =
  div(
    ~css_module=Modules.container,
    [|
      Div.flex(
        ~css_module=Modules.flex,
        [|
          span([|text("this")|])
          |> Html.Overrides.with_flex_css(~css_module=Modules.flex_item,_),
          span([|text("is")|]),
          span([|text("flexbox")|]),
        |],
      ),
      fragment([|
        /* this correctly fails because this fragment isn't a flex item,
         * so flex item styles don't apply:
         * span [|text "this"|] |> Html.Overrides.with_flex_css ~css_module:Modules.flex_item;
         */
        anchor,
        br(),
        span([|text("foo")|]),
        br(),
        span(~style=Css.inline(~font_weight=`bold, ()), [|text("bar")|]),
        fragment([|
          span([|text("baz")|]),
          /* this correctly fails because <title> is metadata content:
           * title "foo";
           */
        |]),
        br(),
      |]),
    |],
  );

let _ = Html_Node.append_to_body(example);
