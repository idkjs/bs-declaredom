type property;
type args = {
  attributes: Js.Dict.t(property),
  children: array(Dom.node),
};

[@bs.set]
external set_content_editable: (Dom.htmlElement, bool) => unit =
  "contentEditable";

external as_node: Dom.node_like(_) => Dom.node = "%identity";

module DomTokenList = {
  [@bs.val]
  external to_string: Dom.domTokenList => array(string) =
    "Array.prototype.slice.call";
};

module Dataset = {
  [@bs.set_index] external set: (Dom.domStringMap, string, string) => unit;
};

module Case = {
  let snake_to_title: (. string) => string = (
    [%raw
      {|
    function(text) {
      return text.replace(/_([a-z]{1})/g, function(_, c) {
        return c.toUpperCase()
      })
    }|}
    ]:
      (. string) => string
  );

  let snake_to_spinal = text =>
    Js.String.replaceByRe([%re "/_/g"], "-", text);
};

let make_text = (text: string): Dom.node =>
  Webapi.Dom.window
  |> Webapi.Dom.Window.document
  |> Webapi.Dom.Document.createTextNode(text)
  |> as_node;

let make_fragment = (children: array(Dom.node)): Dom.node => {
  let fragment =
    Webapi.Dom.window
    |> Webapi.Dom.Window.document
    |> Webapi.Dom.Document.createDocumentFragment;
  children
  |> Js.Array.forEach(child =>
       Webapi.Dom.DocumentFragment.appendChild(child, fragment)
     );
  fragment |> as_node;
};

module HtmlElement = {
  [@bs.set_index]
  external set_style: (Dom.cssStyleDeclaration, string, string) => unit;

  let set_attribute: (Dom.htmlElement, (string, property)) => unit = (
    (element, (key, value)) =>
      switch (key) {
      | "id" => Webapi.Dom.HtmlElement.setId(element, Obj.magic(value))
      | "class_name" =>
        Webapi.Dom.HtmlElement.setClassName(element, Obj.magic(value))
      | "class_set" =>
        let class_set =
          (Obj.magic(value): Js.Dict.t(bool))
          |> Js.Dict.entries
          |> Js.Array.filter(((_, is_included)) => is_included)
          |> Js.Array.map(((class_name, _)) => class_name)
        and class_names =
          element |> Webapi.Dom.HtmlElement.classList |> DomTokenList.to_string;

        Js.Array.concat(class_set, class_names)
        |> Js.Array.joinWith(" ")
        |> Webapi.Dom.HtmlElement.setClassName(element);
      | "dataset" =>
        let set_dataset =
          element |> Webapi.Dom.HtmlElement.dataset |> Dataset.set;

        (Obj.magic(value): Js.Dict.t(string))
        |> Js.Dict.entries
        |> Js.Array.forEach(((key, value)) => set_dataset(key, value));
      | "style" =>
        let style = Webapi.Dom.HtmlElement.style(element);
        (Obj.magic(value): Js.Dict.t(string))
        |> Js.Dict.entries
        |> Js.Array.forEach(((property, value)) =>
             set_style(style, Case.snake_to_title(. property), value)
           );
      | "contentEditable" =>
        let content_editable: bool = Obj.magic(value);

        element->(set_content_editable(content_editable));
      | attribute when attribute |> Js.String.startsWith("on") =>
        let callback: Dom.event => unit = (
          Obj.magic(value): Dom.event => unit
        )
        and event_name =
          attribute
          |> Js.String.replaceByRe([%re "/^on[_]{0,1}/"], "")
          |> Js.String.toLowerCase;

        element
        |> Webapi.Dom.HtmlElement.addEventListener(event_name, callback);
      | _ =>
        element
        |> Webapi.Dom.HtmlElement.setAttribute(
             Case.snake_to_spinal(key),
             Obj.magic(value),
           )
      }:
      (Dom.htmlElement, (string, property)) => unit
  );

  let set_attributes = (element, attributes: Js.Dict.t(property)): unit =>
    attributes |> Js.Dict.entries |> Js.Array.forEach(set_attribute(element));

  let set_children = (element, children) => {
    let fragment =
      Webapi.Dom.window
      |> Webapi.Dom.Window.document
      |> Webapi.Dom.Document.createDocumentFragment;

    children
    |> Js.Array.forEach(child =>
         fragment |> Webapi.Dom.DocumentFragment.appendChild(child)
       );
    element |> Webapi.Dom.HtmlElement.appendChild(fragment);
  };
};

let make_element = (tag_name): Dom.htmlElement =>
  Webapi.Dom.window
  |> Webapi.Dom.Window.document
  |> Webapi.Dom.Document.createElement(tag_name)
  |> Obj.magic;

let make = (tag_name, attributes, children) => {
  let element = make_element(tag_name);
  HtmlElement.set_attributes(element, attributes);
  HtmlElement.set_children(element, children);
  as_node(element);
};

let make_empty = (tag_name, attributes, ()) => {
  let element = make_element(tag_name);
  HtmlElement.set_attributes(element, attributes);
  as_node(element);
};

let make_with_text = (tag_name, attributes, text) =>
  Webapi.Dom.window
  |> Webapi.Dom.Window.document
  |> Webapi.Dom.Document.createTextNode(text)
  |> as_node
  |> Array.make(1)
  |> make(tag_name, attributes);
