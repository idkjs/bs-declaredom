/**
 CSS Properties

 See the {{: https://www.w3.org/TR/CSS22/propidx.html } full property table} for reference.
 Property values in the W3 spec are written in the
 {{: https://www.w3.org/TR/css-values-4/#component-combinators } component combinators} format.
 */;

module AlignContent: {
  /** {{: https://www.w3.org/TR/css-flexbox-1/#align-content-property} Align Content} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.align_content];
  module Value: {
    type value = [
      | `center
      | `flex_end
      | `flex_start
      | `space_around
      | `space_between
      | `stretch
    ];
    type t = [ Css_Value.Global.t | value];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.align_content]);
};
module AlignItems: {
  /** {{: https://www.w3.org/TR/css-flexbox-1/#align-items-property} Align Items} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.align_items];
  module Value: {
    type value = [ | `baseline | `center | `flex_end | `flex_start | `stretch];
    type t = [ Css_Value.Global.t | value];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.align_items]);
};
module AlignSelf: {
  /** {{: https://www.w3.org/TR/css-flexbox-1/#align-items-property} Align Self} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.align_self];
  module Value: {
    type value = [
      | `auto
      | `baseline
      | `center
      | `flex_end
      | `flex_start
      | `stretch
    ];
    type t = [ Css_Value.Global.t | value];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.align_self]);
};
module AnimationName: {
  /** {{: https://www.w3.org/TR/css-animations-1/#animation-name} Animation Name} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.animation_name];
  module Value: {
    type t = [ Css_Value.Global.t | `name(string) | `none];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.animation_name]);
};
module AnimationDuration: {
  /** {{: https://www.w3.org/TR/css-animations-1/#animation-duration} Animation Duration} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.animation_duration];
  module Value: {
    type t = [ Css_Value.Global.t | Css_Value.Time.t];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.animation_duration]);
};
module AnimationTimingFunction: {
  /** {{: https://www.w3.org/TR/css-animations-1/#animation-timing-function} Animation Timing Function} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.animation_timing_function];
  let make:
    Css_Value.TimingFunction.t =>
    t([> Css_Property.animation_timing_function]);
};
module AnimationIterationCount: {
  /** {{: https://www.w3.org/TR/css-animations-1/#animation-iteration-count} Animation Iteration Count} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.animation_iteration_count];
  module Value: {
    type t = [ Css_Value.Global.t | `infinite | `repeat(int)];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.animation_iteration_count]);
};
module AnimationDirection: {
  /** {{: https://www.w3.org/TR/css-animations-1/#animation-direction} Animation Direction} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.animation_direction];
  module Value: {
    type value = [ | `alternate | `alternate_reverse | `normal | `reverse];
    type t = [ Css_Value.Global.t | value];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.animation_direction]);
};
module AnimationPlayState: {
  /** {{: https://www.w3.org/TR/css-animations-1/#animation-play-state} Animation Play State} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.animation_play_state];
  module Value: {
    type value = [ | `paused | `running];
    type t = [ Css_Value.Global.t | value];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.animation_play_state]);
};
module AnimationDelay: {
  /** {{: https://www.w3.org/TR/css-animations-1/#animation-delay} Animation Delay} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.animation_delay];
  module Value: {
    type t = [ Css_Value.Global.t | Css_Value.Time.t];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.animation_delay]);
};
module AnimationFillMode: {
  /** {{: https://www.w3.org/TR/css-animations-1/#animation-fill-mode} Animation Fill Mode} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.animation_fill_mode];
  module Value: {
    type value = [ | `backwards | `both | `forwards | `none];
    type t = [ Css_Value.Global.t | value];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.animation_fill_mode]);
};
module Animation: {
  /** {{: https://www.w3.org/TR/css-animations-1/#animation} Animation} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.animation];
  let make:
    (
      ~duration: Css_Value.Time.t=?,
      ~timing: Css_Value.TimingFunction.t=?,
      ~delay: Css_Value.Time.t=?,
      ~iterate: AnimationIterationCount.Value.t=?,
      ~direction: AnimationDirection.Value.t=?,
      ~fill_mode: AnimationFillMode.Value.t=?,
      ~play_state: AnimationPlayState.Value.t=?,
      unit
    ) =>
    t([> Css_Property.animation]);
};
module Azimuth: {
  /** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-azimuth } Azimuth} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.azimuth];
  module Value: {
    type value = [
      | `center
      | `center_left
      | `center_right
      | `far_left
      | `far_right
      | `left
      | `left_side
      | `leftwards
      | `right
      | `right_side
      | `rightwards
    ];
    type t = [
      Css_Value.Global.t
      | Css_Value.Angle.t
      | `behind'
      | `behind(value)
      | value
    ];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.azimuth]);
};
module BackgroundAttachment: {
  /** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-attachment } Background Attachment} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.background_attachment];
  let make:
    Css_Value.Background.Attachment.t =>
    t([> Css_Property.background_attachment]);
};
module BackgroundColor: {
  /** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-color } Background Color} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.background_color];
  let make:
    Css_Value.Background.Color.t => t([> Css_Property.background_color]);
};
module BackgroundImage: {
  /** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-image } Background Image} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.background_image];
  let make:
    Css_Value.Background.Image.t => t([> Css_Property.background_image]);
};
module BackgroundPosition: {
  /** {{: https://www.w3.org/TR/CSS22/colors.html#background-properties } Background Position} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.background_position];
  let make:
    Css_Value.Background.Position.t => t([> Css_Property.background_position]);
};
module BackgroundRepeat: {
  /** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background-repeat } Background Repeat} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.background_repeat];
  let make:
    Css_Value.Background.Repeat.t => t([> Css_Property.background_repeat]);
};
module BackgroundSize: {
  /** {{: https://www.w3.org/TR/css-backgrounds-3/#the-background-size} Background Size} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.background_size];
  module Value: {
    type t = [
      Css_Value.Global.t
      | Css_Value.LengthPercent.t
      | `contain
      | `cover
      | `size(Css_Value.LengthPercent.t, Css_Value.LengthPercent.t)
    ];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.background_size]);
};
module Background: {
  /** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-background } Background} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.background];
  module Value: {
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
    let show: t => string;
  };
  let make:
    (
      ~color: Css_Value.Background.Color.t=?,
      ~image: Css_Value.Background.Image.t=?,
      ~repeat: Css_Value.Background.Repeat.t=?,
      ~attachment: Css_Value.Background.Attachment.t=?,
      ~position: Css_Value.Background.Position.t=?,
      unit
    ) =>
    t([> Css_Property.background]);
  let make_value: Css_Value.Global.t => t([> Css_Property.background]);
};
module BorderCollapse: {
  /** {{: https://www.w3.org/TR/CSS22/tables.html#propdef-border-collapse } Border Collapse} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.border_collapse];
  module Value: {
    type t = [ Css_Value.Global.t | `collapse | `separate];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.border_collapse]);
};
module BorderColor: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#border-color-properties } Border Color} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.border_color];
  let make: Css_Value.Border.Color.t => t([> Css_Property.border_color]);
};
module BorderSpacing: {
  /** {{: https://www.w3.org/TR/CSS22/tables.html#propdef-border-spacing } Border Spacing} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.border_spacing];
  module Value: {
    type t = [ Css_Value.Global.t | Css_Value.Length.t];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.border_spacing]);
};
module BorderWidth: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#border-width-properties } Border Width} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.border_width];
  let make: Css_Value.Border.Width.t => t([> Css_Property.border_width]);
};
module BorderStyle: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#border-style-properties } Border Style} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.border_style];
  let make: Css_Value.Border.Style.t => t([> Css_Property.border_style]);
};
module BorderTop: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-top } Border Top} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.border_top];
  module Value: {
    type t = [
      Css_Value.Global.t
      | `border_top(
          option(Css_Value.Border.Width.t),
          option(Css_Value.Border.Style.t),
          option(Css_Value.Border.Color.t),
        )
    ];
    let show: t => string;
  };
  let make:
    (
      ~width: Css_Value.Border.Width.t=?,
      ~style: Css_Value.Border.Style.t=?,
      ~color: Css_Value.Border.Color.t=?,
      unit
    ) =>
    t([> Css_Property.border_top]);
  let make_value: Css_Value.Global.t => t([> Css_Property.border_top]);
};
module BorderRight: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-right } Border Right} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.border_right];
  module Value: {
    type t = [
      Css_Value.Global.t
      | `border_right(
          option(Css_Value.Border.Width.t),
          option(Css_Value.Border.Style.t),
          option(Css_Value.Border.Color.t),
        )
    ];
    let show: t => string;
  };
  let make:
    (
      ~width: Css_Value.Border.Width.t=?,
      ~style: Css_Value.Border.Style.t=?,
      ~color: Css_Value.Border.Color.t=?,
      unit
    ) =>
    t([> Css_Property.border_right]);
  let make_value: Css_Value.Global.t => t([> Css_Property.border_right]);
};
module BorderBottom: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-bottom } Border Bottom} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.border_bottom];
  module Value: {
    type t = [
      Css_Value.Global.t
      | `border_bottom(
          option(Css_Value.Border.Width.t),
          option(Css_Value.Border.Style.t),
          option(Css_Value.Border.Color.t),
        )
    ];
    let show: t => string;
  };
  let make:
    (
      ~width: Css_Value.Border.Width.t=?,
      ~style: Css_Value.Border.Style.t=?,
      ~color: Css_Value.Border.Color.t=?,
      unit
    ) =>
    t([> Css_Property.border_bottom]);
  let make_value: Css_Value.Global.t => t([> Css_Property.border_bottom]);
};
module BorderLeft: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-left } Border Left} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.border_left];
  module Value: {
    type t = [
      Css_Value.Global.t
      | `border_left(
          option(Css_Value.Border.Width.t),
          option(Css_Value.Border.Style.t),
          option(Css_Value.Border.Color.t),
        )
    ];
    let show: t => string;
  };
  let make:
    (
      ~width: Css_Value.Border.Width.t=?,
      ~style: Css_Value.Border.Style.t=?,
      ~color: Css_Value.Border.Color.t=?,
      unit
    ) =>
    t([> Css_Property.border_left]);
  let make_value: Css_Value.Global.t => t([> Css_Property.border_left]);
};
module Border: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border } Border} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.border];
  module Value: {
    type t = [
      Css_Value.Global.t
      | `border(
          option(Css_Value.Border.Width.t),
          option(Css_Value.Border.Style.t),
          option(Css_Value.Border.Color.t),
        )
    ];
    let show: t => string;
  };
  let make:
    (
      ~width: Css_Value.Border.Width.t=?,
      ~style: Css_Value.Border.Style.t=?,
      ~color: Css_Value.Border.Color.t=?,
      unit
    ) =>
    t([> Css_Property.border]);
  let make_value: Css_Value.Global.t => t([> Css_Property.border]);
};
module BorderTopColor: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-top-color } Border Top Color} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.border_top_color];
  let make: Css_Value.Border.Color.t => t([> Css_Property.border_top_color]);
};
module BorderRightColor: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-right-color } Border Right Color} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.border_right_color];
  let make:
    Css_Value.Border.Color.t => t([> Css_Property.border_right_color]);
};
module BorderBottomColor: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-bottom-color } Border Bottom Color} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.border_bottom_color];
  let make:
    Css_Value.Border.Color.t => t([> Css_Property.border_bottom_color]);
};
module BorderLeftColor: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-left-color } Border Left Color} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.border_left_color];
  let make: Css_Value.Border.Color.t => t([> Css_Property.border_left_color]);
};
module BorderTopStyle: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-top-style } Border Top Style} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.border_top_style];
  let make: Css_Value.Border.Style.t => t([> Css_Property.border_top_style]);
};
module BorderRightStyle: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-right-style } Border Right Style} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.border_right_style];
  let make:
    Css_Value.Border.Style.t => t([> Css_Property.border_right_style]);
};
module BorderBottomStyle: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-bottom-style } Border Bottom Style} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.border_bottom_style];
  let make:
    Css_Value.Border.Style.t => t([> Css_Property.border_bottom_style]);
};
module BorderLeftStyle: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-left-style } Border Left Style} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.border_left_style];
  let make: Css_Value.Border.Style.t => t([> Css_Property.border_left_style]);
};
module BorderTopWidth: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-top-width } Border Top Width} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.border_top_width];
  let make: Css_Value.Border.Width.t => t([> Css_Property.border_top_width]);
};
module BorderRightWidth: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-right-width } Border Right Width} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.border_right_width];
  let make:
    Css_Value.Border.Width.t => t([> Css_Property.border_right_width]);
};
module BorderBottomWidth: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-bottom-width } Border Bottom Width} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.border_bottom_width];
  let make:
    Css_Value.Border.Width.t => t([> Css_Property.border_bottom_width]);
};
module BorderLeftWidth: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-border-left-width } Border Left Width} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.border_left_width];
  let make: Css_Value.Border.Width.t => t([> Css_Property.border_left_width]);
};
module BorderRadius: {
  /** {{: https://www.w3.org/TR/css-backgrounds-3/#the-border-radius } Border radius} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.border_radius];
  module Value: {
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
    let show: t => string;
  };

  let make:
    (
      ~top: Css_Value.LengthPercent.t=?,
      ~right: Css_Value.LengthPercent.t=?,
      ~bottom: Css_Value.LengthPercent.t=?,
      ~left: Css_Value.LengthPercent.t=?,
      unit
    ) =>
    t([> Css_Property.border_radius]);
  let make_value:
    [ Css_Value.Global.t | Css_Value.LengthPercent.t] =>
    t([> Css_Property.border_radius]);
};
module Bottom: {
  /** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-bottom } Bottom} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.bottom];
  let make: Css_Value.LengthPercent.t => t([> Css_Property.bottom]);
};
module CaptionSide: {
  /** {{: https://www.w3.org/TR/CSS22/tables.html#propdef-caption-side } Caption Side} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.caption_side];
  module Value: {
    type t = [ | `bottom | `inherit_ | `initial | `top | `unset];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.caption_side]);
};
module Clear: {
  /** {{: https://www.w3.org/TR/CSS22/visuren.html#flow-control } Clear} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.clear];
  module Value: {
    type value = [ | `both | `left | `none | `right];
    type t = [ Css_Value.Global.t | value];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.clear]);
};
module Clip: {
  /** {{: https://www.w3.org/TR/CSS22/visufx.html#propdef-clip } Clip} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.clip];
  module Value: {
    type value = [ Css_Value.Length.t | `auto];
    let show_value: value => string;
    type t = [ Css_Value.Global.t | `rect(value, value, value, value)];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.clip]);
};
module Color: {
  /** {{: https://www.w3.org/TR/CSS22/colors.html#propdef-color } Color} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.color];
  module Value: {
    type t = [ Css_Value.Global.t | Css_Value.Color.t];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.color]);
};
module CueAfter: {
  /** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-cue-after } Cue After} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.cue_after];
  let make: Css_Value.UriOrNone.t => t([> Css_Property.cue_after]);
};
module CueBefore: {
  /** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-cue-before } Cue Before} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.cue_before];
  let make: Css_Value.UriOrNone.t => t([> Css_Property.cue_before]);
};
module Cue: {
  /** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-cue } Cue} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.cue];
  module Value: {
    type t = [
      Css_Value.Global.t
      | `cue(Css_Value.UriOrNone.t, Css_Value.UriOrNone.t)
    ];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.cue]);
};
module Cursor: {
  /** {{: https://www.w3.org/TR/CSS22/ui.html#propdef-cursor} Cursor} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.cursor];
  module Value: {
    type value = [
      | `auto
      | `crosshair
      | `default
      | `e_resize
      | `help
      | `move
      | `n_resize
      | `ne_resize
      | `nw_resize
      | `pointer
      | `progress
      | `s_resize
      | `se_resize
      | `sw_resize
      | `text
      | `w_resize
      | `wait
    ];
    type t = [
      Css_Value.Global.t
      | `cursor_uri(list(Css_Value.Uri.t), value)
      | value
    ];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.cursor]);
};
module Direction: {
  /** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-direction} Direction} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.direction];
  module Value: {
    type t = [ Css_Value.Global.t | `rtl | `ltr];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.direction]);
};
module Display: {
  /**
     {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-display} Display}

     The display property is special: it overrides the default display style of
     an element. It's treated differently in order to keep things type safe.

     Instead of providing a [make] function, this module provides a function for
     each display style that takes a ruleset and creates an overrided ruleset.

     For example, {!val:block} returns {!type:Css_Property.override_block}
     [Js.Dict.t].
     These types are used by {!module:Html_Nodes}  to provide override versions
     of each constructor.

     {!val:none} is the only function that's analogous to [make], and creates
     a [display: none] property for general purpose use.
     */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.display'];

