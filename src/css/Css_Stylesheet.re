/** CSS Stylesheets */;

module CharsetRule = {
  type t = [ | `charset(Css_Charset.t)];

  let make = (value): t => `charset(value);

  let show = (`charset(charset): t): string =>
    "@charset " ++ Css_Charset.show(charset);
};

module FontFaceRule = {
  /** {{: https://www.w3.org/TR/css-fonts-3/#font-face-rule } Font-face rule} */;

  type t = [ | `font_face(string, string)];

  let make = (~family: string, ~src: string): t => `font_face((family, src));

  let show = (`font_face(family, src): t): string =>
    "@font-face {\n"
    ++ "  font-family: "
    ++ family
    ++ "\n"
    ++ "  src: "
    ++ src
    ++ "\n"
    ++ "}";
};

module PageRule = {
  /** {{: https://www.w3.org/TR/CSS22/page.html#page-box } The \@page rule} */;

  module Selector = {
    /** {{: https://www.w3.org/TR/CSS22/page.html#page-selectors } Page selectors} */;

    [@bs.deriving jsConverter]
    type t = [ | `left | `right | `first];
    let show = (x: t): string => ":" ++ tToJs(x);
  };

  type t = [
    | `page(option(Selector.t), Css_Style.t(Css_Property.MediaGroup.paged))
  ];

  let make =
      (
        ~size=?,
        ~page=?,
        ~margin=?,
        ~margin_top=?,
        ~margin_right=?,
        ~margin_bottom=?,
        ~margin_left=?,
        ~page_break_before=?,
        ~page_break_after=?,
        ~page_break_inside=?,
        ~orphans=?,
        ~widows=?,
        (),
      ) =>
    `page((
      page,
      Css_Style.MediaGroup.paged(
        ~size?,
        ~margin?,
        ~margin_top?,
        ~margin_right?,
        ~margin_bottom?,
        ~margin_left?,
        ~page_break_before?,
        ~page_break_after?,
        ~page_break_inside?,
        ~orphans?,
        ~widows?,
        (),
      ),
    ));

  let show = (`page(selector, properties): t): string => {
    let selector' =
      selector->(
                  Belt.Option.mapWithDefault("", e => " " ++ Selector.show(e))
                );

    "@page"
    ++ selector'
    ++ " {\n"
    ++ Css_Property.show_properties(~indent=1, properties)
    ++ "\n"
    ++ "}";
  };
};

module MediaRule = {
  type t = [
    | `media(Css_Media.t, Css_Selector.t, Css_Style.t(Css_Property.display))
  ];

  let print = (~only=false, ~condition=?, selector, properties): t => {
    let media_type =
      if (only) {
        `only(`print);
      } else {
        `print;
      };
    let query =
      condition->(
                   Belt.Option.mapWithDefault(
                     [`modifier(media_type)], condition =>
                     [`media_query((media_type, condition))]
                   )
                 );

    `media((
      query,
      selector,
      properties |> Css_Property.MediaType.print_to_display,
    ));
  };

  let screen = (~only=false, ~condition=?, selector, properties): t => {
    let media_type =
      if (only) {
        `only(`screen);
      } else {
        `screen;
      };
    let query =
      condition->(
                   Belt.Option.mapWithDefault(
                     [`modifier(media_type)], condition =>
                     [`media_query((media_type, condition))]
                   )
                 );

    `media((
      query,
      selector,
      properties |> Css_Property.MediaType.screen_to_display,
    ));
  };

  let speech = (~only=false, ~condition=?, selector, properties): t => {
    let media_type =
      if (only) {
        `only(`speech);
      } else {
        `speech;
      };
    let query =
      condition->(
                   Belt.Option.mapWithDefault(
                     [`modifier(media_type)], condition =>
                     [`media_query((media_type, condition))]
                   )
                 );

    `media((
      query,
      selector,
      properties |> Css_Property.MediaType.speech_to_display,
    ));
  };

  let show = (`media(media, selector, properties): t): string =>
    Css_Media.show(media)
    ++ " {\n"
    ++ Css_Selector.show_style(~indent=1, selector, properties)
    ++ "\n"
    ++ "}";
};

module StyleRule = {
  type t = [ | `style(Css_Selector.t, Css_Style.t(Css_Property.display))];

  let make = (selector, properties): t =>
    `style((
      selector,
      properties
      |> Js.Dict.map((. p) => (p :> Css_Property.t(Css_Property.display))),
    ));

  let show = (~indent=0, `style(selector, properties): t) => {
    let indent' = Js.String.repeat(indent, "  ");

    indent'
    ++ Css_Selector.show(selector)
    ++ " {\n"
    ++ Css_Property.show_properties(~indent=indent + 1, properties)
    ++ "\n"
    ++ indent'
    ++ "}";
  };
};

module CssModuleRule = {
  type t = [ | `css_module(Css_Module.t(Css_Property.display))];

  let make = (x): t => `css_module(Css_Module.to_display(x));

  let show = (`css_module(css_module): t): string =>
    Css_Module.show(css_module);
};

