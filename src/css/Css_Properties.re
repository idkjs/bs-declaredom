module Internal = {
  external make: string => Css_Property.t(_) = "%identity";
};

module AnimationName = {
  type t(+'a) = Css_Property.t([> Css_Property.animation_name] as 'a);

  module Value = {
    type t = [ Css_Value.Global.t | `none | `name(string)];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `none => "none"
      | `name(name) => Js.Json.stringify(Js.Json.string(name)):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module AnimationDuration = {
  type t(+'a) = Css_Property.t([> Css_Property.animation_duration] as 'a);

  module Value = {
    type t = [ Css_Value.Global.t | Css_Value.Time.t];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #Css_Value.Time.t as time => Css_Value.Time.show(time):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module AnimationTimingFunction = {
  type t(+'a) =
    Css_Property.t([> Css_Property.animation_timing_function] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.TimingFunction.show(value);
};

module AnimationIterationCount = {
  type t(+'a) =
    Css_Property.t([> Css_Property.animation_iteration_count] as 'a);

  module Value = {
    type t = [ Css_Value.Global.t | `infinite | `repeat(int)];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `infinite => "infinite"
      | `repeat(count) => Js.Int.toString(count):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module AnimationDirection = {
  type t(+'a) = Css_Property.t([> Css_Property.animation_direction] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [
      | `normal
      | `reverse
      | `alternate
      | [@bs.as "alternate-reverse"] `alternate_reverse
    ];

    type t = [ Css_Value.Global.t | value];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module AnimationPlayState = {
  type t(+'a) = Css_Property.t([> Css_Property.animation_play_state] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [ | `running | `paused];

    type t = [ Css_Value.Global.t | value];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module AnimationDelay = {
  type t(+'a) = Css_Property.t([> Css_Property.animation_delay] as 'a);

  module Value = {
    type t = [ Css_Value.Global.t | Css_Value.Time.t];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #Css_Value.Time.t as time => Css_Value.Time.show(time):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module AnimationFillMode = {
  type t(+'a) = Css_Property.t([> Css_Property.animation_fill_mode] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [ | `none | `forwards | `backwards | `both];

    type t = [ Css_Value.Global.t | value];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module Animation = {
  type t(+'a) = Css_Property.t([> Css_Property.animation] as 'a);

  let make =
      (
        ~duration=?,
        ~timing=?,
        ~delay=?,
        ~iterate=?,
        ~direction=?,
        ~fill_mode=?,
        ~play_state=?,
        (),
      )
      : t('a) =>
    Util.combine_styles([|
      Belt.Option.map(duration, Css_Value.Time.show),
      Belt.Option.map(timing, Css_Value.TimingFunction.show),
      Belt.Option.map(delay, Css_Value.Time.show),
      Belt.Option.map(iterate, AnimationIterationCount.Value.show),
      Belt.Option.map(direction, AnimationDirection.Value.show),
      Belt.Option.map(fill_mode, AnimationFillMode.Value.show),
      Belt.Option.map(play_state, AnimationPlayState.Value.show),
    |])
    |> Internal.make;
};

module AlignContent = {
  type t(+'a) = Css_Property.t([> Css_Property.align_content] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [
      | [@bs.as "flex-start"] `flex_start
      | [@bs.as "flex-end"] `flex_end
      | `center
      | [@bs.as "space-between"] `space_between
      | [@bs.as "space-around"] `space_around
      | `stretch
    ];

    type t = [ Css_Value.Global.t | value];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module AlignItems = {
  type t(+'a) = Css_Property.t([> Css_Property.align_items] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [
      | [@bs.as "flex-start"] `flex_start
      | [@bs.as "flex-end"] `flex_end
      | `center
      | `baseline
      | `stretch
    ];

    type t = [ Css_Value.Global.t | value];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module AlignSelf = {
  type t(+'a) = Css_Property.t([> Css_Property.align_self] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [
      | `auto
      | [@bs.as "flex-start"] `flex_start
      | [@bs.as "flex-end"] `flex_end
      | `center
      | `baseline
      | `stretch
    ];

    type t = [ Css_Value.Global.t | value];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module Azimuth = {
  type t(+'a) = Css_Property.t([> Css_Property.azimuth] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [
      | [@bs.as "left-side"] `left_side
      | [@bs.as "far-left"] `far_left
      | `left
      | [@bs.as "center-left"] `center_left
      | `center
      | [@bs.as "center-right"] `center_right
      | `right
      | [@bs.as "far-right"] `far_right
      | [@bs.as "right-side"] `right_side
      | `leftwards
      | `rightwards
    ];

    type t = [
      Css_Value.Global.t
      | Css_Value.Angle.t
      | `behind'
      | `behind(value)
      | value
    ];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #Css_Value.Angle.t as angle => Css_Value.Angle.show(angle)
      | `behind' => "behind"
      | `behind(value) => "behind " ++ valueToJs(value)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module BackgroundAttachment = {
  type t(+'a) = Css_Property.t([> Css_Property.background_attachment] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Background.Attachment.show(value);
};

module BackgroundColor = {
  type t(+'a) = Css_Property.t([> Css_Property.background_color] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Background.Color.show(value);
};

module BackgroundImage = {
  type t(+'a) = Css_Property.t([> Css_Property.background_image] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Background.Image.show(value);
};

module BackgroundPosition = {
  type t(+'a) = Css_Property.t([> Css_Property.background_position] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Background.Position.show(value);
};

module BackgroundRepeat = {
  type t(+'a) = Css_Property.t([> Css_Property.background_repeat] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Background.Repeat.show(value);
};

module BackgroundSize = {
  type t(+'a) = Css_Property.t([> Css_Property.background_size] as 'a);

  module Value = {
    type t = [
      Css_Value.Global.t
      | Css_Value.LengthPercent.t
      | `cover
      | `contain
      | `size(Css_Value.LengthPercent.t, Css_Value.LengthPercent.t)
    ];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #Css_Value.LengthPercent.t as length =>
        Css_Value.LengthPercent.show(length)
      | `cover => "cover"
      | `contain => "contain"
      | `size(top_bottom, left_right) =>
        Css_Value.LengthPercent.show(top_bottom)
        ++ " "
        ++ Css_Value.LengthPercent.show(left_right):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module Background = {
  type t(+'a) = Css_Property.t([> Css_Property.background] as 'a);

  module Value = {
    type t = [
      Css_Value.Global.t
      | `background(
          option(Css_Value.Background.Color.t),
          option(Css_Value.Background.Image.t),
          option(Css_Value.Background.Repeat.t),
          option(Css_Value.Background.Attachment.t),
          option(Css_Value.Background.Position.t),
        )
    ];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `background(color, image, repeat, attachment, position) =>
        Util.combine_styles([|
          Belt.Option.map(color, Css_Value.Background.Color.show),
          Belt.Option.map(image, Css_Value.Background.Image.show),
          Belt.Option.map(repeat, Css_Value.Background.Repeat.show),
          Belt.Option.map(attachment, Css_Value.Background.Attachment.show),
          Belt.Option.map(position, Css_Value.Background.Position.show),
        |]):
        t => string
    );
  };

  let make =
      (~color=?, ~image=?, ~repeat=?, ~attachment=?, ~position=?, ()): t('a) => {
    let value = (color, image, repeat, attachment, position);
    Internal.make @@ Value.show(`background(value));
  };

  let make_value = (value: Css_Value.Global.t): t('a) =>
    Internal.make @@ Value.show((value :> Value.t));
};

module BorderCollapse = {
  type t(+'a) = Css_Property.t([> Css_Property.border_collapse] as 'a);

  module Value = {
    type t = [ Css_Value.Global.t | `collapse | `separate];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `collapse => "collapse"
      | `separate => "separate":
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module BorderColor = {
  type t(+'a) = Css_Property.t([> Css_Property.border_color] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Border.Color.show(value);
};

module BorderSpacing = {
  type t(+'a) = Css_Property.t([> Css_Property.border_spacing] as 'a);

  module Value = {
    type t = [ Css_Value.Global.t | Css_Value.Length.t];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as value => Css_Value.Global.show(value)
      | #Css_Value.Length.t as length => Css_Value.Length.show(length):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module BorderWidth = {
  type t(+'a) = Css_Property.t([> Css_Property.border_width] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Border.Width.show(value);
};

module BorderStyle = {
  type t(+'a) = Css_Property.t([> Css_Property.border_style] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Border.Style.show(value);
};

module BorderTop = {
  type t(+'a) = Css_Property.t([> Css_Property.border_top] as 'a);

  module Value = {
    type t = [
      Css_Value.Global.t
      | `border_top(
          option(Css_Value.Border.Width.t),
          option(Css_Value.Border.Style.t),
          option(Css_Value.Border.Color.t),
        )
    ];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `border_top(width, style, color) =>
        Util.combine_styles([|
          Belt.Option.map(width, Css_Value.Border.Width.show),
          Belt.Option.map(style, Css_Value.Border.Style.show),
          Belt.Option.map(color, Css_Value.Border.Color.show),
        |]):
        t => string
    );
  };

  let make = (~width=?, ~style=?, ~color=?, ()): t('a) =>
    Internal.make @@ Value.show(`border_top((width, style, color)));

  let make_value = (value: Css_Value.Global.t): t('a) =>
    Internal.make @@ Value.show((value :> Value.t));
};

module BorderRight = {
  type t(+'a) = Css_Property.t([> Css_Property.border_right] as 'a);

  module Value = {
    type t = [
      Css_Value.Global.t
      | `border_right(
          option(Css_Value.Border.Width.t),
          option(Css_Value.Border.Style.t),
          option(Css_Value.Border.Color.t),
        )
    ];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `border_right(width, style, color) =>
        Util.combine_styles([|
          Belt.Option.map(width, Css_Value.Border.Width.show),
          Belt.Option.map(style, Css_Value.Border.Style.show),
          Belt.Option.map(color, Css_Value.Border.Color.show),
        |]):
        t => string
    );
  };

  let make = (~width=?, ~style=?, ~color=?, ()): t('a) =>
    Internal.make @@ Value.show(`border_right((width, style, color)));

  let make_value = (value: Css_Value.Global.t): t('a) =>
    Internal.make @@ Value.show((value :> Value.t));
};

module BorderBottom = {
  type t(+'a) = Css_Property.t([> Css_Property.border_bottom] as 'a);

  module Value = {
    type t = [
      Css_Value.Global.t
      | `border_bottom(
          option(Css_Value.Border.Width.t),
          option(Css_Value.Border.Style.t),
          option(Css_Value.Border.Color.t),
        )
    ];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `border_bottom(width, style, color) =>
        Util.combine_styles([|
          Belt.Option.map(width, Css_Value.Border.Width.show),
          Belt.Option.map(style, Css_Value.Border.Style.show),
          Belt.Option.map(color, Css_Value.Border.Color.show),
        |]):
        t => string
    );
  };

  let make = (~width=?, ~style=?, ~color=?, ()): t('a) =>
    Internal.make @@ Value.show(`border_bottom((width, style, color)));

  let make_value = (value: Css_Value.Global.t): t('a) =>
    Internal.make @@ Value.show((value :> Value.t));
};

module BorderLeft = {
  type t(+'a) = Css_Property.t([> Css_Property.border_left] as 'a);

  module Value = {
    type t = [
      Css_Value.Global.t
      | `border_left(
          option(Css_Value.Border.Width.t),
          option(Css_Value.Border.Style.t),
          option(Css_Value.Border.Color.t),
        )
    ];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `border_left(width, style, color) =>
        Util.combine_styles([|
          Belt.Option.map(width, Css_Value.Border.Width.show),
          Belt.Option.map(style, Css_Value.Border.Style.show),
          Belt.Option.map(color, Css_Value.Border.Color.show),
        |]):
        t => string
    );
  };

  let make = (~width=?, ~style=?, ~color=?, ()): t('a) =>
    Internal.make @@ Value.show(`border_left((width, style, color)));

  let make_value = (value: Css_Value.Global.t): t('a) =>
    Internal.make @@ Value.show((value :> Value.t));
};

module Border = {
  type t(+'a) = Css_Property.t([> Css_Property.border] as 'a);

  module Value = {
    type t = [
      Css_Value.Global.t
      | `border(
          option(Css_Value.Border.Width.t),
          option(Css_Value.Border.Style.t),
          option(Css_Value.Border.Color.t),
        )
    ];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `border(width, style, color) =>
        Util.combine_styles([|
          Belt.Option.map(width, Css_Value.Border.Width.show),
          Belt.Option.map(style, Css_Value.Border.Style.show),
          Belt.Option.map(color, Css_Value.Border.Color.show),
        |]):
        t => string
    );
  };

  let make = (~width=?, ~style=?, ~color=?, ()): t('a) =>
    Internal.make @@ Value.show(`border((width, style, color)));

  let make_value = (value: Css_Value.Global.t): t('a) =>
    Internal.make @@ Value.show((value :> Value.t));
};

module BorderTopColor = {
  type t(+'a) = Css_Property.t([> Css_Property.border_top_color] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Border.Color.show(value);
};

module BorderRightColor = {
  type t(+'a) = Css_Property.t([> Css_Property.border_right_color] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Border.Color.show(value);
};

module BorderBottomColor = {
  type t(+'a) = Css_Property.t([> Css_Property.border_bottom_color] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Border.Color.show(value);
};

module BorderLeftColor = {
  type t(+'a) = Css_Property.t([> Css_Property.border_left_color] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Border.Color.show(value);
};

module BorderTopStyle = {
  type t(+'a) = Css_Property.t([> Css_Property.border_top_style] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Border.Style.show(value);
};

module BorderRightStyle = {
  type t(+'a) = Css_Property.t([> Css_Property.border_right_style] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Border.Style.show(value);
};

module BorderBottomStyle = {
  type t(+'a) = Css_Property.t([> Css_Property.border_bottom_style] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Border.Style.show(value);
};

module BorderLeftStyle = {
  type t(+'a) = Css_Property.t([> Css_Property.border_left_style] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Border.Style.show(value);
};

module BorderTopWidth = {
  type t(+'a) = Css_Property.t([> Css_Property.border_top_width] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Border.Width.show(value);
};

module BorderRightWidth = {
  type t(+'a) = Css_Property.t([> Css_Property.border_right_width] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Border.Width.show(value);
};

module BorderBottomWidth = {
  type t(+'a) = Css_Property.t([> Css_Property.border_bottom_width] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Border.Width.show(value);
};

module BorderLeftWidth = {
  type t(+'a) = Css_Property.t([> Css_Property.border_left_width] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Border.Width.show(value);
};

module BorderRadius = {
  type t(+'a) = Css_Property.t([> Css_Property.border_radius] as 'a);

  module Value = {
    type t = [
      Css_Value.Global.t
      | Css_Value.LengthPercent.t
      | `border_radius(
          Css_Value.LengthPercent.t,
          Css_Value.LengthPercent.t,
          Css_Value.LengthPercent.t,
          Css_Value.LengthPercent.t,
        )
    ];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #Css_Value.LengthPercent.t as length =>
        Css_Value.LengthPercent.show(length)
      | `border_radius(top, right, bottom, left) =>
        Css_Value.LengthPercent.show(top)
        ++ " "
        ++ Css_Value.LengthPercent.show(right)
        ++ " "
        ++ Css_Value.LengthPercent.show(bottom)
        ++ " "
        ++ Css_Value.LengthPercent.show(left):
        t => string
    );
  };

  let make =
      (~top=`px(0.), ~right=`px(0.), ~bottom=`px(0.), ~left=`px(0.), ())
      : t('a) =>
    Internal.make @@ Value.show(`border_radius((top, right, bottom, left)));

  let make_value =
      (value: [ Css_Value.Global.t | Css_Value.LengthPercent.t]): t('a) =>
    Internal.make @@ Value.show((value :> Value.t));
};

module Bottom = {
  type t(+'a) = Css_Property.t([> Css_Property.bottom] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.LengthPercent.show(value);
};

module CaptionSide = {
  type t(+'a) = Css_Property.t([> Css_Property.caption_side] as 'a);

  module Value = {
    type t = [ Css_Value.Global.t | `top | `bottom];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as value => Css_Value.Global.show(value)
      | `top => "top"
      | `bottom => "bottom":
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module Clear = {
  type t(+'a) = Css_Property.t([> Css_Property.clear] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [ | `left | `right | `both | `none];

    type t = [ Css_Value.Global.t | value];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as value => Css_Value.Global.show(value)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module Clip = {
  type t(+'a) = Css_Property.t([> Css_Property.clip] as 'a);

  module Value = {
    type value = [ Css_Value.Length.t | `auto];

    let show_value: value => string = (
      fun
      | #Css_Value.Length.t as length => Css_Value.Length.show(length)
      | `auto => "auto":
        value => string
    );

    type t = [ Css_Value.Global.t | `rect(value, value, value, value)];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `rect(top, right, bottom, left) =>
        "rect("
        ++ show_value(top)
        ++ ", "
        ++ show_value(right)
        ++ ", "
        ++ show_value(bottom)
        ++ ", "
        ++ show_value(left)
        ++ ")":
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module Color = {
  type t(+'a) = Css_Property.t([> Css_Property.color] as 'a);

  module Value = {
    type t = [ Css_Value.Global.t | Css_Value.Color.t];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #Css_Value.Color.t as color => Css_Value.Color.show(color):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module CueAfter = {
  type t(+'a) = Css_Property.t([> Css_Property.cue_after] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.UriOrNone.show(value);
};

module CueBefore = {
  type t(+'a) = Css_Property.t([> Css_Property.cue_before] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.UriOrNone.show(value);
};

module Cue = {
  type t(+'a) = Css_Property.t([> Css_Property.cue] as 'a);

  module Value = {
    type t = [
      Css_Value.Global.t
      | `cue(Css_Value.UriOrNone.t, Css_Value.UriOrNone.t)
    ];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `cue(cue_before, cue_after) =>
        Css_Value.UriOrNone.show(cue_before)
        ++ " "
        ++ Css_Value.UriOrNone.show(cue_after):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module Cursor = {
  type t(+'a) = Css_Property.t([> Css_Property.cursor] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [
      | `auto
      | `crosshair
      | `default
      | `pointer
      | `move
      | [@bs.as "e-resize"] `e_resize
      | [@bs.as "ne-resize"] `ne_resize
      | [@bs.as "nw-resize"] `nw_resize
      | [@bs.as "n-resize"] `n_resize
      | [@bs.as "se-resize"] `se_resize
      | [@bs.as "sw-resize"] `sw_resize
      | [@bs.as "s-resize"] `s_resize
      | [@bs.as "w-resize"] `w_resize
      | `text
      | `wait
      | `help
      | `progress
    ];

    type t = [
      Css_Value.Global.t
      | `cursor_uri(list(Css_Value.Uri.t), value)
      | value
    ];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as value => Css_Value.Global.show(value)
      | `cursor_uri(uris, value) => {
          let uris' =
            uris->(Belt.List.map(e => Css_Value.Uri.show(e) ++ ", "))
            |> Js.List.toVector
            |> Js.Array.joinWith("");

          uris' ++ valueToJs(value) |> Js.String.trim;
        }
      | #value as value => valueToJs(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module Direction = {
  type t(+'a) = Css_Property.t([> Css_Property.direction] as 'a);

  module Value = {
    type t = [ Css_Value.Global.t | `rtl | `ltr];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `rtl => "rtl"
      | `ltr => "ltr":
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module Display = {
  type t(+'a) = Css_Property.t([> Css_Property.display'] as 'a);

  module Internal = {
    /* You shouldn't be able to create a display property directly */

    module Value = {
      [@bs.deriving jsConverter]
      type value = [
        | `none
        | `block
        | `flex
        | [@bs.as "list-item"] `list_item
        | `inline
        | [@bs.as "inline-block"] `inline_block
        | [@bs.as "inline-flex"] `inline_flex
        | [@bs.as "table-header-group"] `table_header_group
        | [@bs.as "table-footer-group"] `table_footer_group
        | [@bs.as "table-caption"] `table_caption
        | `table
        | [@bs.as "inline-table"] `inline_table
        | [@bs.as "table-cell"] `table_cell
        | [@bs.as "table-column"] `table_column
        | [@bs.as "table-column-group"] `table_column_group
        | [@bs.as "table-row"] `table_row
        | [@bs.as "table-row-group"] `table_row_group
      ];

      type t = [ Css_Value.Global.t | value];

      let show: t => string = (
        fun
        | #Css_Value.Global.t as global => Css_Value.Global.show(global)
        | #value as value => valueToJs(value):
          t => string
      );
    };

    let make = (value): t('a) => Internal.make @@ Value.show(value);
  };

  let none = (): Css_Property.t([> Css_Property.display']) =>
    Internal.make(`none);

  let flex = value =>
    Js.Dict.fromList([("display", Internal.make(`flex))])
    |> Util.merge(value);

  let inline_block = value =>
    Js.Dict.fromList([("display", Internal.make(`inline_block))])
    |> Util.merge(value);

  let inline_flex = value =>
    Js.Dict.fromList([("display", Internal.make(`inline_flex))])
    |> Util.merge(value);
};

module Elevation = {
  type t(+'a) = Css_Property.t([> Css_Property.elevation] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [ | `below | `level | `above | `higher | `lower];

    type t = [ Css_Value.Global.t | Css_Value.Angle.t | value];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #Css_Value.Angle.t as angle => Css_Value.Angle.show(angle)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module EmptyCells = {
  type t(+'a) = Css_Property.t([> Css_Property.empty_cells] as 'a);

  module Value = {
    type t = [ Css_Value.Global.t | `show | `hide];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `show => "show"
      | `hide => "hide":
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module Flex = {
  type t(+'a) = Css_Property.t([> Css_Property.flex'] as 'a);

  module Value = {
    type t = [
      Css_Value.Global.t
      | `none
      | `flex(
          option(float),
          option(float),
          option(Css_Value.LengthPercent.t),
        )
    ];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `none => "none"
      | `flex(grow, shrink, basis) => {
          let flex =
            Util.combine_styles([|
              Belt.Option.map(grow, Js.Float.toString),
              Belt.Option.map(shrink, Js.Float.toString),
              Belt.Option.map(basis, Css_Value.LengthPercent.show),
            |]);

          if (flex == "") {
            Css_Value.Global.show(`initial);
          } else {
            flex;
          };
        }:
        t => string
    );
  };

  let make = (~grow=?, ~shrink=?, ~basis=?, ()): t('a) =>
    Internal.make @@ Value.show(`flex((grow, shrink, basis)));

  let make_value = (value: [ Css_Value.Global.t | `none]): t('a) =>
    Internal.make @@ Value.show((value :> Value.t));
};

module FlexBasis = {
  type t(+'a) = Css_Property.t([> Css_Property.flex_basis] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.LengthPercent.show(value);
};

module FlexDirection = {
  type t(+'a) = Css_Property.t([> Css_Property.flex_direction] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Flex.Direction.show(value);
};

module FlexFlow = {
  type t(+'a) = Css_Property.t([> Css_Property.flex_flow] as 'a);

  module Value = {
    type t = [
      Css_Value.Global.t
      | `flow(Css_Value.Flex.Direction.t, Css_Value.Flex.Wrap.t)
    ];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `flow(direction, wrap) =>
        Css_Value.Flex.Direction.show(direction)
        ++ " "
        ++ Css_Value.Flex.Wrap.show(wrap):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module FlexGrow = {
  type t(+'a) = Css_Property.t([> Css_Property.flex_grow] as 'a);

  let make = (value): t('a) => Internal.make @@ Js.Float.toString(value);
};

module FlexShrink = {
  type t(+'a) = Css_Property.t([> Css_Property.flex_shrink] as 'a);

  let make = (value): t('a) => Internal.make @@ Js.Float.toString(value);
};

module FlexWrap = {
  type t(+'a) = Css_Property.t([> Css_Property.flex_wrap] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Flex.Wrap.show(value);
};

module Float = {
  type t(+'a) = Css_Property.t([> Css_Property.float_] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [ | `left | `right | `none];

    type t = [ Css_Value.Global.t | value];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as value => Css_Value.Global.show(value)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module FontFamily = {
  type t(+'a) = Css_Property.t([> Css_Property.font_family] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Font.Family.show(value);
};

module FontSize = {
  type t(+'a) = Css_Property.t([> Css_Property.font_size] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Font.Size.show(value);
};

module FontStyle = {
  type t(+'a) = Css_Property.t([> Css_Property.font_style] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Font.Style.show(value);
};

module FontVariant = {
  type t(+'a) = Css_Property.t([> Css_Property.font_variant] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Font.Variant.show(value);
};

module FontWeight = {
  type t(+'a) = Css_Property.t([> Css_Property.font_weight] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Font.Weight.show(value);
};

module Font = {
  type t(+'a) = Css_Property.t([> Css_Property.font] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [
      | `caption
      | `icon
      | `menu
      | [@bs.as "message-box"] `message_box
      | [@bs.as "small-caption"] `small_caption
      | [@bs.as "status-bar"] `status_bar
    ];

    type font = (
      option(Css_Value.Font.Style.t),
      option(Css_Value.Font.Variant.t),
      option(Css_Value.Font.Weight.t),
      Css_Value.Font.Size.t,
      option(Css_Value.LineHeight.t),
      Css_Value.Font.Family.t,
    );

    type t = [ Css_Value.Global.t | `font(font) | value];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as value => Css_Value.Global.show(value)
      | `font(style, variant, weight, size, line_height, family) => {
          let font =
            Util.combine_styles([|
              Belt.Option.map(style, Css_Value.Font.Style.show),
              Belt.Option.map(variant, Css_Value.Font.Variant.show),
              Belt.Option.map(weight, Css_Value.Font.Weight.show),
              Css_Value.Font.Size.show(size)->Some,
              Belt.Option.map(line_height, l =>
                "/" ++ Css_Value.LineHeight.show(l)
              ),
              Css_Value.Font.Family.show(family)->Some,
            |]);

          if (font == "") {
            Css_Value.Global.show(`initial);
          } else {
            font;
          };
        }
      | #value as value => valueToJs(value):
        t => string
    );
  };

  let make =
      (~style=?, ~variant=?, ~weight=?, ~line_height=?, size, family): t('a) =>
    Internal.make @@
    Value.show @@
    `font((style, variant, weight, size, line_height, family));

  let make_value = (value: [ Css_Value.Global.t | Value.value]): t('a) =>
    Internal.make @@ Value.show((value :> Value.t));
};

module Height = {
  type t(+'a) = Css_Property.t([> Css_Property.height] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.LengthPercent.show(value);
};

module JustifyContent = {
  type t(+'a) = Css_Property.t([> Css_Property.justify_content] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [
      | [@bs.as "flex-start"] `flex_start
      | [@bs.as "flex-end"] `flex_end
      | `center
      | [@bs.as "space-between"] `space_between
      | [@bs.as "space-around"] `space_around
    ];

    type t = [ Css_Value.Global.t | value];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module Left = {
  type t(+'a) = Css_Property.t([> Css_Property.left] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.LengthPercent.show(value);
};

module LetterSpacing = {
  type t(+'a) = Css_Property.t([> Css_Property.letter_spacing] as 'a);

  module Value = {
    type t = [ Css_Value.Global.t | Css_Value.Length.t | `normal];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as value => Css_Value.Global.show(value)
      | #Css_Value.Length.t as length => Css_Value.Length.show(length)
      | `normal => "normal":
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module LineHeight = {
  type t(+'a) = Css_Property.t([> Css_Property.line_height] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.LineHeight.show(value);
};

module ListStyleImage = {
  type t(+'a) = Css_Property.t([> Css_Property.list_style_image] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.ListStyle.Image.show(value);
};

module ListStylePosition = {
  type t(+'a) = Css_Property.t([> Css_Property.list_style_position] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.ListStyle.Position.show(value);
};

module ListStyleType = {
  type t(+'a) = Css_Property.t([> Css_Property.list_style_type] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.ListStyle.Type.show(value);
};

module ListStyle = {
  type t(+'a) = Css_Property.t([> Css_Property.list_style] as 'a);

  module Value = {
    type t = [
      Css_Value.Global.t
      | `list_style(
          option(Css_Value.ListStyle.Type.t),
          option(Css_Value.ListStyle.Position.t),
          option(Css_Value.ListStyle.Image.t),
        )
    ];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `list_style(type_, position, image) => {
          let list_style =
            Util.combine_styles([|
              Belt.Option.map(type_, Css_Value.ListStyle.Type.show),
              Belt.Option.map(position, Css_Value.ListStyle.Position.show),
              Belt.Option.map(image, Css_Value.ListStyle.Image.show),
            |]);

          if (list_style == "") {
            Css_Value.Global.show(`initial);
          } else {
            list_style;
          };
        }:
        t => string
    );
  };

  let make = (~type_=?, ~position=?, ~image=?, ()): t('a) =>
    Internal.make @@ Value.show(`list_style((type_, position, image)));

  let make_value = (value: Css_Value.Global.t): t('a) =>
    Internal.make @@ Value.show((value :> Value.t));
};

module Margin = {
  type t(+'a) = Css_Property.t([> Css_Property.margin] as 'a);

  module Value = {
    type t = [
      Css_Value.Global.t
      | Css_Value.LengthPercent.t
      | `margin(
          Css_Value.LengthPercent.t,
          Css_Value.LengthPercent.t,
          Css_Value.LengthPercent.t,
          Css_Value.LengthPercent.t,
        )
    ];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #Css_Value.LengthPercent.t as length =>
        Css_Value.LengthPercent.show(length)
      | `margin(top, right, bottom, left) =>
        Css_Value.LengthPercent.show(top)
        ++ " "
        ++ Css_Value.LengthPercent.show(right)
        ++ " "
        ++ Css_Value.LengthPercent.show(bottom)
        ++ " "
        ++ Css_Value.LengthPercent.show(left):
        t => string
    );
  };

  let make =
      (~top=`px(0.), ~right=`px(0.), ~bottom=`px(0.), ~left=`px(0.), ())
      : t('a) =>
    Internal.make @@ Value.show(`margin((top, right, bottom, left)));

  let make_value =
      (value: [ Css_Value.Global.t | Css_Value.LengthPercent.t]): t('a) =>
    Internal.make @@ Value.show((value :> Value.t));
};

module MarginTop = {
  type t(+'a) = Css_Property.t([> Css_Property.margin_top] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.LengthPercent.show(value);
};

module MarginRight = {
  type t(+'a) = Css_Property.t([> Css_Property.margin_right] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.LengthPercent.show(value);
};

module MarginBottom = {
  type t(+'a) = Css_Property.t([> Css_Property.margin_bottom] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.LengthPercent.show(value);
};

module MarginLeft = {
  type t(+'a) = Css_Property.t([> Css_Property.margin_left] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.LengthPercent.show(value);
};

module MaxHeight = {
  type t(+'a) = Css_Property.t([> Css_Property.max_height] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.LengthPercent.show(value);
};

module MaxWidth = {
  type t(+'a) = Css_Property.t([> Css_Property.max_width] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.LengthPercent.show(value);
};

module MinHeight = {
  type t(+'a) = Css_Property.t([> Css_Property.min_height] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.LengthPercent.show(value);
};

module MinWidth = {
  type t(+'a) = Css_Property.t([> Css_Property.min_width] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.LengthPercent.show(value);
};

module Opacity = {
  type t(+'a) = Css_Property.t([> Css_Property.opacity] as 'a);

  let make = (value): t('a) => Internal.make @@ Js.Float.toString(value);
};

module Order = {
  type t(+'a) = Css_Property.t([> Css_Property.order] as 'a);

  let make = (value): t('a) => Internal.make @@ Js.Int.toString(value);
};

module Orphans = {
  type t(+'a) = Css_Property.t([> Css_Property.orphans] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.BreakInside.show(value);
};

module OutlineColor = {
  type t(+'a) = Css_Property.t([> Css_Property.outline_color] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Outline.Color.show(value);
};

module OutlineStyle = {
  type t(+'a) = Css_Property.t([> Css_Property.outline_style] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Outline.Style.show(value);
};

module OutlineWidth = {
  type t(+'a) = Css_Property.t([> Css_Property.outline_width] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.Outline.Width.show(value);
};

module Outline = {
  type t(+'a) = Css_Property.t([> Css_Property.outline] as 'a);

  module Value = {
    type t = [
      Css_Value.Global.t
      | `outline(
          option(Css_Value.Outline.Color.t),
          option(Css_Value.Outline.Style.t),
          option(Css_Value.Outline.Width.t),
        )
    ];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `outline(color, style, width) =>
        Util.combine_styles([|
          Belt.Option.map(color, Css_Value.Outline.Color.show),
          Belt.Option.map(style, Css_Value.Outline.Style.show),
          Belt.Option.map(width, Css_Value.Outline.Width.show),
        |]):
        t => string
    );
  };

  let make = (~color=?, ~style=?, ~width=?, ()): t('a) =>
    Internal.make @@ Value.show(`outline((color, style, width)));

  let make_value = (value: Css_Value.Global.t): t('a) =>
    Internal.make @@ Value.show((value :> Value.t));
};

module Overflow = {
  type t(+'a) = Css_Property.t([> Css_Property.overflow] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [ | `visible | `hidden | `scroll | `auto];

    type t = [ Css_Value.Global.t | value];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module PaddingTop = {
  type t(+'a) = Css_Property.t([> Css_Property.padding_top] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.LengthPercent.show(value);
};

module PaddingRight = {
  type t(+'a) = Css_Property.t([> Css_Property.padding_right] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.LengthPercent.show(value);
};

module PaddingBottom = {
  type t(+'a) = Css_Property.t([> Css_Property.padding_bottom] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.LengthPercent.show(value);
};

module PaddingLeft = {
  type t(+'a) = Css_Property.t([> Css_Property.padding_left] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.LengthPercent.show(value);
};

module Padding = {
  type t(+'a) = Css_Property.t([> Css_Property.padding] as 'a);

  module Value = {
    type t = [
      Css_Value.Global.t
      | Css_Value.LengthPercent.t
      | `padding(
          Css_Value.LengthPercent.t,
          Css_Value.LengthPercent.t,
          Css_Value.LengthPercent.t,
          Css_Value.LengthPercent.t,
        )
    ];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #Css_Value.LengthPercent.t as length =>
        Css_Value.LengthPercent.show(length)
      | `padding(top, right, bottom, left) =>
        Css_Value.LengthPercent.show(top)
        ++ " "
        ++ Css_Value.LengthPercent.show(right)
        ++ " "
        ++ Css_Value.LengthPercent.show(bottom)
        ++ " "
        ++ Css_Value.LengthPercent.show(left):
        t => string
    );
  };

  let make =
      (~top=`px(0.), ~right=`px(0.), ~bottom=`px(0.), ~left=`px(0.), ())
      : t('a) =>
    Internal.make @@ Value.show(`padding((top, right, bottom, left)));

  let make_value =
      (value: [ Css_Value.Global.t | Css_Value.LengthPercent.t]): t('a) =>
    Internal.make @@ Value.show((value :> Value.t));
};

module PageBreakAfter = {
  type t(+'a) = Css_Property.t([> Css_Property.page_break_after] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.PageBreak.show(value);
};

module PageBreakBefore = {
  type t(+'a) = Css_Property.t([> Css_Property.page_break_before] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.PageBreak.show(value);
};

module PageBreakInside = {
  type t(+'a) = Css_Property.t([> Css_Property.page_break_inside] as 'a);

  let make = (value: Css_Value.PageBreak.inside): t('a) =>
    Internal.make @@
    Css_Value.PageBreak.show((value :> Css_Value.PageBreak.t));
};

module PauseAfter = {
  type t(+'a) = Css_Property.t([> Css_Property.pause_after] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.TimePercent.show(value);
};

module PauseBefore = {
  type t(+'a) = Css_Property.t([> Css_Property.pause_before] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.TimePercent.show(value);
};

module Pause = {
  type t(+'a) = Css_Property.t([> Css_Property.pause] as 'a);

  module Value = {
    type t = [
      Css_Value.Global.t
      | `pause(Css_Value.TimePercent.t, Css_Value.TimePercent.t)
    ];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `pause(pause_before, pause_after) =>
        Css_Value.TimePercent.show(pause_before)
        ++ " "
        ++ Css_Value.TimePercent.show(pause_after):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module PitchRange = {
  type t(+'a) = Css_Property.t([> Css_Property.pitch_range] as 'a);

  module Value = {
    type t = [ Css_Value.Global.t | `range(float)];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `range(range) => Js.Float.toString(range):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module Pitch = {
  type t(+'a) = Css_Property.t([> Css_Property.pitch] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [
      | [@bs.as "x-low"] `x_low
      | `low
      | `medium
      | `high
      | [@bs.as "x-high"] `x_high
    ];

    type t = [ Css_Value.Global.t | Css_Value.Frequency.t | value];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #Css_Value.Frequency.t as frequency =>
        Css_Value.Frequency.show(frequency)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module PlayDuring = {
  type t(+'a) = Css_Property.t([> Css_Property.play_during] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [ | `mix | `repeat];

    type t = [
      Css_Value.Global.t
      | Css_Value.Uri.t
      | `sound(Css_Value.Uri.t, value)
      | `auto
      | `none
    ];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #Css_Value.Uri.t as uri => Css_Value.Uri.show(uri)
      | `sound(uri, value) =>
        Css_Value.Uri.show(uri) ++ " " ++ valueToJs(value)
      | `auto => "auto"
      | `none => "none":
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module Position = {
  type t('a) = Js.Dict.t(Css_Property.t([< Css_Property.display] as 'a));

  module Internal = {
    type t(+'a) = Css_Property.t([> Css_Property.position] as 'a);

    module Value = {
      [@bs.deriving jsConverter]
      type value = [ | `static | `absolute | `relative | `fixed];

      type t = [ Css_Value.Global.t | value];

      let show: t => string = (
        fun
        | #Css_Value.Global.t as global => Css_Value.Global.show(global)
        | #value as value => valueToJs(value):
          t => string
      );
    };

    external to_display:
      Js.Dict.t(Css_Property.t(Css_Property.positioned)) =>
      Js.Dict.t(Css_Property.t([< Css_Property.display])) =
      "%identity";

    let make = (value): t('a) => Internal.make @@ Value.show(value);
  };

  module Value = {
    type t = [
      | `static
      | `absolute(Js.Dict.t(Css_Property.t(Css_Property.positioned)))
      | `relative(Js.Dict.t(Css_Property.t(Css_Property.positioned)))
      | `fixed(Js.Dict.t(Css_Property.t(Css_Property.positioned)))
    ];

    let make: t => Internal.t('a) = (
      fun
      | `static => Internal.make(`static)
      | `absolute(_) => Internal.make(`absolute)
      | `relative(_) => Internal.make(`relative)
      | `fixed(_) => Internal.make(`fixed):
        t => Internal.t('a)
    );
  };

  let make: Value.t => t('a) = (
    fun
    | `static as static =>
      Js.Dict.fromList([("position", Value.make(static))])
      |> Internal.to_display
    | (`absolute(styles) | `relative(styles) | `fixed(styles)) as position =>
      Js.Dict.fromList([("position", Value.make(position))])
      |> Util.merge(styles)
      |> Internal.to_display:
      Value.t => t('a)
  );
};

module Richness = {
  type t(+'a) = Css_Property.t([> Css_Property.richness] as 'a);

  module Value = {
    type t = [ Css_Value.Global.t | `richness(float)];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `richness(value) => Js.Float.toString(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module Right = {
  type t(+'a) = Css_Property.t([> Css_Property.right] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.LengthPercent.show(value);
};

module Size = {
  type t(+'a) = Css_Property.t([> Css_Property.size] as 'a);

  module Value = {
    type t = [
      Css_Value.Global.t
      | `length(Css_Value.LengthPercent.t, Css_Value.LengthPercent.t)
      | `auto
    ];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `length(top_bottom, left_right) =>
        Css_Value.LengthPercent.show(top_bottom)
        ++ " "
        ++ Css_Value.LengthPercent.show(left_right)
      | `auto => "auto":
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module SpeakHeader = {
  type t(+'a) = Css_Property.t([> Css_Property.speak_header] as 'a);

  module Value = {
    type t = [ Css_Value.Global.t | `once | `always];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `once => "once"
      | `always => "always":
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module SpeakNumeral = {
  type t(+'a) = Css_Property.t([> Css_Property.speak_numeral] as 'a);

  module Value = {
    type t = [ Css_Value.Global.t | `digits | `continuous];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `digits => "digits"
      | `continuous => "continuous":
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module SpeakPunctuation = {
  type t(+'a) = Css_Property.t([> Css_Property.speak_punctuation] as 'a);

  module Value = {
    type t = [ Css_Value.Global.t | `code | `none];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `code => "code"
      | `none => "none":
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module Speak = {
  type t(+'a) = Css_Property.t([> Css_Property.speak] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [ | `normal | `none | [@bs.as "spell-out"] `spell_out];

    type t = [ Css_Value.Global.t | value];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module SpeechRate = {
  type t(+'a) = Css_Property.t([> Css_Property.speech_rate] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [
      | [@bs.as "x-slow"] `x_slow
      | `slow
      | `medium
      | `fast
      | [@bs.as "x-fast"] `x_fast
      | `faster
      | `slower
    ];

    type t = [ Css_Value.Global.t | value | `rate(float)];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #value as value => valueToJs(value)
      | `rate(rate) => Js.Float.toString(rate):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module Stress = {
  type t(+'a) = Css_Property.t([> Css_Property.stress] as 'a);

  module Value = {
    type t = [ Css_Value.Global.t | `stress(float)];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `stress(stress) => Js.Float.toString(stress):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module TableLayout = {
  type t(+'a) = Css_Property.t([> Css_Property.table_layout] as 'a);

  module Value = {
    type t = [ Css_Value.Global.t | `auto | `fixed];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | `auto => "auto"
      | `fixed => "fixed":
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module TextAlign = {
  type t(+'a) = Css_Property.t([> Css_Property.text_align] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [ | `left | `right | `center | `justify];

    type t = [ Css_Value.Global.t | value];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module TextDecoration = {
  type t(+'a) = Css_Property.t([> Css_Property.text_decoration] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [
      | `none
      | `underline
      | `overline
      | [@bs.as "line-through"] `line_through
      | `blink
    ];

    type t = [ Css_Value.Global.t | value];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module TextIndent = {
  type t(+'a) = Css_Property.t([> Css_Property.text_indent] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.LengthPercent.show(value);
};

module TextTransform = {
  type t(+'a) = Css_Property.t([> Css_Property.text_transform] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [ | `capitalize | `uppercase | `lowercase | `none];

    type t = [ Css_Value.Global.t | value];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module Top = {
  type t(+'a) = Css_Property.t([> Css_Property.top] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.LengthPercent.show(value);
};

module TransitionDelay = {
  type t(+'a) = Css_Property.t([> Css_Property.transition_delay] as 'a);

  let make = (value): t('a) => Internal.make @@ Css_Value.Time.show(value);
};

module TransitionDuration = {
  type t(+'a) = Css_Property.t([> Css_Property.transition_duration] as 'a);

  let make = (value): t('a) => Internal.make @@ Css_Value.Time.show(value);
};

module TransitionProperty = {
  type t(+'a) = Css_Property.t([> Css_Property.transition_property] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [ | `all | `none];

    type t = [ Css_Value.Global.t | value];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module TransitionTimingFunction = {
  type t(+'a) =
    Css_Property.t([> Css_Property.transition_timing_function] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.TimingFunction.show(value);
};

module Transition = {
  type t(+'a) = Css_Property.t([> Css_Property.transition] as 'a);

  let make = (~property=?, ~duration=?, ~timing=?, ~delay=?, ()): t('a) =>
    Util.combine_styles([|
      Belt.Option.map(property, TransitionProperty.Value.show),
      Belt.Option.map(duration, Css_Value.Time.show),
      Belt.Option.map(timing, Css_Value.TimingFunction.show),
      Belt.Option.map(delay, Css_Value.Time.show),
    |])
    |> Internal.make;
};

module UnicodeBidi = {
  type t(+'a) = Css_Property.t([> Css_Property.unicode_bidi] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [
      | `normal
      | `embed
      | [@bs.as "bidi-override"] `bidi_override
    ];

    type t = [ Css_Value.Global.t | value];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module UserSelect = {
  type t(+'a) = Css_Property.t([> Css_Property.user_select] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [ | `auto | `text | `none | `contain | `all];

    type t = [ Css_Value.Global.t | value];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module VerticalAlign = {
  type t(+'a) = Css_Property.t([> Css_Property.vertical_align] as 'a);

  module Value = {
    module ParentRelative = {
      [@bs.deriving jsConverter]
      type value = [
        | `baseline
        | `sub
        | `super
        | [@bs.as "text-top"] `text_top
        | [@bs.as "text-bottom"] `text_bottom
        | `middle
      ];

      type t = [ Css_Value.LengthPercent.t | value];

      let show: t => string = (
        fun
        | #Css_Value.LengthPercent.t as value =>
          Css_Value.LengthPercent.show(value)
        | #value as value => valueToJs(value):
          t => string
      );
    };

    module LineRelative = {
      [@bs.deriving jsConverter]
      type t = [ | `top | `bottom];

      let show = tToJs;
    };

    type t = [ Css_Value.Global.t | ParentRelative.t | LineRelative.t];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #ParentRelative.t as parent_relative =>
        ParentRelative.show(parent_relative)
      | #LineRelative.t as line_relative => LineRelative.show(line_relative):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module Visibility = {
  type t(+'a) = Css_Property.t([> Css_Property.visibility] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [ | `visible | `hidden | `collapse];

    type t = [ Css_Value.Global.t | value];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module VoiceFamily = {
  type t(+'a) = Css_Property.t([> Css_Property.voice_family] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type generic = [ | `male | `female | `child];

    type t = [ Css_Value.Global.t | generic | `specific(string)];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #generic as generic => genericToJs(generic)
      | `specific(value) when value == "" => "initial"
      | `specific(value) => Js.Json.stringifyAny(value) |> Js.Option.getExn:
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module Volume = {
  type t(+'a) = Css_Property.t([> Css_Property.volume] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [
      | `silent
      | [@bs.as "x-soft"] `x_soft
      | `soft
      | `medium
      | `loud
      | [@bs.as "x-loud"] `x_loud
    ];

    type t = [
      Css_Value.Global.t
      | Css_Value.Percent.t
      | `volume(float)
      | value
    ];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #Css_Value.Percent.t as percent => Css_Value.Percent.show(percent)
      | #value as value => valueToJs(value)
      | `volume(value) => Js.Float.toString(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module WhiteSpace = {
  type t(+'a) = Css_Property.t([> Css_Property.white_space] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [
      | `normal
      | `pre
      | `nowrap
      | [@bs.as "pre-wrap"] `pre_wrap
      | [@bs.as "pre-line"] `pre_line
    ];

    type t = [ Css_Value.Global.t | value];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module Widows = {
  type t(+'a) = Css_Property.t([> Css_Property.widows] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.BreakInside.show(value);
};

module Width = {
  type t(+'a) = Css_Property.t([> Css_Property.width] as 'a);

  let make = (value): t('a) =>
    Internal.make @@ Css_Value.LengthPercent.show(value);
};

module WordBreak = {
  type t(+'a) = Css_Property.t([> Css_Property.word_break] as 'a);

  module Value = {
    [@bs.deriving jsConverter]
    type value = [
      | `normal
      | [@bs.as "keep-all"] `keep_all
      | [@bs.as "break-all"] `break_all
      | [@bs.as "break-word"] `break_word
    ];

    type t = [ Css_Value.Global.t | value];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #value as value => valueToJs(value):
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module WordSpacing = {
  type t(+'a) = Css_Property.t([> Css_Property.word_spacing] as 'a);

  module Value = {
    type t = [ Css_Value.Global.t | Css_Value.Length.t | `normal];

    let show: t => string = (
      fun
      | #Css_Value.Global.t as global => Css_Value.Global.show(global)
      | #Css_Value.Length.t as length => Css_Value.Length.show(length)
      | `normal => "normal":
        t => string
    );
  };

  let make = (value): t('a) => Internal.make @@ Value.show(value);
};

module ZIndex = {
  type t(+'a) = Css_Property.t([> Css_Property.z_index] as 'a);

  let make = (value): t('a) => Internal.make @@ Js.Int.toString(value);
};

module Ruby = {
  /** {{: https://www.w3.org/TR/css-ruby-1/#ruby-props} Ruby Properties} */;

  module RubyPosition = {
    type t(+'a) = Css_Property.t([> Css_Property.ruby_position] as 'a);

    module Value = {
      [@bs.deriving jsConverter]
      type vertical = [
        | `over
        | `under
        | [@bs.as "inter-character"] `inter_character
      ];

      [@bs.deriving jsConverter]
      type horizontal = [ | `right | `left];

      type t = [ Css_Value.Global.t | `position(vertical, horizontal)];

      let show: t => string = (
        fun
        | #Css_Value.Global.t as global => Css_Value.Global.show(global)
        | `position(vertical, horizontal) =>
          verticalToJs(vertical) ++ " " ++ horizontalToJs(horizontal):
          t => string
      );
    };

    let make = (value): t('a) => Internal.make @@ Value.show(value);
  };

  module RubyMerge = {
    type t(+'a) = Css_Property.t([> Css_Property.ruby_merge] as 'a);

    module Value = {
      [@bs.deriving jsConverter]
      type value = [ | `separate | `collapse | `auto];

      type t = [ Css_Value.Global.t | value];

      let show: t => string = (
        fun
        | #Css_Value.Global.t as global => Css_Value.Global.show(global)
        | #value as value => valueToJs(value):
          t => string
      );
    };

    let make = (value): t('a) => Internal.make @@ Value.show(value);
  };

  module RubyAlign = {
    type t(+'a) = Css_Property.t([> Css_Property.ruby_align] as 'a);

    module Value = {
      [@bs.deriving jsConverter]
      type value = [
        | `start
        | `center
        | [@bs.as "space-between"] `space_between
        | [@bs.as "space-around"] `space_around
      ];

      type t = [ Css_Value.Global.t | value];

      let show: t => string = (
        fun
        | #Css_Value.Global.t as global => Css_Value.Global.show(global)
        | #value as value => valueToJs(value):
          t => string
      );
    };

    let make = (value): t('a) => Internal.make @@ Value.show(value);
  };
};