  let none: unit => t([> Css_Property.display']);
  let flex:
    Js.Dict.t(Css_Property.t(Css_Property.flex)) =>
    Js.Dict.t(Css_Property.t(Css_Property.flex));
  let inline_block:
    Js.Dict.t(Css_Property.t(Css_Property.inline_block)) =>
    Js.Dict.t(Css_Property.t(Css_Property.inline_block));
  let inline_flex:
    Js.Dict.t(Css_Property.t(Css_Property.inline_flex)) =>
    Js.Dict.t(Css_Property.t(Css_Property.inline_flex));
};
module Elevation: {
  /** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-elevation} Elevation} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.elevation];
  module Value: {
    type value = [ | `above | `below | `higher | `level | `lower];
    type t = [ Css_Value.Global.t | Css_Value.Angle.t | value];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.elevation]);
};
module EmptyCells: {
  /** {{: https://www.w3.org/TR/CSS22/tables.html#propdef-empty-cells} Empty Cells} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.empty_cells];
  module Value: {
    type t = [ Css_Value.Global.t | `show | `hide];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.empty_cells]);
};

module Flex: {
  /** {{: https://www.w3.org/TR/css-flexbox-1/#flex-property} Flex} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.flex'];
  module Value: {
    type t = [
      Css_Value.Global.t
      | `none
      | `flex(
          option(float),
          option(float),
          option(Css_Value.LengthPercent.t),
        )
    ];
    let show: t => string;
  };
  let make:
    (
      ~grow: float=?,
      ~shrink: float=?,
      ~basis: Css_Value.LengthPercent.t=?,
      unit
    ) =>
    t([> Css_Property.flex']);
  let make_value: [ Css_Value.Global.t | `none] => t([> Css_Property.flex']);
};
module FlexBasis: {
  /** {{: https://www.w3.org/TR/css-flexbox-1/#flex-basis-property} Flex Basis} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.flex_basis];
  let make: Css_Value.LengthPercent.t => t([> Css_Property.flex_basis]);
};
module FlexDirection: {
  /** {{: https://www.w3.org/TR/css-flexbox-1/#flex-direction-property} Flex Direction} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.flex_direction];
  let make: Css_Value.Flex.Direction.t => t([> Css_Property.flex_direction]);
};
module FlexFlow: {
  /** {{: https://www.w3.org/TR/css-flexbox-1/#flex-flow-property} Flex Flow} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.flex_flow];
  module Value: {
    type t = [
      Css_Value.Global.t
      | `flow(Css_Value.Flex.Direction.t, Css_Value.Flex.Wrap.t)
    ];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.flex_flow]);
};
module FlexGrow: {
  /** {{: https://www.w3.org/TR/css-flexbox-1/#flex-grow-property} Flex Grow} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.flex_grow];
  let make: float => t([> Css_Property.flex_grow]);
};
module FlexShrink: {
  /** {{: https://www.w3.org/TR/css-flexbox-1/#flex-shrink-property} Flex Shrink} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.flex_shrink];
  let make: float => t([> Css_Property.flex_shrink]);
};
module FlexWrap: {
  /** {{: https://www.w3.org/TR/css-flexbox-1/#flex-wrap-property} Flex Wrap} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.flex_wrap];
  let make: Css_Value.Flex.Wrap.t => t([> Css_Property.flex_wrap]);
};
module Float: {
  /** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-float} Float} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.float_];
  module Value: {
    type value = [ | `left | `none | `right];
    type t = [ Css_Value.Global.t | value];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.float_]);
};
module FontFamily: {
  /** {{: https://www.w3.org/TR/CSS22/fonts.html#propdef-font-family } Font Family} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.font_family];
  let make: Css_Value.Font.Family.t => t([> Css_Property.font_family]);
};
module FontSize: {
  /** {{: https://www.w3.org/TR/CSS22/fonts.html#font-size-props } Font Size} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.font_size];
  let make: Css_Value.Font.Size.t => t([> Css_Property.font_size]);
};
module FontStyle: {
  /** {{: https://www.w3.org/TR/CSS22/fonts.html#font-styling } Font Style} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.font_style];
  let make: Css_Value.Font.Style.t => t([> Css_Property.font_style]);
};
module FontVariant: {
  /** {{: https://www.w3.org/TR/CSS22/fonts.html#small-caps } Font Variant} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.font_variant];
  let make: Css_Value.Font.Variant.t => t([> Css_Property.font_variant]);
};
module FontWeight: {
  /** {{: https://www.w3.org/TR/CSS22/fonts.html#font-boldness } Font Weight} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.font_weight];
  let make: Css_Value.Font.Weight.t => t([> Css_Property.font_weight]);
};
module Font: {
  /** {{: https://www.w3.org/TR/CSS22/fonts.html#font-shorthand } Font} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.font];
  module Value: {
    type value = [
      | `caption
      | `icon
      | `menu
      | `message_box
      | `small_caption
      | `status_bar
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
    let show: t => string;
  };
  let make:
    (
      ~style: Css_Value.Font.Style.t=?,
      ~variant: Css_Value.Font.Variant.t=?,
      ~weight: Css_Value.Font.Weight.t=?,
      ~line_height: Css_Value.LineHeight.t=?,
      Css_Value.Font.Size.t,
      Css_Value.Font.Family.t
    ) =>
    t([> Css_Property.font]);
  let make_value:
    [ Css_Value.Global.t | Value.value] => t([> Css_Property.font]);
};
module Height: {
  /** {{: https://www.w3.org/TR/CSS22/visudet.html#the-height-property } Height} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.height];
  let make: Css_Value.LengthPercent.t => t([> Css_Property.height]);
};
module JustifyContent: {
  /** {{: https://www.w3.org/TR/css-flexbox-1/#justify-content-property} Justify Content} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.justify_content];
  module Value: {
    type value = [
      | `center
      | `flex_end
      | `flex_start
      | `space_around
      | `space_between
    ];
    type t = [ Css_Value.Global.t | value];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.justify_content]);
};
module Left: {
  /** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-left} Left} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.left];
  let make: Css_Value.LengthPercent.t => t([> Css_Property.left]);
};
module LetterSpacing: {
  /** {{: https://www.w3.org/TR/CSS22/text.html#spacing-props } Letter Spacing} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.letter_spacing];
  module Value: {
    type t = [ Css_Value.Global.t | Css_Value.Length.t | `normal];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.letter_spacing]);
};
module LineHeight: {
  /**
     {{: https://www.w3.org/TR/CSS22/visudet.html#propdef-line-height} Line Height}
     (see {{: https://www.w3.org/TR/CSS22/visudet.html#leading } leading})
     */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.line_height];
  let make: Css_Value.LineHeight.t => t([> Css_Property.line_height]);
};
module ListStyleImage: {
  /** {{: https://www.w3.org/TR/CSS22/generate.html#list-style } List Style Image} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.list_style_image];
  let make:
    Css_Value.ListStyle.Image.t => t([> Css_Property.list_style_image]);
};
module ListStylePosition: {
  /** {{: https://www.w3.org/TR/CSS22/generate.html#list-style } List Style Position} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.list_style_position];
  let make:
    Css_Value.ListStyle.Position.t => t([> Css_Property.list_style_position]);
};
module ListStyleType: {
  /** {{: https://www.w3.org/TR/CSS22/generate.html#list-style } List Style Type} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.list_style_type];
  let make: Css_Value.ListStyle.Type.t => t([> Css_Property.list_style_type]);
};
module ListStyle: {
  /** {{: https://www.w3.org/TR/CSS22/generate.html#list_style } List Style} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.list_style];
  module Value: {
    type t = [
      Css_Value.Global.t
      | `list_style(
          option(Css_Value.ListStyle.Type.t),
          option(Css_Value.ListStyle.Position.t),
          option(Css_Value.ListStyle.Image.t),
        )
    ];
    let show: t => string;
  };
  let make:
    (
      ~type_: Css_Value.ListStyle.Type.t=?,
      ~position: Css_Value.ListStyle.Position.t=?,
      ~image: Css_Value.ListStyle.Image.t=?,
      unit
    ) =>
    t([> Css_Property.list_style]);
  let make_value: Css_Value.Global.t => t([> Css_Property.list_style]);
};
module Margin: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-margin } Margin} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.margin];
  module Value: {
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
    let show: t => string;
  };

  let make:
    (
      ~top: Css_Value.LengthPercent.t=?,
      ~right: Css_Value.LengthPercent.t=?,
      ~bottom: Css_Value.LengthPercent.t=?,
      ~left: Css_Value.LengthPercent.t=?,
      unit
    ) =>
    t([> Css_Property.margin]);
  let make_value:
    [ Css_Value.Global.t | Css_Value.LengthPercent.t] =>
    t([> Css_Property.margin]);
};
module MarginTop: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-margin-top } Margin Top} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.margin_top];
  let make: Css_Value.LengthPercent.t => t([> Css_Property.margin_top]);
};
module MarginRight: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-margin-right } Margin Right} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.margin_right];
  let make: Css_Value.LengthPercent.t => t([> Css_Property.margin_right]);
};
module MarginBottom: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-margin-bottom } Margin Bottom} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.margin_bottom];
  let make: Css_Value.LengthPercent.t => t([> Css_Property.margin_bottom]);
};
module MarginLeft: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-margin-left } Margin Left} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.margin_left];
  let make: Css_Value.LengthPercent.t => t([> Css_Property.margin_left]);
};
module MaxHeight: {
  /** {{: https://www.w3.org/TR/CSS22/visudet.html#propdef-max-height} Max Height} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.max_height];
  let make: Css_Value.LengthPercent.t => t([> Css_Property.max_height]);
};
module MaxWidth: {
  /** {{: https://www.w3.org/TR/CSS22/visudet.html#propdef-max-width} Max Width} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.max_width];
  let make: Css_Value.LengthPercent.t => t([> Css_Property.max_width]);
};
module MinHeight: {
  /** {{: https://www.w3.org/TR/CSS22/visudet.html#propdef-min-height} Min Height} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.min_height];
  let make: Css_Value.LengthPercent.t => t([> Css_Property.min_height]);
};
module MinWidth: {
  /** {{: https://www.w3.org/TR/CSS22/visudet.html#propdef-min-width} Min Width} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.min_width];
  let make: Css_Value.LengthPercent.t => t([> Css_Property.min_width]);
};
module Opacity: {
  /** {{: https://drafts.csswg.org/css-color-3/#opacity} Opacity} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.opacity];
  let make: float => t([> Css_Property.opacity]);
};
module Order: {
  /** {{: https://www.w3.org/TR/CSS22/page.html#propdef-order } Order} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.order];
  let make: int => t([> Css_Property.order]);
};
module Orphans: {
  /** {{: https://www.w3.org/TR/CSS22/page.html#propdef-orphans } Orphans} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.orphans];
  let make: Css_Value.BreakInside.t => t([> Css_Property.orphans]);
};
module OutlineColor: {
  /** {{: https://www.w3.org/TR/CSS22/ui.html#propdef-outline-color} Outline Color} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.outline_color];
  let make: Css_Value.Outline.Color.t => t([> Css_Property.outline_color]);
};
module OutlineStyle: {
  /** {{: https://www.w3.org/TR/CSS22/ui.html#propdef-outline-style} Outline Style} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.outline_style];
  let make: Css_Value.Outline.Style.t => t([> Css_Property.outline_style]);
};
module OutlineWidth: {
  /** {{: https://www.w3.org/TR/CSS22/ui.html#propdef-outline-width} Outline Width} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.outline_width];
  let make: Css_Value.Outline.Width.t => t([> Css_Property.outline_width]);
};

module Outline: {
  /** {{: https://www.w3.org/TR/CSS22/ui.html#propdef-outline} Outline} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.outline];
  module Value: {
    type t = [
      Css_Value.Global.t
      | `outline(
          option(Css_Value.Outline.Color.t),
          option(Css_Value.Outline.Style.t),
          option(Css_Value.Outline.Width.t),
        )
    ];
    let show: t => string;
  };
  let make:
    (
      ~color: Css_Value.Outline.Color.t=?,
      ~style: Css_Value.Outline.Style.t=?,
      ~width: Css_Value.Outline.Width.t=?,
      unit
    ) =>
    t([> Css_Property.outline]);
  let make_value: Css_Value.Global.t => t([> Css_Property.outline]);
};
module Overflow: {
  /** {{: https://www.w3.org/TR/CSS22/visufx.html#propdef-overflow} Overflow} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.overflow];
  module Value: {
    type value = [ | `auto | `hidden | `scroll | `visible];
    type t = [ Css_Value.Global.t | value];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.overflow]);
};
module PaddingTop: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-padding-top} Padding Top} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.padding_top];
  let make: Css_Value.LengthPercent.t => t([> Css_Property.padding_top]);
};
module PaddingRight: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-padding-right} Padding Right} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.padding_right];
  let make: Css_Value.LengthPercent.t => t([> Css_Property.padding_right]);
};
module PaddingBottom: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-padding-bottom} Padding Bottom} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.padding_bottom];
  let make: Css_Value.LengthPercent.t => t([> Css_Property.padding_bottom]);
};
module PaddingLeft: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-padding-left} Padding Left} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.padding_left];
  let make: Css_Value.LengthPercent.t => t([> Css_Property.padding_left]);
};
module Padding: {
  /** {{: https://www.w3.org/TR/CSS22/box.html#propdef-padding } Padding} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.padding];
  module Value: {
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
    let show: t => string;
  };

  let make:
    (
      ~top: Css_Value.LengthPercent.t=?,
      ~right: Css_Value.LengthPercent.t=?,
      ~bottom: Css_Value.LengthPercent.t=?,
      ~left: Css_Value.LengthPercent.t=?,
      unit
    ) =>
    t([> Css_Property.padding]);
  let make_value:
    [ Css_Value.Global.t | Css_Value.LengthPercent.t] =>
    t([> Css_Property.padding]);
};
module PageBreakAfter: {
  /** {{: https://www.w3.org/TR/CSS22/page.html#propdef-page-break-after } Page Break After} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.page_break_after];
  let make: Css_Value.PageBreak.t => t([> Css_Property.page_break_after]);
};
module PageBreakBefore: {
  /** {{: https://www.w3.org/TR/CSS22/page.html#propdef-page-break-before } Page Break Before} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.page_break_before];
  let make: Css_Value.PageBreak.t => t([> Css_Property.page_break_before]);
};
module PageBreakInside: {
  /** {{: https://www.w3.org/TR/CSS22/page.html#propdef-page-break-inside } Page Break Inside} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.page_break_inside];
  let make:
    Css_Value.PageBreak.inside => t([> Css_Property.page_break_inside]);
};
module PauseAfter: {
  /** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-pause-after} Pause After} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.pause_after];
  let make: Css_Value.TimePercent.t => t([> Css_Property.pause_after]);
};
module PauseBefore: {
  /** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-pause-before} Pause Before} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.pause_before];
  let make: Css_Value.TimePercent.t => t([> Css_Property.pause_before]);
};
module Pause: {
  /** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-pause} Pause} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.pause];
  module Value: {
    type t = [
      Css_Value.Global.t
      | `pause(Css_Value.TimePercent.t, Css_Value.TimePercent.t)
    ];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.pause]);
};
module PitchRange: {
  /** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-pitch-range} Pitch Range} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.pitch_range];
  module Value: {
    type t = [ Css_Value.Global.t | `range(float)];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.pitch_range]);
};
module Pitch: {
  /** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-pitch} Pitch} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.pitch];
  module Value: {
    type value = [ | `high | `low | `medium | `x_high | `x_low];
    type t = [ Css_Value.Global.t | Css_Value.Frequency.t | value];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.pitch]);
};
module PlayDuring: {
  /** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-play-during} Play During} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.play_during];
  module Value: {
    type value = [ | `mix | `repeat];
    type t = [
      Css_Value.Global.t
      | Css_Value.Uri.t
      | `sound(Css_Value.Uri.t, value)
      | `auto
      | `none
    ];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.play_during]);
};
module Position: {
  /**
     {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-position} Position}

     [Css_Property.positioned] properties only makes sense in the context of
     elements that are not statically positioned. For example, in CSS if you
     applied  the [top] style to a statically positioned element nothing would
     happen, it would silently fail. We can avoid that with Ocaml's type system.

     Due to this, in order to provide some type safety [Position.make] takes a
     [Css_Property.positioned] ruleset for non-statically positioned values
     and returns a [\[< Css_Property.display\]] ruleset.
     */;

