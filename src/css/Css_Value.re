module Global = {
  /** {{: https://www.w3.org/TR/css-values-3/#common-keywords } CSS-wide keywords} */;

  [@bs.deriving jsConverter]
  type t = [ | [@bs.as "inherit"] `inherit_ | `initial | `unset];

  let show = tToJs;
};

/** CSS unit values (re-exports) */;

module Angle = {
  type t = [
    Css_Unit.Angle.t
    | `num(float)
    | `add(t, t)
    | `subtract(t, t)
    | `multiply(t, t)
    | `divide(t, t)
  ];
  let show = (value: t) => Css_Unit.show((value :> Css_Unit.t));
};

module Time = {
  type t = [
    Css_Unit.Time.t
    | `num(float)
    | `add(t, t)
    | `subtract(t, t)
    | `multiply(t, t)
    | `divide(t, t)
  ];
  let show = (value: t) => Css_Unit.show((value :> Css_Unit.t));
};

module Frequency = {
  type t = [
    Css_Unit.Frequency.t
    | `num(float)
    | `add(t, t)
    | `subtract(t, t)
    | `multiply(t, t)
    | `divide(t, t)
  ];
  let show = (value: t) => Css_Unit.show((value :> Css_Unit.t));
};

module Length = {
  type t = [
    Css_Unit.Length.t
    | `num(float)
    | `add(t, t)
    | `subtract(t, t)
    | `multiply(t, t)
    | `divide(t, t)
  ];
  let show = (value: t) => Css_Unit.show((value :> Css_Unit.t));
};

module Percent = {
  type t = [
    Css_Unit.Percent.t
    | `num(float)
    | `add(t, t)
    | `subtract(t, t)
    | `multiply(t, t)
    | `divide(t, t)
  ];
  let show = (value: t) => Css_Unit.show((value :> Css_Unit.t));
};

/** Common value types for rules */;

module Color = {
  /** {{: https://www.w3.org/TR/css-color-3 } Color} */;

  [@bs.deriving jsConverter]
  type basic_color = [
    | `aqua
    | `black
    | `blue
    | `fuchsia
    | `gray
    | `green
    | `lime
    | `maroon
    | `navy
    | `olive
    | `purple
    | `red
    | `silver
    | `teal
    | `white
    | `yellow
  ];

