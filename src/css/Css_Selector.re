/** {{: https://www.w3.org/TR/selectors-3} CSS Selectors} */;

module Element = {
  /**
   {{: https://www.w3.org/TR/selectors-3/#type-selectors } Type}, and
   {{: https://www.w3.org/TR/selectors-3/#universal-selector } Universal} Selectors
   */;
  /* TODO: merge with Html_Node.standard_elements once bucklescript supports using combined variants
     with [@@bs.deriving jsConverter] */
  [@bs.deriving jsConverter]
  type t = [
    | `a
    | `abbr
    | `address
    | `area
    | `article
    | `aside
    | `audio
    | `b
    | `base
    | `bdi
    | `bdo
    | `blockquote
    | `body
    | `br
    | `button
    | `canvas
    | `caption
    | `cite
    | `code
    | `col
    | `colgroup
    | `data
    | `datalist
    | `dd
    | `del
    | `details
    | `dfn
    | `dialog
    | `div
    | `dl
    | `dt
    | `em
    | `embed
    | `fieldset
    | `figcaption
    | `figure
    | `footer
    | `form
    | `h1
    | `h2
    | `h3
    | `h4
    | `h5
    | `h6
    | `head
    | `header
    | `hgroup
    | `hr
    | `html
    | `i
    | `iframe
    | `img
    | `input
    | `ins
    | `kbd
    | `label
    | `legend
    | `li
    | `main
    | `map
    | `mark
    | `meta
    | `meter
    | `nav
    | `noscript
    | `option
    [@bs.as "object"] | `object_
    | `ol
    | `optgroup
    | `output
    | `p
    | `param
    | `picture
    | `pre
    | `progress
    | `q
    | `rb
    | `rp
    | `rt
    | `rtc
    | `ruby
    | `s
    | `samp
    | `script
    | `section
    | `select
    | `source
    | `span
    | `slot
    | `small
    | `strong
    | `style
    | `sub
    | `summary
    | `sup
    | `table
    | `tbody
    | `td
    | `template
    | `textarea
    | `tfoot
    | `th
    | `thead
    | `time
    | `title
    | `tr
    | `track
    | `u
    | `ul
    | `var
    | `video
    | `wbr
    [@bs.as "*"] | `any
  ];
  let show = tToJs;
};

module Attribute = {
  /** {{: https://www.w3.org/TR/selectors-3/#attribute-selectors } Attribute Selectors} */;
  type t = [
    | `has(string)
    | `equals(string, string)
    | `starts_with(string, string)
    | `ends_with(string, string)
  ];
  let show: t => string =
    fun
    | `has(name) => "[" ++ name ++ "]"
    | `equals(name, value) => "[" ++ name ++ "=\"" ++ value ++ "\"]"
    | `starts_with(name, value) => "[" ++ name ++ "^=\"" ++ value ++ "\"]"
    | `ends_with(name, value) => "[" ++ name ++ "$=\"" ++ value ++ "\"]";
};

module Class = {
  /** {{: https://www.w3.org/TR/selectors-3/#class-html } Class Selector} */;
  type t = [ | `class_name(string)];
  let show = (`class_name(class_name): t) : string => "." ++ class_name;
};

module Id = {
  /** {{: https://www.w3.org/TR/selectors-3/#id-selectors } ID Selector} */;
  type t = [ | `id(string)];
  let show = (`id(id): t) : string => "#" ++ id;
};

module Target = {
  type t = [ Element.t | Class.t | Id.t];
  let show: t => string =
    fun
    | #Class.t as class_name => Class.show(class_name)
    | #Id.t as id => Id.show(id)
    | #Element.t as element => Element.show(element);
};

module PseudoClass = {
  /**
   {{: https://www.w3.org/TR/selectors-3/#the-user-action-pseudo-classes-hover-act } User Action},
   {{: https://www.w3.org/TR/selectors-3/#target-pseudo } Target},
   {{: https://www.w3.org/TR/selectors-3/#lang-pseudo } Lang}, and
   {{: https://www.w3.org/TR/selectors-3/#UIstates } UI State} Pseudo-Classes
   */;
  type any = [ | `hover | `target];
  type disableable = [ | `enabled | `disabled];
  type checkable = [ | `checked];
  type pseudo_class = [ any | disableable | checkable | `active];
  type t = [ pseudo_class | `lang(string)];
  let show: t => string =
    fun
    | `hover => ":hover"
    | `target => ":target"
    | `enabled => ":enabled"
    | `disabled => ":disabled"
    | `checked => ":checked"
    | `active => ":active"
    | `lang(language) => ":lang(" ++ language ++ ")";
};

module StructuralPseudoClass = {
  /** {{: https://www.w3.org/TR/selectors-3/#structural-pseudos } Structural Pseudo-Classes} */;
  type nth_pseudo_class = [
    | `nth_child(int, int)
    | `nth_of_type(int, int)
    | `nth_last_of_type(int, int)
  ];
  [@bs.deriving jsConverter]
  type structural_pseudo_class = [
    | `root
    | `first_child
    | `last_child
    | `first_of_type
    | `last_of_type
    | `only_child
    | `only_of_type
    | `empty
  ];
  type t = [ nth_pseudo_class | structural_pseudo_class];
  let show: t => string =
    fun
    | `nth_child(n, m) =>
      ":nth-child(" ++ Js.Int.toString(n) ++ "n + " ++ Js.Int.toString(m) ++ ")"
    | `nth_of_type(n, m) =>
      ":nth-of-type(" ++ Js.Int.toString(n) ++ "n + " ++ Js.Int.toString(m) ++ ")"
    | `nth_last_of_type(n, m) =>
      ":nth-last-of-type(" ++ Js.Int.toString(n) ++ "n + " ++ Js.Int.toString(m) ++ ")"
    | #structural_pseudo_class as pseudo_class =>
      Util.underscore_to_dash @@ ":" ++ structural_pseudo_classToJs(pseudo_class);
};

module PseudoElement = {
  [@bs.deriving jsConverter]
  type t = [
    [@bs.as "first-line"] | `first_line
    [@bs.as "first-letter"] | `first_letter
    | `before
    | `after
  ];
  let show = tToJs;
};

module type Selector = {
  /**
   This module is for all CSS selectors. In addition to including all the
   variants from {!Attribute.t}, {!Target.t}, {!PseudoClass.t},
   {!StructuralPseudoClass.t}, and {!PseudoElement.t}, it includes the
   {{: https://www.w3.org/TR/selectors-3/#combinators } combinators},
   {{: https://www.w3.org/TR/selectors-3/#negation } negation pseudo-class},
   {{: https://www.w3.org/TR/selectors-3/#the-link-pseudo-classes-link-and-visited } link pseudo-classes}, and the
   {{: https://www.w3.org/TR/selectors-3/#the-user-action-pseudo-classes-hover-act } hover pseudo-class}.

   The {!Anchor} and {!Focusable} modules are for the special pseudo-classes
   [:link], [:visited], and [:hover], which match only specific selectors for
   a subset of elements.
   */;
  type anchor
  and focusable;
  type t = [
    Attribute.t|
    Target.t|
    PseudoClass.t|
    StructuralPseudoClass.t|
    PseudoElement.t
    | `not(t)
    | `not'(t, t)
    | `attribute(t, Attribute.t)
    | `pseudo_class(t, PseudoClass.t)
    | `structural_pseudo_class(t, StructuralPseudoClass.t)
    | `pseudo_element(t, PseudoElement.t)
    | `descendant(list(t))
    | `child(list(t))
    | `sibling(list(t))
    | `adjacent(list(t))
    | `link(anchor)
    | `visited(anchor)
    | `focus(focusable)
  ];
  let show: t => string;
};