  type t('a) = Js.Dict.t(Css_Property.t('a))
  constraint 'a = [< Css_Property.display];
  module Value: {
    type t = [
      | `absolute(Js.Dict.t(Css_Property.t(Css_Property.positioned)))
      | `fixed(Js.Dict.t(Css_Property.t(Css_Property.positioned)))
      | `relative(Js.Dict.t(Css_Property.t(Css_Property.positioned)))
      | `static
    ];
    let make: t => Css_Property.t([> Css_Property.position]);
  };
  let make: Value.t => t([< Css_Property.display]);
};
module Richness: {
  /** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-richness} Richness} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.richness];
  module Value: {
    type t = [ Css_Value.Global.t | `richness(float)];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.richness]);
};
module Right: {
  /** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-right} Right} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.right];
  let make: Css_Value.LengthPercent.t => t([> Css_Property.right]);
};
module Size: {
  /** {{: https://drafts.csswg.org/css-page-3/#page-size-prop } Size} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.size];
  module Value: {
    type t = [
      Css_Value.Global.t
      | `length(Css_Value.LengthPercent.t, Css_Value.LengthPercent.t)
      | `auto
    ];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.size]);
};
module SpeakHeader: {
  /** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-speak-header} Speak Header} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.speak_header];
  module Value: {
    type t = [ Css_Value.Global.t | `once | `always];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.speak_header]);
};
module SpeakNumeral: {
  /** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-speak-numeral} Speak Numeral} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.speak_numeral];
  module Value: {
    type t = [ Css_Value.Global.t | `digits | `continuous];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.speak_numeral]);
};
module SpeakPunctuation: {
  /** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-speak-punctuation} Speak Punctuation} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.speak_punctuation];
  module Value: {
    type t = [ Css_Value.Global.t | `code | `none];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.speak_punctuation]);
};
module Speak: {
  /** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-speak} Speak} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.speak];
  module Value: {
    type value = [ | `none | `normal | `spell_out];
    type t = [ Css_Value.Global.t | value];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.speak]);
};
module SpeechRate: {
  /** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-speech-rate} Speech Rate} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.speech_rate];
  module Value: {
    type value = [
      | `fast
      | `faster
      | `medium
      | `slow
      | `slower
      | `x_fast
      | `x_slow
    ];
    type t = [ Css_Value.Global.t | value | `rate(float)];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.speech_rate]);
};
module Stress: {
  /** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-stress} Stress} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.stress];
  module Value: {
    type t = [ Css_Value.Global.t | `stress(float)];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.stress]);
};
module TableLayout: {
  /** {{: https://www.w3.org/TR/CSS22/tables.html#propdef-table-layout} Table Layout} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.table_layout];
  module Value: {
    type t = [ Css_Value.Global.t | `auto | `fixed];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.table_layout]);
};
module TextAlign: {
  /** {{: https://www.w3.org/TR/CSS22/text.html#alignment-prop } Text Align } */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.text_align];
  module Value: {
    type value = [ | `center | `justify | `left | `right];
    type t = [ Css_Value.Global.t | value];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.text_align]);
};
module TextDecoration: {
  /** {{: https://www.w3.org/TR/CSS22/text.html#propdef-text-decoration} Text Decoration} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.text_decoration];
  module Value: {
    type value = [ | `blink | `line_through | `none | `overline | `underline];
    type t = [ Css_Value.Global.t | value];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.text_decoration]);
};
module TextIndent: {
  /** {{: https://www.w3.org/TR/CSS22/text.html#propdef-text-indent} Text Indent} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.text_indent];
  let make: Css_Value.LengthPercent.t => t([> Css_Property.text_indent]);
};
module TextTransform: {
  /** {{: https://www.w3.org/TR/CSS22/text.html#propdef-text-transform} Text Transform} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.text_transform];
  module Value: {
    type value = [ | `capitalize | `lowercase | `none | `uppercase];
    type t = [ Css_Value.Global.t | value];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.text_transform]);
};
module Top: {
  /** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-top} Top} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.top];
  let make: Css_Value.LengthPercent.t => t([> Css_Property.top]);
};
module TransitionDelay: {
  /** {{: https://www.w3.org/TR/css-transitions-1/#transition-delay-property} Transition Delay} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.transition_delay];
  let make: Css_Value.Time.t => t([> Css_Property.transition_delay]);
};
module TransitionDuration: {
  /** {{: https://www.w3.org/TR/css-transitions-1/#transition-duration-property} Transition Duration} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.transition_duration];
  let make: Css_Value.Time.t => t([> Css_Property.transition_duration]);
};
module TransitionProperty: {
  /** {{: https://www.w3.org/TR/css-transitions-1/#transition-property-property} Transition Property} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.transition_property];
  module Value: {
    type value = [ | `all | `none];
    type t = [ Css_Value.Global.t | value];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.transition_property]);
};
module TransitionTimingFunction: {
  /** {{: https://www.w3.org/TR/css-transitions-1/#transition-timing-function-property} Transition Timing Function Property} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.transition_timing_function];
  let make:
    Css_Value.TimingFunction.t =>
    t([> Css_Property.transition_timing_function]);
};
module Transition: {
  /** {{: https://www.w3.org/TR/css-transitions-1/#transition-shorthand-property} Transition} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.transition];
  let make:
    (
      ~property: TransitionProperty.Value.t=?,
      ~duration: Css_Value.Time.t=?,
      ~timing: Css_Value.TimingFunction.t=?,
      ~delay: Css_Value.Time.t=?,
      unit
    ) =>
    t([> Css_Property.transition]);
};
module UnicodeBidi: {
  /** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-unicode-bidi} Unicode Bidi} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.unicode_bidi];
  module Value: {
    type value = [ | `bidi_override | `embed | `normal];
    type t = [ Css_Value.Global.t | value];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.unicode_bidi]);
};
module UserSelect: {
  /** {{: https://drafts.csswg.org/css-ui-4/#propdef-user-select } User Select} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.user_select];
  module Value: {
    type value = [ | `all | `auto | `contain | `none | `text];
    type t = [ Css_Value.Global.t | value];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.user_select]);
};
module VerticalAlign: {
  /** {{: https://www.w3.org/TR/CSS22/visudet.html#line-height } Vertical Align} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.vertical_align];

  module Value: {
    module ParentRelative: {
      type value = [
        | `baseline
        | `middle
        | `sub
        | `super
        | `text_bottom
        | `text_top
      ];
      type t = [ Css_Value.LengthPercent.t | value];
      let show: t => string;
    };
    module LineRelative: {
      type t = [ | `bottom | `top];
      let show: t => string;
    };
    type t = [ Css_Value.Global.t | ParentRelative.t | LineRelative.t];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.vertical_align]);
};
module Visibility: {
  /** {{: https://www.w3.org/TR/CSS22/visufx.html#propdef-visibility} Visibility} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.visibility];
  module Value: {
    type value = [ | `collapse | `hidden | `visible];
    type t = [ Css_Value.Global.t | value];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.visibility]);
};
module VoiceFamily: {
  /** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-voice-family} Voice Family} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.voice_family];
  module Value: {
    type generic = [ | `child | `female | `male];
    type t = [ Css_Value.Global.t | generic | `specific(string)];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.voice_family]);
};
module Volume: {
  /** {{: https://www.w3.org/TR/CSS22/aural.html#propdef-volume} Volume} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.volume];
  module Value: {
    type value = [ | `loud | `medium | `silent | `soft | `x_loud | `x_soft];
    type t = [
      Css_Value.Global.t
      | Css_Value.Percent.t
      | `volume(float)
      | value
    ];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.volume]);
};
module WhiteSpace: {
  /** {{: https://www.w3.org/TR/CSS22/text.html#propdef-white-space} White Space} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.white_space];
  module Value: {
    type value = [ | `normal | `nowrap | `pre | `pre_line | `pre_wrap];
    type t = [ Css_Value.Global.t | value];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.white_space]);
};
module Widows: {
  /** {{: https://www.w3.org/TR/CSS22/page.html#propdef-widows } Widows} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.widows];
  let make: Css_Value.BreakInside.t => t([> Css_Property.widows]);
};
module Width: {
  /** {{: https://www.w3.org/TR/CSS22/visudet.html#propdef-width} Width} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.width];
  let make: Css_Value.LengthPercent.t => t([> Css_Property.width]);
};
module WordBreak: {
  /** {{: https://drafts.csswg.org/css-text-3/#word-break-property} Word Break} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.word_break];
  module Value: {
    type value = [ | `break_all | `break_word | `keep_all | `normal];
    type t = [ Css_Value.Global.t | value];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.word_break]);
};
module WordSpacing: {
  /** {{: https://www.w3.org/TR/CSS22/text.html#propdef-word-spacing} Word Spacing} */;