  [@bs.deriving jsConverter]
  type extended_color = [
    | `aliceblue
    | `antiquewhite
    | `aqua
    | `aquamarine
    | `azure
    | `beige
    | `bisque
    | `black
    | `blanchedalmond
    | `blue
    | `blueviolet
    | `brown
    | `burlywood
    | `cadetblue
    | `chartreuse
    | `chocolate
    | `coral
    | `cornflowerblue
    | `cornsilk
    | `crimson
    | `cyan
    | `darkblue
    | `darkcyan
    | `darkgoldenrod
    | `darkgray
    | `darkgreen
    | `darkgrey
    | `darkkhaki
    | `darkmagenta
    | `darkolivegreen
    | `darkorange
    | `darkorchid
    | `darkred
    | `darksalmon
    | `darkseagreen
    | `darkslateblue
    | `darkslategray
    | `darkslategrey
    | `darkturquoise
    | `darkviolet
    | `deeppink
    | `deepskyblue
    | `dimgray
    | `dimgrey
    | `dodgerblue
    | `firebrick
    | `floralwhite
    | `forestgreen
    | `fuchsia
    | `gainsboro
    | `ghostwhite
    | `gold
    | `goldenrod
    | `gray
    | `green
    | `greenyellow
    | `grey
    | `honeydew
    | `hotpink
    | `indianred
    | `indigo
    | `ivory
    | `khaki
    | `lavender
    | `lavenderblush
    | `lawngreen
    | `lemonchiffon
    | `lightblue
    | `lightcoral
    | `lightcyan
    | `lightgoldenrodyellow
    | `lightgray
    | `lightgreen
    | `lightgrey
    | `lightpink
    | `lightsalmon
    | `lightseagreen
    | `lightskyblue
    | `lightslategray
    | `lightslategrey
    | `lightsteelblue
    | `lightyellow
    | `lime
    | `limegreen
    | `linen
    | `magenta
    | `maroon
    | `mediumaquamarine
    | `mediumblue
    | `mediumorchid
    | `mediumpurple
    | `mediumseagreen
    | `mediumslateblue
    | `mediumspringgreen
    | `mediumturquoise
    | `mediumvioletred
    | `midnightblue
    | `mintcream
    | `mistyrose
    | `moccasin
    | `navajowhite
    | `navy
    | `oldlace
    | `olive
    | `olivedrab
    | `orange
    | `orangered
    | `orchid
    | `palegoldenrod
    | `palegreen
    | `paleturquoise
    | `palevioletred
    | `papayawhip
    | `peachpuff
    | `peru
    | `pink
    | `plum
    | `powderblue
    | `purple
    | `red
    | `rosybrown
    | `royalblue
    | `saddlebrown
    | `salmon
    | `sandybrown
    | `seagreen
    | `seashell
    | `sienna
    | `silver
    | `skyblue
    | `slateblue
    | `slategray
    | `slategrey
    | `snow
    | `springgreen
    | `steelblue
    | `tan
    | `teal
    | `thistle
    | `tomato
    | `turquoise
    | `violet
    | `wheat
    | `white
    | `whitesmoke
    | `yellow
    | `yellowgreen
  ];

  type rgb = [ | `rgb(int, int, int) | `rgba(int, int, int, float)];
  type hsl = [ | `hsl(int, int, int) | `hsla(int, int, int, float)];

  type t = [ Global.t | basic_color | extended_color | rgb | hsl];

  let show: t => string = (
    fun
    | #Global.t as global => Global.show(global)
    | #basic_color as basic_color => basic_colorToJs(basic_color)
    | #extended_color as extended_color => extended_colorToJs(extended_color)
    | `rgb(r, g, b) =>
      "rgb("
      ++ string_of_int(r)
      ++ ", "
      ++ string_of_int(g)
      ++ ", "
      ++ string_of_int(b)
      ++ ")"
    | `rgba(r, g, b, a) =>
      "rgba("
      ++ string_of_int(r)
      ++ ", "
      ++ string_of_int(g)
      ++ ", "
      ++ string_of_int(b)
      ++ ", "
      ++ Js.Float.toString(a)
      ++ ")"
    | `hsl(h, s, l) =>
      "hsl("
      ++ string_of_int(h)
      ++ ", "
      ++ string_of_int(s)
      ++ ", "
      ++ string_of_int(l)
      ++ ")"
    | `hsla(h, s, l, a) =>
      "hsla("
      ++ string_of_int(h)
      ++ ", "
      ++ string_of_int(s)
      ++ ", "
      ++ string_of_int(l)
      ++ ", "
      ++ Js.Float.toString(a)
      ++ ")":
      t => string
  );
};

module ColorOrTransparent = {
  /** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-color } Background color} */;

  type t = [ Color.t | `transparent];

  let show: t => string = (
    fun
    | #Color.t as color => Color.show(color)
    | `transparent => "transparent":
      t => string
  );
};

module Uri = {
  /** {{: https://www.w3.org/TR/CSS22/syndata.html#value-def-uri } URIs} */;

  type t = [ Global.t | `uri(string)];

  let show: t => string = (
    fun
    | #Global.t as global => Global.show(global)
    | `uri(uri) when uri == "" => "initial"
    | `uri(uri) => "url(\"" ++ uri ++ "\")":
      t => string
  );
};