module type Anchor = {
  /**
   Represents a selector that targets an anchor element. This is used for the
   {{: https://www.w3.org/TR/selectors-3/#the-link-pseudo-classes-link-and-visited } link pseudo-classes} ([:link] and [:visited]), which only work on
   {{: https://www.w3.org/TR/html52/textlevel-semantics.html#the-a-element } anchor} tags
   */;
  type t
  and selector;
  let to_selector: t => selector;
  let make: selector => option(t);
};

module type Focusable = {
  /**
   This module captures selectors that target focusable elements.

   Elements that are focusable are either:
    - Defined to have a [focus()] method in the
      {{: https://www.w3.org/TR/DOM-Level-2-HTML/html.html} DOM Level 2} spec
    - Any element with a [tabindex]
    - Any element that is [contenteditable]
   */;
  type t
  and selector;
  let to_selector: t => selector;
  let make: selector => option(t);
};

module rec Selector: Selector with type anchor = Anchor.t and type focusable = Focusable.t = {
  type anchor = Anchor.t
  and focusable = Focusable.t;
  type t = [
| Attribute.t
| Target.t
| PseudoClass.t
| StructuralPseudoClass.t
| PseudoElement.t
    | `not(t)
    | `not'(t, t)
    | `attribute(t, Attribute.t)
    | `pseudo_class(t, PseudoClass.t)
    | `structural_pseudo_class(t, StructuralPseudoClass.t)
    | `pseudo_element(t, PseudoElement.t)
    | `descendant(list(t))
    | `child(list(t))
    | `sibling(list(t))
    | `adjacent(list(t))
    | `link(Anchor.t)
    | `visited(Anchor.t)
    | `focus(Focusable.t)
  ];
  let rec show: t => string =
    fun
    | #Target.t as target => Target.show(target)
    | `not(s) => ":not(" ++ show(s) ++ ")"
    | #Attribute.t as attribute => Attribute.show(attribute)
    | #PseudoClass.t as pseudo_class => PseudoClass.show(pseudo_class)
    | #StructuralPseudoClass.t as pseudo_class => StructuralPseudoClass.show(pseudo_class)
    | #PseudoElement.t as pseudo_element => PseudoElement.show(pseudo_element)
    | `attribute(s, attribute) => show(s) ++ Attribute.show(attribute)
    | `pseudo_class(s, attribute) => show(s) ++ PseudoClass.show(attribute)
    | `structural_pseudo_class(s, attribute) => show(s) ++ StructuralPseudoClass.show(attribute)
    | `pseudo_element(s, attribute) => show(s) ++ PseudoElement.show(attribute)
    | `not'(s1, s2) => show(s1) ++ show(s2)
    | (`descendant(_) | `child(_) | `sibling(_) | `adjacent(_)) as combinator =>
      show_combinator(combinator)
    | `link(anchor) => show(Anchor.to_selector(anchor)) ++ ":link"
    | `visited(anchor) => show(Anchor.to_selector(anchor)) ++ ":visited"
    | `focus(focusable) => show(Focusable.to_selector(focusable)) ++ ":focus"
  and show_combinator = (c) => {
    let (ss, separator) =
      switch c {
      | `descendant(ss) => (ss, " ")
      | `child(ss) => (ss, " > ")
      | `sibling(ss) => (ss, " ~ ")
      | `adjacent(ss) => (ss, " + ")
      };
    ss |. Belt.List.map(show) |> Js.List.toVector |> Js.Array.joinWith(separator);
  };
}
and Anchor: Anchor with type selector = Selector.t = {
  type selector = Selector.t;
  type t;
  external to_selector : t => Selector.t = "%identity";
  let rec is_anchor: Selector.t => bool =
    fun
    | `descendant(ss)
    | `child(ss)
    | `sibling(ss)
    | `adjacent(ss) =>
      Js.List.nth(ss, Js.List.length(ss) - 1) |. Belt.Option.mapWithDefault(false, is_anchor)
    | `attribute(s, _)
    | `pseudo_class(s, _)
    | `structural_pseudo_class(s, _)
    | `pseudo_element(s, _)
    | `not'(s, _) => is_anchor(s)
    | `a => true
    | _ => false;
  let make = (s) =>
    if (is_anchor(s)) {
      Some(Obj.magic(s));
    } else {
      None;
    };
}
and Focusable: Focusable with type selector = Selector.t = {
  /* https://stackoverflow.com/questions/1599660/which-html-elements-can-receive-focus */
  type selector = Selector.t;
  type t;
  external to_selector : t => Selector.t = "%identity";
  /** Matches on all focusable selectors */
  let rec is_focusable: Selector.t => bool =
    fun
    | `attribute(`a, `has("href"))
    | `attribute(`a, `equals("href", _))
    | `attribute(`a, `starts_with("href", _))
    | `attribute(`a, `ends_with("href", _))
    | `attribute(`area, `has("href"))
    | `attribute(`area, `equals("href", _))
    | `attribute(`area, `starts_with("href", _))
    | `attribute(`area, `ends_with("href", _))
    | `not'(`input, `has("disabled"))
    | `not'(`select, `has("disabled"))
    | `not'(`textarea, `has("disabled"))
    | `not'(`button, `has("disabled"))
    | `iframe
    | `has("tabindex")
    | `equals("contentEditable", "true") => true
    | `descendant(ss)
    | `child(ss)
    | `sibling(ss)
    | `adjacent(ss) =>
      Js.List.nth(ss, Js.List.length(ss) - 1) |. Belt.Option.mapWithDefault(false, is_focusable)
    | `attribute(s, _)
    | `pseudo_class(s, _)
    | `structural_pseudo_class(s, _)
    | `pseudo_element(s, _)
    | `not'(s, _) => is_focusable(s)
    | _ => false;
  let make = (s) =>
    if (is_focusable(s)) {
      Some(Obj.magic(s));
    } else {
      None;
    };
};

module Infix = {
  /** Defines infix operators for selectors */;
  type pseudo_class = [ PseudoClass.t |StructuralPseudoClass.t | `not(Selector.t)];
  /** Attribute [=] operator (ie: [a\[href="foo"\]]) */
  let (:=) = (name, value) => `equals((name, value));
  /** Attribute [^=] operator (ie: [a\[href^="foo"\]]) */
  let (^=) = (name, value) => `starts_with((name, value));
  /** Attribute [$=] operator (ie: [a\[href$="foo"\]]) */
  let ($=) = (name, value) => `ends_with((name, value));
  /** Right-associative form of the attribute [=] operator */
  let (@:=) = (:=);
  /** Right-associative form of the attribute [^=] operator */
  let (@^=) = (^=);
  /** Right-associative form of the attribute [$=] operator */
  let (@$=) = ($=);
  /** [target\[attribute\]] operator */
  let (|=) = (target, attribute) : Selector.t => `attribute((target, attribute));
  /** Pseudo-class operator (ie: [a:hover]) */
  let (|:) = (s: Selector.t, c: pseudo_class) : Selector.t =>
    switch c {
    | #PseudoClass.t as pseudo_class => `pseudo_class((s, pseudo_class))
    | #StructuralPseudoClass.t as structural_pseudo_class =>
      `structural_pseudo_class((s, structural_pseudo_class))
    | `not(s') => `not'((s, s'))
    };
  /** Pseudo-element operator (ie: [h1::after]) */
  let (|::) = (t, e) : Selector.t => `pseudo_element((t, e));
  /** Child operator (ie: [div > button]) */
  let (|>.) = (parent, child) : Selector.t =>
    switch (parent, child) {
    | (`child(c1), `child(c2)) => `child(List.append(c1, c2))
    | (`child(c1), _) => `child(List.append(c1, [child]))
    | (_, `child(c2)) => `child([parent, ...c2])
    | _ => `child([parent, child])
    };
  /** Descendant operator (ie: [div button]) */
  let (|..) = (parent, child) : Selector.t =>
    switch (parent, child) {
    | (`descendant(c1), `descendant(c2)) => `descendant(List.append(c1, c2))
    | (`descendant(c1), _) => `descendant(List.append(c1, [child]))
    | (_, `descendant(c2)) => `descendant([parent, ...c2])
    | _ => `descendant([parent, child])
    };
  /** Sibling operator (ie: [h1 ~ span]) */
  let (|~) = (sibling1, sibling2) : Selector.t =>
    switch (sibling1, sibling2) {
    | (`sibling(s1), `sibling(s2)) => `sibling(List.append(s1, s2))
    | (`sibling(s1), _) => `sibling(List.append(s1, [sibling2]))
    | (_, `sibling(s2)) => `sibling([sibling1, ...s2])
    | _ => `sibling([sibling1, sibling2])
    };
  /** Adjacent operator (ie: [h1 + span]) */
  let (|+) = (sibling1, sibling2) : Selector.t =>
    switch (sibling1, sibling2) {
    | (`adjacent(s1), `adjacent(s2)) => `adjacent(List.append(s1, s2))
    | (`adjacent(s1), _) => `adjacent(List.append(s1, [sibling2]))
    | (_, `adjacent(s2)) => `adjacent([sibling1, ...s2])
    | _ => `adjacent([sibling1, sibling2])
    };
};

type t = Selector.t;

let show = Selector.show;

let show_style = (~indent=0, selector, properties) => {
  let indent' = Js.String.repeat(indent, "  ");
  indent'
  ++ show(selector)
  ++ " {\n"
  ++ Css_Property.show_properties(~indent=indent + 1, properties)
  ++ "\n"
  ++ indent'
  ++ "}";
};
