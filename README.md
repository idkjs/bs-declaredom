# bs-declaredom

[![Latest release](https://img.shields.io/github/release/Risto-Stevcev/bs-declaredom.svg?style=flat)](https://github.com/Risto-Stevcev/bs-declaredom/releases)
[![Build Status](https://travis-ci.org/Risto-Stevcev/bs-declaredom.svg?branch=master)](https://travis-ci.org/Risto-Stevcev/bs-declaredom)

Strongly typed declarative markup for the DOM and CSS


## Install

```sh
npm install --save @ristostevcev/bs-declaredom
```

## Examples

The examples in this README can be found in the [example/](https://github.com/Risto-Stevcev/bs-declaredom/tree/master/example) folder.


## Introduction

This library provides sound static typing guarantees for HTML and CSS. It ensures that you
write correct HTML and CSS in your app with good conventions like CSS modules.

The HTML that's generated are actual DOM nodes that can be converted into [bs-webapi-incubator's](https://github.com/reasonml-community/bs-webapi-incubator/) `Dom.element` types using `Html.Node.to_element`, or to a `Dom.node` 
using `Html.Node.to_node` if it's a text node or document fragment.


## Documentation

See the [docs](https://risto-stevcev.github.io/bs-declaredom/bs-declaredom/) and 
[dependency graph](https://raw.githubusercontent.com/Risto-Stevcev/bs-declaredom/master/graph.png


## JSX (Reason) or Ocaml

Use either JSX or vanilla Ocaml depending on which style you prefer

```reason
let foo: Html.Node.t([> Html.Node.div]) =
  <div>
    <span style=Css.inline(~color=`green, ())>
      <text>"Hello, world!"</text>
    </span>
    <br/>
  </div>
```

## Strongly typed CSS

Don't worry anymore about CSS silently failing! this library ensures that you only apply CSS styles and attributes that are valid for the element

```ocaml
let _ =
  div ~id:"some_div"
    (* This fails because div elements are block elements - the vertical-align
     * property applies to inline elements
    ~style:(Css.inline ~vertical_align:`baseline ())
     *)
    ~style:(Css.block ~color:`red ())
    [||]
```

You can override the CSS display styles, but this library intentionally restricts this functionality to the generic flow (`<div>`), phrasing (`<span>`) and sectioning (`<section>`) containers as other use cases are usually a CSS antipattern
```ocaml
let _ =
  Div.flex ~style:(Css.flexbox ~justify_content:`center ()) [|
    Span.inline_block ~style:(Css.inline_block ~color:`blue ()) [|text "foo"|];
    Section.inline_flex [|text "bar"|]
  |]
```


## Strongly typed HTML


Only valid children are allowed for each element
```ocaml
let _ =
  html [|
    (* This fails because the <html> tag only takes a <head> or <body> element 
     * as children
    span [|text "foo"|]
     *)
    head [||]
  |]
```

Only valid attributes are allowed for each element. The anchor tag accepts a `href` attribute, and the `link` aria role is also allowed
```ocaml
let anchor =
  a ~id:"link" ~href:"#"
    (* Anchor elements can accept the `link` aria role *)
    ~aria:(Html.Attributes.Aria.link ~aria_hidden:() ~aria_label:"foo" ())
    ~on_click:(fun _ -> Js.log "clicked!")
    [|text "some link"|]
```

## Target specific HTML in functions


Make functions that only take a specific kind of element or group of elements
```ocaml
let f (_: Html.Node.span Html.Node.t): unit = ()
let _ =
  f (span [|text "hello"|])
```

## Custom HTML


Add custom types. This creates a custom type called `foo`. This also works 
very well with web components
```ocaml
let custom_foo: [> [> `foo] Html.Node.custom] Html.Node.t = Obj.magic @@
  span [|text "foo"|]
```

You can even give your custom element the ability to take only specific children! OCaml's powerful polymorphic variants will correctly unify the elements you pass into the array.

This example constructs a custom `foo` element that only takes other custom `foo` elements, custom `bar` elements, and `span` and `br` elements:
```ocaml
let make_custom_bar
  (children: [[`bar | `foo] Html.Node.custom | Html.Node.span | Html.Node.br] Html.Node.t array):
  [> [> `bar] Html.Node.custom] Html.Node.t =
  (* TODO: stubbed, needs implementation *)
  Obj.magic children

let _: [`bar] Html.Node.custom Html.Node.t =
  make_custom_bar
  [|
    span [|text "Custom foo:"|];
    br ();
    custom_foo;
    (* This fails because <p> tags aren't allowed
    p [|text "foobar"|]
     *)
  |]
```

You can also typecheck based on your custom type
```ocaml
let f' (_: [`foo] Html.Node.custom Html.Node.t): unit = ()
let _ = f' custom_foo
```

## CSS Modules

CSS modules deal with a lot of the pitfalls of CSS in a large scale app. Provide one CSS module per component and no longer worry about precedence rules, or enforcing conventions like BEM, or applying silly hacks and refactoring if the dev team painted themselves into a corner. Keep it simple.
```ocaml
let my_title = Css.Module.make @@
  Css.block ~color:`coral ~font_size:(`em 24.) ()
```

Instead of mucking around with inheritance using CSS's inheritance model, you can build up 
abstractions using composition instead by merging rulesets, which is more explicit and easier 
to understand and predict.

You can then apply these to your elements, but make sure you serve the CSS module in a stylesheet (inline or served as a CSS file)
```ocaml
let _ =
  h1 ~css_module:my_title [|text "This is my title"|]
```

These work much like postcss modules except that you get to use Ocaml's type system to ensure that you only reference a module that actually exists, and no preprocessing is required.

And you can still build these if you aren't using Ocaml on the backend by generating the CSS stylesheets as part of your build, and then you can even apply other transformations like autoprefixer if you need to.


## Acknowledgments

This library is possible only because of Ocaml's powerful type system that is both 
strong, sound, and flexible. Speficially, it's Ocaml's module system and polymorphic 
variants that make this library possible.


## License

See LICENSE