module UriOrNone = {
  type t = [ Global.t | Uri.t | `none];

  let show: t => string = (
    fun
    | #Global.t as global => Global.show(global)
    | `uri(_) as uri => Uri.show(uri)
    | `none => "none":
      t => string
  );
};

module LengthPercent = {
  module Value = {
    type t = [
      Css_Unit.Length.t
      | Css_Unit.Percent.t
      | `num(float)
      | `add(t, t)
      | `subtract(t, t)
      | `multiply(t, t)
      | `divide(t, t)
    ];
    let show = (value: t) => Css_Unit.show((value :> Css_Unit.t));
  };

  type t = [ Global.t | Value.t | `auto];

  let show: t => string = (
    fun
    | #Global.t as global => Global.show(global)
    | #Value.t as value => Value.show(value)
    | `auto => "auto":
      t => string
  );
};

module TimePercent = {
  module Value = {
    type t = [
      Css_Unit.Time.t
      | Css_Unit.Percent.t
      | `num(float)
      | `add(t, t)
      | `subtract(t, t)
      | `multiply(t, t)
      | `divide(t, t)
    ];
    let show = (value: t) => Css_Unit.show((value :> Css_Unit.t));
  };

  type t = [ Global.t | Value.t];

  let show: t => string = (
    fun
    | #Global.t as global => Global.show(global)
    | #Value.t as value => Value.show(value):
      t => string
  );
};

module Background = {
  module Color = ColorOrTransparent;
  module Image = UriOrNone;

  module Position = {
    /** {{: https://www.w3.org/TR/css-values-3/#position } Position } */;

    [@bs.deriving jsConverter]
    type horizontal = [ | `left | `center | `right];
    [@bs.deriving jsConverter]
    type vertical = [ | `top | `center | `bottom];

    type t = [
      Global.t
      | LengthPercent.t
      | horizontal
      | vertical
      | `position(
          [ LengthPercent.t | horizontal],
          [ LengthPercent.t | vertical],
        )
    ];

    let rec show: t => string = (
      fun
      | #Global.t as global => Global.show(global)
      | #LengthPercent.t as value => LengthPercent.show(value)
      | #horizontal as horizontal => horizontalToJs(horizontal)
      | #vertical as vertical => verticalToJs(vertical)
      | `position(horizontal, vertical) =>
        show((horizontal :> t)) ++ " " ++ show((vertical :> t)):
        t => string
    );
  };

  module Repeat = {
    /** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-repeat } Background repeat} */;

    [@bs.deriving jsConverter]
    type value = [
      | `repeat
      | [@bs.as "repeat-x"] `repeat_x
      | [@bs.as "repeat-y"] `repeat_y
      | [@bs.as "no-repeat"] `no_repeat
    ];

    type t = [ Global.t | value];

    let show: t => string = (
      fun
      | #Global.t as global => Global.show(global)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  module Attachment = {
    /** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-attachment } Background attachment} */;

    [@bs.deriving jsConverter]
    type value = [ | `scroll | `fixed];

    type t = [ Global.t | value];

    let show: t => string = (
      fun
      | #Global.t as global => Global.show(global)
      | #value as value => valueToJs(value):
        t => string
    );
  };
};

module Border = {
  module Color = ColorOrTransparent;

  module Width = {
    /** {{: https://www.w3.org/TR/CSS22/box.html#value-def-border-width } Border width} */;

    [@bs.deriving jsConverter]
    type value = [ | `thin | `medium | `thick];
    type t = [ Global.t | Length.t | `thin | `medium | `thick];

    let show: t => string = (
      fun
      | #Global.t as global => Global.show(global)
      | #Length.t as length => Length.show(length)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  module Style = {
    /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-style } Border Style} */;

    [@bs.deriving jsConverter]
    type value = [
      | `none
      | `hidden
      | `dotted
      | `dashed
      | `solid
      | `double
      | `groove
      | `ridge
      | `inset
      | `outset
    ];

    type t = [ Global.t | value];

    let show: t => string = (
      fun
      | #Global.t as global => Global.show(global)
      | #value as value => valueToJs(value):
        t => string
    );
  };
};

module Font = {
  module Family = {
    /** {{: https://www.w3.org/TR/CSS22/fonts.html#propdef-font-family } Font family} */;

    [@bs.deriving jsConverter]
    type value = [
      | `serif
      | [@bs.as "sans-serif"] `sans_serif
      | `cursive
      | `fantasy
      | `monospace
    ];

