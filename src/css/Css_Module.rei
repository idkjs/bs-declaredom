/**
 Creates CSS modules -- styles that are scoped by components and identified
 by a uniquely generated class name.

 Theming works in the same way as {{: https://github.com/css-modules/css-modules/blob/master/docs/theming.md} postcss module theming}.
 */;

type t('a);

/** Gets a class name from the class name and/or css module if provided */

let get_class:
  (~class_name: string=?, ~css_module: t('a)=?, unit) => option(string);

let map:
  (
    Js.Dict.t(Css_Property.t([< Css_Property.display] as 'a)) =>
    Js.Dict.t(Css_Property.t([< Css_Property.display] as 'b)),
    t('a)
  ) =>
  t('b);

let merge:
  (t([< Css_Property.display] as 'a), t([< Css_Property.display] as 'a)) =>
  t([< Css_Property.display] as 'a);

let to_display: t([< Css_Property.display]) => t(Css_Property.display);

let make:
  (
    ~media: list(
              (
                Css_Media.t,
                Js.Dict.t(Css_Property.t([< Css_Property.display] as 'a)),
              ),
            )
              =?,
    Js.Dict.t(Css_Property.t([< Css_Property.display] as 'a))
  ) =>
  t('a);

let make':
  (
    ~media: list(
              (
                Css_Media.t,
                list(Css_Selector.PseudoClass.any),
                Js.Dict.t(Css_Property.t([< Css_Property.display] as 'a)),
              ),
            )
              =?,
    list(
      (
        list(Css_Selector.PseudoClass.any),
        Js.Dict.t(Css_Property.t([< Css_Property.display] as 'a)),
      ),
    )
  ) =>
  t('a);

let class_name: t('a) => string;

let show: (~indent: int=?, t([< Css_Property.display])) => string;

let show_media: (~indent: int=?, t([< Css_Property.display])) => string;
