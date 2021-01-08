/** Utitily functions for declaredom */;

let underscore_to_dash = Js.String.replaceByRe([%re "/_/g"], "-");

let single_whitespace = Js.String.replaceByRe([%re "/\\s+/g"], " ");

let combine_styles = styles => {
  let styles' =
    styles
    |> Js.Array.filter(Js.Option.isSome)
    |> Js.Array.map(Js.Option.getExn)
    |> Js.Array.joinWith(" ");

  if (styles' == "") {
    "initial";
  } else {
    styles';
  };
};

let join_with = (xs, separator) =>
  xs->(
        Belt.List.reduce("", (acc, e) =>
          if (acc == "") {
            e;
          } else {
            acc ++ separator ++ e;
          }
        )
      );

let string_of_unit = () => "";

[@bs.scope "Object"] [@bs.val]
external merge:
  ([@bs.as {json|{}|json}] _, Js.Dict.t('a), Js.Dict.t('a)) => Js.Dict.t('a) =
  "assign";

[@bs.scope "Object"] [@bs.splice] [@bs.val]
external merge_all: array(Js.Dict.t('a)) => Js.Dict.t('a) = "assign";