    type font = [ | `font_name(string) | value];

    type t = [ Global.t | font | `fonts(font, list(font))];

    let show_value: font => string = (
      fun
      | `font_name(font_name) when font_name == "" => "initial"
      | `font_name(font_name) =>
        Js.Json.stringifyAny(font_name) |> Js.Option.getExn
      | #value as value => valueToJs(value):
        font => string
    );

    let show: t => string = (
      fun
      | #Global.t as value => Global.show(value)
      | #font as font => show_value(font)
      | `fonts(font, _fonts) =>
        [font, ..._fonts]->(Belt.List.map(show_value))
        |> Js.List.toVector
        |> Js.Array.joinWith(", "):
        t => string
    );
  };

  module Size = {
    /** {{: https://www.w3.org/TR/CSS22/fonts.html#propdef-font-size } Font size} */;

    [@bs.deriving jsConverter]
    type absolute_size = [
      | `xx_small
      | `x_small
      | `small
      | `medium
      | `large
      | `x_large
      | `xx_large
    ];

    [@bs.deriving jsConverter]
    type relative_size = [ | `larger | `smaller];

    type t = [ Global.t | LengthPercent.t | absolute_size | relative_size];

    let show: t => string = (
      fun
      | #Global.t as value => Global.show(value)
      | #LengthPercent.t as value => LengthPercent.show(value)
      | #absolute_size as value =>
        absolute_sizeToJs(value) |> Util.underscore_to_dash
      | #relative_size as value => relative_sizeToJs(value):
        t => string
    );
  };

  module Style = {
    /** {{: https://www.w3.org/TR/CSS22/fonts.html#propdef-font-style } Font style} */;

    [@bs.deriving jsConverter]
    type value = [ | `normal | `italic | `oblique];

    type t = [ Global.t | value];

    let show: t => string = (
      fun
      | #Global.t as value => Global.show(value)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  module Variant = {
    /** {{: https://www.w3.org/TR/CSS22/fonts.html#propdef-font-variant } Font variant} */;

    [@bs.deriving jsConverter]
    type value = [ | `normal | [@bs.as "small-caps"] `small_caps];

    type t = [ Global.t | value];

    let show: t => string = (
      fun
      | #Global.t as value => Global.show(value)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  module Weight = {
    /** {{: https://www.w3.org/TR/CSS22/fonts.html#propdef-font-weight } Font Weight} */;

    [@bs.deriving jsConverter]
    type value = [
      | `normal
      | `bold
      | `bolder
      | `lighter
      | [@bs.as "100"] `w100
      | [@bs.as "200"] `w200
      | [@bs.as "300"] `w300
      | [@bs.as "400"] `w400
      | [@bs.as "500"] `w500
      | [@bs.as "600"] `w600
      | [@bs.as "700"] `w700
      | [@bs.as "800"] `w800
      | [@bs.as "900"] `w900
    ];

    type t = [ Global.t | value];

    let show: t => string = (
      fun
      | #Global.t as value => Global.show(value)
      | #value as value => valueToJs(value):
        t => string
    );
  };
};

module LineHeight = {
  /** {{: https://www.w3.org/TR/CSS22/visudet.html#propdef-line-height } Line Height} */;

  /* NOTE: `<number>` is the same as using `em` so it's ommitted */
  type t = [ Global.t | LengthPercent.t | `normal];

  let show: t => string = (
    fun
    | #Global.t as value => Global.show(value)
    | #LengthPercent.t as value => LengthPercent.show(value)
    | `normal => "normal":
      t => string
  );
};

module ListStyle = {
  module Image = UriOrNone;