module KeyframesRule = {
  module Selector = {
    [@bs.deriving jsConverter]
    type keyframe_selector = [ | `from | [@bs.as "to"] `to_];
    type t = [ keyframe_selector | Css_Value.Percent.t];

    let show =
      fun
      | #keyframe_selector as selector => keyframe_selectorToJs(selector)
      | #Css_Value.Percent.t as percent => Css_Value.Percent.show(percent);
  };

  type keyframe_block = (
    Selector.t,
    Css_Style.t(Css_Property.keyframe_block),
  );

  type t = [ | `keyframes(string, list(keyframe_block))];

  let make = (name, blocks): t => {
    let blocks' =
      blocks
      |> List.map(((selector, properties)) =>{
           let properties' =
             properties
             |> Js.Dict.map((. p) =>
                  (p :> Css_Property.t(Css_Property.keyframe_block))
                );

           (selector, properties');
         });

    `keyframes((name, blocks'));
  };

  let show = (`keyframes(name, blocks): t): string => {
    let name' = name |> Js.Json.string |> Js.Json.stringify;

    let blocks' =
      (
        blocks
        |> List.map(((selector, properties)) =>{
             let indent = 1;
             let indent' = Js.String.repeat(indent, "  ");
             indent'
             ++ Selector.show(selector)
             ++ " {\n"
             ++ Css_Property.show_properties(~indent=indent + 1, properties)
             ++ "\n"
             ++ indent'
             ++ "}";
           })
      )
      ->(Util.join_with("\n"));

    "@keyframes " ++ name' ++ " {\n" ++ blocks' ++ "\n" ++ "}";
  };
};

module Rule = {
  type t = [
    MediaRule.t
    | StyleRule.t
    | CssModuleRule.t
    | PageRule.t
    | FontFaceRule.t
    | KeyframesRule.t
  ];

  type ruleset = list(t);

  let show = (x): string =>
    switch ((x :> t)) {
    | #MediaRule.t as media_rule => MediaRule.show(media_rule)
    | #StyleRule.t as style_rule => StyleRule.show(style_rule)
    | #CssModuleRule.t as css_module_rule =>
      CssModuleRule.show(css_module_rule)
    | #FontFaceRule.t as font_face => FontFaceRule.show(font_face)
    | #PageRule.t as page_rule => PageRule.show(page_rule)
    | #KeyframesRule.t as keyframes_rule => KeyframesRule.show(keyframes_rule)
    };
};

let media_print = (~only=?, ~condition=?, selector, properties): Rule.t => (
  MediaRule.print(~only?, ~condition?, selector, properties) :> Rule.t
)
and media_screen = (~only=?, ~condition=?, selector, properties): Rule.t => (
  MediaRule.screen(~only?, ~condition?, selector, properties) :> Rule.t
)
and media_speech = (~only=?, ~condition=?, selector, properties): Rule.t => (
  MediaRule.speech(~only?, ~condition?, selector, properties) :> Rule.t
)
and style = (selector, properties): Rule.t => (
  StyleRule.make(selector, properties) :> Rule.t
)
and css_module = (x): Rule.t => (CssModuleRule.make(x) :> Rule.t)
and font_face = (~family, ~src) => (
  FontFaceRule.make(~family, ~src) :> Rule.t
)
and page =
    (
      ~size=?,
      ~page=?,
      ~margin=?,
      ~margin_top=?,
      ~margin_right=?,
      ~margin_bottom=?,
      ~margin_left=?,
      ~page_break_before=?,
      ~page_break_after=?,
      ~page_break_inside=?,
      ~orphans=?,
      ~widows=?,
      (),
    )
    : Rule.t => (
  PageRule.make(
    ~size?,
    ~page?,
    ~margin?,
    ~margin_top?,
    ~margin_right?,
    ~margin_bottom?,
    ~margin_left?,
    ~page_break_before?,
    ~page_break_after?,
    ~page_break_inside?,
    ~orphans?,
    ~widows?,
    (),
  ) :> Rule.t
)
and keyframes = (name, properties) => (
  KeyframesRule.make(name, properties) :> Rule.t
);

type t = (CharsetRule.t, list(Rule.t));

let make = (charset, rules): t => (
  CharsetRule.make(charset),
  rules->(Belt.List.map(e => (e :> Rule.t))),
);

let show = ((charset, rules): t): string =>
  CharsetRule.show(charset)
  ++ ";\n\n"
  ++ rules->(Belt.List.map(Rule.show))->(Util.join_with("\n"));
