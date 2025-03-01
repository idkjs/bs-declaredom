open Test;

open! Css_Selector.Infix;

open Css_Properties;

type selector = Css_Selector.t;

module Test = {
  test(~name="css selectors", _) @@
  (
    t => {
      let equal = (x, y, t) => t |> T.equal(Css_Selector.show(x), y, _);
      t |> T.equal(TextAlign.make(`center) |> Css_Property.show, "center", _);
      t |> equal(`h1, "h1");
      t |> equal(`active, ":active");
      t |> equal(`h2 |: `active |: `checked, "h2:active:checked");
      t |> equal(`h1 |.. `h2 |: `active |.. `h3, "h1 h2:active h3");
      t |> equal(`h1 |.. `h2 |.. `h3, "h1 h2 h3");
      t |> equal(`h2 |>. `span, "h2 > span");
      let s =
        Css_Selector.Focusable.make(
          `h2 |.. `h3 |: `active |>. `attribute((`a, `has("href"))),
        )
        |> Js.Option.andThen((. s) => Some(`focus(s) |> Css_Selector.show));
      t |> T.equal(s, Some("h2 h3:active > a[href]:focus"), _);
      t |> equal(`div |.. `h2 |>. `span, "div h2 > span");
      t |> equal(`div |.. `h2 |+ `span, "div h2 + span");
      t |> equal(`div |.. `h2 |~ `span, "div h2 ~ span");
      t |> equal(`has("href"), "[href]");
      t |> equal("title" := "bar", "[title=\"bar\"]");
      t |> equal("title" ^= "bar", "[title^=\"bar\"]");
      t |> equal("title" $= "bar", "[title$=\"bar\"]");
      t |> equal(`div |= "title" @$= "bar", "div[title$=\"bar\"]");
      t |> equal(`class_name("foo") |.. `h2, ".foo h2");
      t |> equal(`class_name("foo") |.. `h2, ".foo h2");
      t |> equal(`not(`active), ":not(:active)");
      t |> T.end_;
    }
  );
};