  module Position = {
    /** {{: https://www.w3.org/TR/CSS22/generate.html#propdef-list-style-position } List-style-position} */;

    [@bs.deriving jsConverter]
    type value = [ | `inside | `outside];

    type t = [ Global.t | value];

    let show: t => string = (
      fun
      | #Global.t as value => Global.show(value)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  module Type = {
    /** {{: https://www.w3.org/TR/CSS22/generate.html#propdef-list-style-type } List-style-type} */;

    [@bs.deriving jsConverter]
    type value = [
      | `disc
      | `circle
      | `square
      | `decimal
      | [@bs.as "decimal-leading-zero"] `decimal_leading_zero
      | [@bs.as "lower-roman"] `lower_roman
      | [@bs.as "upper-roman"] `upper_roman
      | [@bs.as "lower-greek"] `lower_greek
      | [@bs.as "lower-latin"] `lower_latin
      | [@bs.as "upper-latin"] `upper_latin
      | `armenian
      | `georgian
      | [@bs.as "lower-alpha"] `lower_alpha
      | [@bs.as "upper-alpha"] `upper_alpha
      | `none
    ];

    type t = [ Global.t | value];

    let show: t => string = (
      fun
      | #Global.t as value => Global.show(value)
      | #value as value => valueToJs(value):
        t => string
    );
  };
};

module Outline = {
  module Color = {
    type t = [ Color.t | `invert];

    let show: t => string = (
      fun
      | #Global.t as global => Global.show(global)
      | #Color.t as color => Color.show(color)
      | `invert => "invert":
        t => string
    );
  };

  module Style = Border.Style;
  module Width = Border.Width;
};

module PageBreak = {
  /** {{: https://www.w3.org/TR/CSS22/page.html#page-breaks } Page breaks} */;

  [@bs.deriving jsConverter]
  type value = [ | `auto | `always | `avoid | `left | `right];

  type inside = [ Global.t | `auto | `always];

  type t = [ Global.t | value];

  let show: t => string = (
    fun
    | #Global.t as global => Global.show(global)
    | #value as value => valueToJs(value):
      t => string
  );
};

module BreakInside = {
  /** {{: https://www.w3.org/TR/CSS22/page.html#break-inside } Break inside elements} */;

  type t = [ Global.t | `lines(int)];

  let show: t => string = (
    fun
    | #Global.t as global => Global.show(global)
    | `lines(lines) => string_of_int(lines):
      t => string
  );
};

module Flex = {
  module Direction = {
    [@bs.deriving jsConverter]
    type value = [
      | `row
      | [@bs.as "row-reverse"] `row_reverse
      | `column
      | [@bs.as "column-reverse"] `column_reverse
    ];

    type t = [ Global.t | value];

    let show: t => string = (
      fun
      | #Global.t as global => Global.show(global)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  module Wrap = {
    [@bs.deriving jsConverter]
    type value = [ | `nowrap | `wrap | [@bs.as "wrap-reverse"] `wrap_reverse];

    type t = [ Global.t | value];

    let show: t => string = (
      fun
      | #Global.t as global => Global.show(global)
      | #value as value => valueToJs(value):
        t => string
    );
  };
};

module TimingFunction = {
  [@bs.deriving jsConverter]
  type value = [
    | `linear
    | `ease
    | [@bs.as "ease-in"] `ease_in
    | [@bs.as "ease-out"] `ease_out
    | [@bs.as "ease-in-out"] `ease_in_out
  ];

  type t = [ Global.t | value | `cubic_bezier(float, float, float, float)];

  let show: t => string = (
    fun
    | #Global.t as global => Global.show(global)
    | #value as value => valueToJs(value)
    | `cubic_bezier(p0, p1, p2, p3) => {
        let value =
          [|p0, p1, p2, p3|]
          |> Js.Array.map(Js.Float.toString)
          |> Js.Array.joinWith(", ");

        "cubic-bezier(" ++ value ++ ")";
      }:
      t => string
  );
};