  type t(+'a) = Css_Property.t('a)
  constraint 'a = [> Css_Property.word_spacing];
  module Value: {
    type t = [ Css_Value.Global.t | Css_Value.Length.t | `normal];
    let show: t => string;
  };
  let make: Value.t => t([> Css_Property.word_spacing]);
};
module ZIndex: {
  /** {{: https://www.w3.org/TR/CSS22/visuren.html#propdef-z-index} Z-Index} */;

  type t(+'a) = Css_Property.t('a) constraint 'a = [> Css_Property.z_index];
  let make: int => t([> Css_Property.z_index]);
};
module Ruby: {
  module RubyPosition: {
    type t(+'a) = Css_Property.t('a)
    constraint 'a = [> Css_Property.ruby_position];
    module Value: {
      type vertical = [ | `inter_character | `over | `under];
      type horizontal = [ | `left | `right];
      type t = [
        | `inherit_
        | `initial
        | `position(vertical, horizontal)
        | `unset
      ];
      let show: t => string;
    };
    let make: Value.t => t([> Css_Property.ruby_position]);
  };
  module RubyMerge: {
    type t(+'a) = Css_Property.t('a)
    constraint 'a = [> Css_Property.ruby_merge];
    module Value: {
      type value = [ | `auto | `collapse | `separate];
      type t = [
        | `auto
        | `collapse
        | `inherit_
        | `initial
        | `separate
        | `unset
      ];
      let show: t => string;
    };
    let make: Value.t => t([> Css_Property.ruby_merge]);
  };
  module RubyAlign: {
    type t(+'a) = Css_Property.t('a)
    constraint 'a = [> Css_Property.ruby_align];
    module Value: {
      type value = [ | `center | `space_around | `space_between | `start];
      type t = [
        | `center
        | `inherit_
        | `initial
        | `space_around
        | `space_between
        | `start
        | `unset
      ];
      let show: t => string;
    };
    let make: Value.t => t([> Css_Property.ruby_align]);
  };
};
