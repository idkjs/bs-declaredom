/** CSS Unit Values */;

module Font = {
  /** {{: https://www.w3.org/TR/css-values/#font-relative-lengths } Font-Relative Lengths} */;

  type t = [
    | `em(float)
    | `ex(float)
    | `cap(float)
    | `ch(float)
    | `ic(float)
    | `rem(float)
    | `ih(float)
    | `rlh(float)
  ];

  let show: t => string = (
    fun
    | `em(value) => Js.Float.toString(value) ++ "em"
    | `ex(value) => Js.Float.toString(value) ++ "ex"
    | `cap(value) => Js.Float.toString(value) ++ "cap"
    | `ch(value) => Js.Float.toString(value) ++ "ch"
    | `ic(value) => Js.Float.toString(value) ++ "ic"
    | `rem(value) => Js.Float.toString(value) ++ "rem"
    | `ih(value) => Js.Float.toString(value) ++ "ih"
    | `rlh(value) => Js.Float.toString(value) ++ "rlh":
      t => string
  );
};

module Viewport = {
  /** {{: https://www.w3.org/TR/css-values/#viewport-relative-lengths } Viewport-Relative Lengths} */;

  type t = [
    | `vw(float)
    | `vh(float)
    | `vi(float)
    | `vb(float)
    | `vmin(float)
    | `vmax(float)
  ];

  let show: t => string = (
    fun
    | `vw(value) => Js.Float.toString(value) ++ "vw"
    | `vh(value) => Js.Float.toString(value) ++ "vh"
    | `vi(value) => Js.Float.toString(value) ++ "vi"
    | `vb(value) => Js.Float.toString(value) ++ "vb"
    | `vmin(value) => Js.Float.toString(value) ++ "vmin"
    | `vmax(value) => Js.Float.toString(value) ++ "vmax":
      t => string
  );
};

module Absolute = {
  /** {{: https://www.w3.org/TR/css-values/#absolute-lengths } Absolute Lengths} */;

  type t = [
    | `cm(float)
    | `mm(float)
    | `Q(float)
    | `in_(float)
    | `pt(float)
    | `pc(float)
    | `px(float)
  ];

  let show: t => string = (
    fun
    | `cm(value) => Js.Float.toString(value) ++ "cm"
    | `mm(value) => Js.Float.toString(value) ++ "mm"
    | `Q(value) => Js.Float.toString(value) ++ "Q"
    | `in_(value) => Js.Float.toString(value) ++ "in"
    | `pt(value) => Js.Float.toString(value) ++ "pt"
    | `pc(value) => Js.Float.toString(value) ++ "pc"
    | `px(value) => Js.Float.toString(value) ++ "px":
      t => string
  );
};

module Relative = {
  /** {{: https://www.w3.org/TR/css-values/#relative-lengths } Relative Lengths} */;

  type t = [ Font.t | Viewport.t];

  let show: t => string = (
    fun
    | #Font.t as font => Font.show(font)
    | #Viewport.t as viewport => Viewport.show(viewport):
      t => string
  );
};

module Length = {
  /** {{: https://www.w3.org/TR/css-values/#lengths } Lengths} */;

  type t = [ Absolute.t | Relative.t];

  let show: t => string = (
    fun
    | #Absolute.t as absolute => Absolute.show(absolute)
    | #Relative.t as relative => Relative.show(relative):
      t => string
  );
};

module Angle = {
  /** {{: https://www.w3.org/TR/css-values/#angles } Angle Units} */;

  type t = [ | `deg(float) | `grad(float) | `rad(float) | `turn(float)];

  let show: t => string = (
    fun
    | `deg(value) => Js.Float.toString(value) ++ "deg"
    | `grad(value) => Js.Float.toString(value) ++ "grad"
    | `rad(value) => Js.Float.toString(value) ++ "rad"
    | `turn(value) => Js.Float.toString(value) ++ "turn":
      t => string
  );
};

module Time = {
  /** {{: https://www.w3.org/TR/css-values/#time } Time Units} */;

  type t = [ | `s(float) | `ms(float)];

  let show: t => string = (
    fun
    | `s(value) => Js.Float.toString(value) ++ "s"
    | `ms(value) => Js.Float.toString(value) ++ "ms":
      t => string
  );
};

module Frequency = {
  /** {{: https://www.w3.org/TR/css-values/#frequency } Frequency Units} */;

  type t = [ | `Hz(float) | `kHz(float)];

  let show: t => string = (
    fun
    | `Hz(value) => Js.Float.toString(value) ++ "Hz"
    | `kHz(value) => Js.Float.toString(value) ++ "kHz":
      t => string
  );
};

module Resolution = {
  /** {{: https://www.w3.org/TR/css-values/#resolution } Resolution Units} */;

  type t = [ | `dpi(float) | `dpcm(float) | `dppx(float)];

  let show: t => string = (
    fun
    | `dpi(value) => Js.Float.toString(value) ++ "dpi"
    | `dpcm(value) => Js.Float.toString(value) ++ "dpcm"
    | `dppx(value) => Js.Float.toString(value) ++ "dppx":
      t => string
  );
};

module Other = {
  /** {{: https://www.w3.org/TR/css-values/#other-units } Other} */;

  type t = [ Angle.t | Time.t | Frequency.t | Resolution.t];

  let show: t => string = (
    fun
    | #Angle.t as angle => Angle.show(angle)
    | #Time.t as time => Time.show(time)
    | #Frequency.t as frequency => Frequency.show(frequency)
    | #Resolution.t as resolution => Resolution.show(resolution):
      t => string
  );
};

module Percent = {
  /** {{: https://www.w3.org/TR/css-values/#percentages } Percentages} */;

  type t = [ | `percent(float)];

  let show: t => string = (
    fun
    | `percent(value) => Js.Float.toString(value) ++ "%":
      t => string
  );
};

module Value = {
  type value = [ Length.t | Percent.t | Other.t];

  /** {{: https://www.w3.org/TR/css3-values/#calc-notation} Calc Notation} */

  type t = [
    value
    | `num(float)
    | `add(t, t)
    | `subtract(t, t)
    | `multiply(t, t)
    | `divide(t, t)
  ];

  let rec show =
    fun
    | #Length.t as length => Length.show(length)
    | #Percent.t as percent => Percent.show(percent)
    | #Other.t as other => Other.show(other)
    | `num(number) => Js.Float.toString(number)
    | `add(value1, value2) => show(value1) ++ " + " ++ show(value2)
    | `subtract(value1, value2) => show(value1) ++ " - " ++ show(value2)
    | `multiply(value1, value2) => show(value1) ++ "*" ++ show(value2)
    | `divide(value1, value2) => show(value1) ++ "/" ++ show(value2);
};

type t = Value.t;

let show: t => string = (
  fun
  | (`add(_) | `subtract(_) | `multiply(_) | `divide(_)) as value =>
    "calc(" ++ Value.show(value) ++ ")"
  | value => Value.show(value):
    t => string
);
