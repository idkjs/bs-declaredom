/**
 HTML Elements

 Includes nodes like text nodes and fragments.

 See the {{: https://html.spec.whatwg.org/multipage/indices.html#elements-3} full element table}
 ({{: https://www.w3.org/TR/html52/fullindex.html#index-elements} W3C})
 and the {{: https://html.spec.whatwg.org/multipage/indices.html#events-2} events table}
 ({{: https://www.w3.org/TR/html52/fullindex.html#events-table} W3C})
 for reference.
 */;

module A: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-a-element} The A Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-a} W3C})
     ({{: https://www.w3.org/TR/wai-aria-1.1/#link} aria})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.a];
  type child(+'a) =
    Html_Node.t(
      [
        Html_Node.flow('a)
        | Html_Node.phrasing('a)
        | Html_Node.interactive
        | Html_Node.palpable('a)
        | Html_Node.other
      ],
    );

  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.link
                 | Html_Attributes.Aria.button
                 | Html_Attributes.Aria.checkbox
                 | Html_Attributes.Aria.radio
                 | Html_Attributes.Aria.switch_
                 | Html_Attributes.Aria.tab
                 | Html_Attributes.Aria.treeitem
               ],
             )
               =?,
      ~href: string=?,
      ~target: Html_Attributes.Target.t=?,
      ~download: unit=?,
      ~rel: Html_Attributes.LinkType.Hyperlink.t=?,
      ~rev: Html_Attributes.LinkType.Hyperlink.t=?,
      ~hreflang: string=?,
      ~_type: string=?,
      ~referrerpolicy: Html_Attributes.ReferrerPolicy.t=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.a]);
};
module Abbr: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-abbr-element} The Abbr Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-abbr} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.abbr];

  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.abbr]);
};
module Address: {
  /**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-address-element} The Address Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-address} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.address];
  type child(+'a) = Html_Node.t([ Html_Node.flow('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.group)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.address]);
};
module Area: {
  /**
     {{: https://html.spec.whatwg.org/multipage/image-maps.html#the-area-element} The Area Element}
     ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-area} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.area];
  module Attributes: {type shape = [ | `circle | `poly | `rect];};
  let make:
    (
      ~alt: string=?,
      ~coords: Belt.List.t(int)=?,
      ~download: unit=?,
      ~href: string=?,
      ~hreflang: string=?,
      ~rel: Html_Attributes.LinkType.Hyperlink.t=?,
      ~shape: Attributes.shape=?,
      ~target: Html_Attributes.Target.t=?,
      ~_type: string=?,
      ~referrerpolicy: Html_Attributes.ReferrerPolicy.t=?,
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.link)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      unit
    ) =>
    Html_Node.t([> Html_Node.area]);
};
module Article: {
  /**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-article-element} The Article Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-article} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.article];
  type child(+'a) = Html_Node.t([ Html_Node.flow('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.article
                 | Html_Attributes.Aria.application
                 | Html_Attributes.Aria.document
                 | Html_Attributes.Aria.feed
                 | Html_Attributes.Aria.main
                 | Html_Attributes.Aria.region
               ],
             )
               =?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.article]);
};
module Aside: {
  /**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-aside-element} The Aside Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-aside} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.aside];
  type child(+'a) = Html_Node.t([ Html_Node.flow('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.complementary
                 | Html_Attributes.Aria.feed
                 | Html_Attributes.Aria.note
                 | Html_Attributes.Aria.search
                 | Html_Attributes.Aria.presentation
               ],
             )
               =?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.aside]);
};
module Audio: {
  /**
     {{: https://html.spec.whatwg.org/multipage/media.html#the-audio-element} The Audio Element}
     ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-audio} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.audio];
  type child(+'a) =
    Html_Node.t(
      [
        Html_Node.source
        | Html_Node.flow('a)
        | Html_Node.phrasing('a)
        | Html_Node.interactive
        | Html_Node.embedded
        | Html_Node.other
      ],
    );

  let make:
    (
      ~src: string=?,
      ~crossorigin: Html_Attributes.CrossOrigin.t=?,
      ~preload: Html_Attributes.Preload.t=?,
      ~autoplay: unit=?,
      ~loop: unit=?,
      ~muted: unit=?,
      ~controls: unit=?,
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.application)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_load: Dom.event => unit=?,
      ~on_loadend: Dom.event => unit=?,
      ~on_securitypolicyviolation: Dom.event => unit=?,
      ~on_abort: Dom.progressEvent => unit=?,
      ~on_canplay: Dom.event => unit=?,
      ~on_canplaythrough: Dom.event => unit=?,
      ~on_cuechange: Dom.event => unit=?,
      ~on_durationchange: Dom.event => unit=?,
      ~on_emptied: Dom.event => unit=?,
      ~on_ended: Dom.event => unit=?,
      ~on_error: Dom.progressEvent => unit=?,
      ~on_loadedmetadata: Dom.event => unit=?,
      ~on_loadeddata: Dom.event => unit=?,
      ~on_loadstart: Dom.progressEvent => unit=?,
      ~on_pause: Dom.event => unit=?,
      ~on_play: Dom.event => unit=?,
      ~on_playing: Dom.event => unit=?,
      ~on_progress: Dom.progressEvent => unit=?,
      ~on_ratechange: Dom.event => unit=?,
      ~on_resize: Dom.event => unit=?,
      ~on_seeked: Dom.event => unit=?,
      ~on_seeking: Dom.event => unit=?,
      ~on_suspend: Dom.progressEvent => unit=?,
      ~on_stalled: Dom.progressEvent => unit=?,
      ~on_timeupdate: Dom.event => unit=?,
      ~on_volumechange: Dom.event => unit=?,
      ~on_waiting: Dom.event => unit=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.audio]);
};
module B: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-b-element} The B Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-b} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.b];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.b]);
};
module Base: {
  /**
     {{: https://html.spec.whatwg.org/multipage/semantics.html#the-base-element} The Base Element}
     ({{: https://www.w3.org/TR/html52/document-metadata.html#elementdef-base} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.base];

  let make:
    (
      ~href: string=?,
      ~target: Html_Attributes.Target.t=?,
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.roletype)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      unit
    ) =>
    Html_Node.t([> Html_Node.base]);
};
module Bdi: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-bdi-element} The Bdi Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-bdi} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.bdi];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.bdi]);
};
module Bdo: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-bdo-element} The Bdo Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-bdo} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.bdo];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.bdo]);
};
module Blockquote: {
  /**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-blockquote-element} The Blockquote Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-blockquote} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.blockquote];
  type child(+'a) = Html_Node.t([ Html_Node.flow('a) | Html_Node.other]);

  let make:
    (
      ~cite: string=?,
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.blockquote]);
};
module Body: {
  /**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-body-element} The Body Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-body} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.body];

  type children(+'a) = [ Html_Node.flow('a) | Html_Node.other];
  type child(+'a) = Html_Node.t(children('a));

  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.document)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_afterprint: Dom.event => unit=?,
      ~on_beforeprint: Dom.event => unit=?,
      ~on_beforeunload: Dom.event => unit=?,
      ~on_hashchange: Dom.event => unit=?,
      ~on_languagechange: Dom.event => unit=?,
      ~on_message: Dom.event => unit=?,
      ~on_messageerror: Dom.event => unit=?,
      ~on_offline: Dom.event => unit=?,
      ~on_online: Dom.event => unit=?,
      ~on_pagehide: Dom.event => unit=?,
      ~on_pageshow: Dom.event => unit=?,
      ~on_popstate: Dom.event => unit=?,
      ~on_resize: Dom.event => unit=?,
      ~on_rejectionhandled: Dom.event => unit=?,
      ~on_storage: Dom.event => unit=?,
      ~on_unhandledrejection: Dom.event => unit=?,
      ~on_unload: Dom.event => unit=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.body]);
};
module Br: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-br-element} The Br Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-br} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.br];
  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      unit
    ) =>
    Html_Node.t([> Html_Node.br]);
};
module Button: {
  /**
     {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-button-element} The Button Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-button} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.button];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  module Attributes: {type _type = [ | `button | `reset | `submit];};
  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.link
                 | Html_Attributes.Aria.button
                 | Html_Attributes.Aria.radio
                 | Html_Attributes.Aria.switch_
               ],
             )
               =?,
      ~autofocus: unit=?,
      ~disabled: unit=?,
      ~form: string=?,
      ~formaction: string=?,
      ~formenctype: Html_Attributes.Form.Enctype.t=?,
      ~formmethod: Html_Attributes.Form.Method.t=?,
      ~formnovalidate: unit=?,
      ~formtarget: Html_Attributes.Target.t=?,
      ~formelements: string=?,
      ~name: string=?,
      ~_type: Attributes._type=?,
      ~value: string=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline_block)=?,
      ~css_module: Css_Module.t(Css_Property.inline_block)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.button]);
};
module Canvas: {
  /**
     {{: https://html.spec.whatwg.org/multipage/canvas.html#the-canvas-element} The Canvas Element}
     ({{: https://www.w3.org/TR/html52/semantics-scripting.html#elementdef-canvas} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.canvas];
  type child(+'a) =
    Html_Node.t(
      [
        Html_Node.flow('a)
        | Html_Node.phrasing('a)
        | Html_Node.embedded
        | Html_Node.palpable('a)
        | Html_Node.other
      ],
    );

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~height: int=?,
      ~width: int=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.canvas]);
};
module Caption: {
  /**
     {{: https://html.spec.whatwg.org/multipage/tables.html#the-caption-element} The Caption Element}
     ({{: https://www.w3.org/TR/html52/tabular-data.html#elementdef-caption} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.caption];
  type child(+'a) = Html_Node.t([ Html_Node.flow('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.roletype)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.table_caption)=?,
      ~css_module: Css_Module.t(Css_Property.table_caption)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.caption]);
};
module Cite: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-cite-element} The Cite Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-cite} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.cite];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.cite]);
};
module Code: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-code-element} The Code Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-code} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.code];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.code]);
};
module Col: {
  /**
     {{: https://html.spec.whatwg.org/multipage/tables.html#the-col-element} The Col Element}
     ({{: https://www.w3.org/TR/html52/tabular-data.html#elementdef-col} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.col];
  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.roletype)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      unit
    ) =>
    Html_Node.t([> Html_Node.col]);
};
module Colgroup: {
  /**
     {{: https://html.spec.whatwg.org/multipage/tables.html#the-colgroup-element} The Colgroup Element}
     ({{: https://www.w3.org/TR/html52/tabular-data.html#elementdef-colgroup} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.colgroup];
  type child =
    Html_Node.t([ Html_Node.col | Html_Node.template | Html_Node.fragment]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.roletype)=?,
      ~span: int=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.table_column_group)=?,
      ~css_module: Css_Module.t(Css_Property.table_column_group)=?,
      array(child)
    ) =>
    Html_Node.t([> Html_Node.colgroup]);
};
module Data: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-data-element} The Data Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-data} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.data];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~value: string=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.data]);
};
module Datalist: {
  /**
     {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-datalist-element} The Datalist Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-datalist} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.datalist];
  type child(+'a) =
    Html_Node.t(
      [
        Html_Node.phrasing('a)
        | Html_Node.option
        | Html_Node.Element.script_supporting
        | Html_Node.other
      ],
    );

  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.listbox)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.datalist]);
};
module Dd: {
  /**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-dd-element} The Dd Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-dd} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.dd];
  type child(+'a) = Html_Node.t([ Html_Node.flow('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.roletype)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.dd]);
};
module Del: {
  /**
     {{: https://html.spec.whatwg.org/multipage/edits.html#the-del-element} The Del Element}
     ({{: https://www.w3.org/TR/html52/edits.html#elementdef-del} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.del];
  type child(+'a) =
    Html_Node.t(
      [ Html_Node.flow('a) | Html_Node.phrasing('a) | Html_Node.other],
    );

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~cite: string=?,
      ~datetime: Js.Date.t=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.del]);
};
module Details: {
  /**
     {{: https://html.spec.whatwg.org/multipage/interactive-elements.html#the-details-element} The Details Element}
     ({{: https://www.w3.org/TR/html52/interactive-elements.html#elementdef-details} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.details];
  type child(+'a) =
    Html_Node.t([ Html_Node.flow('a) | Html_Node.summary | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.group)=?,
      ~_open: unit=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.details]);
};
module Dfn: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-dfn-element} The Dfn Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-dfn} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.dfn];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.dfn]);
};
module Dialog: {
  /**
     {{: https://html.spec.whatwg.org/multipage/interactive-elements.html#the-dialog-element} The Dialog Element}
     ({{: https://www.w3.org/TR/html52/interactive-elements.html#elementdef-dialog} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.dialog];
  type child(+'a) = Html_Node.t([ Html_Node.flow('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.dialog
                 | Html_Attributes.Aria.alertdialog
               ],
             )
               =?,
      ~_open: unit=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.dialog]);
};
module Div: {
  /**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-div-element} The Div Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-div} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.div];

  type children(+'a) = [ Html_Node.flow('a) | Html_Node.other];
  type child(+'a) = Html_Node.t(children('a));

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.div]);
};
module Dl: {
  /**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-dl-element} The Dl Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-dl} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.dl];
  type child =
    Html_Node.t(
      [
        Html_Node.dd
        | Html_Node.dt
        | Html_Node.Element.script_supporting
        | Html_Node.fragment
      ],
    );

  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.list
                 | Html_Attributes.Aria.group
                 | Html_Attributes.Aria.presentation
               ],
             )
               =?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child)
    ) =>
    Html_Node.t([> Html_Node.dl]);
};
module Dt: {
  /**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-dt-element} The Dt Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-dt} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.dt];
  type child(+'a) = Html_Node.t([ Html_Node.flow('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.roletype)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.dt]);
};
module Em: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-em-element} The Em Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-em} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.em];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.em]);
};
module Embed: {
  /**
     {{: https://html.spec.whatwg.org/multipage/iframe-embed-object.html#the-embed-element} The Embed Element}
     ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-embed} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.embed];

  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.application
                 | Html_Attributes.Aria.document
                 | Html_Attributes.Aria.img
                 | Html_Attributes.Aria.presentation
               ],
             )
               =?,
      ~src: string=?,
      ~_type: string=?,
      ~width: int=?,
      ~height: int=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.replaced_inline)=?,
      ~css_module: Css_Module.t(Css_Property.replaced_inline)=?,
      unit
    ) =>
    Html_Node.t([> Html_Node.embed]);
};
module Fieldset: {
  /**
     {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-fieldset-element} The Fieldset Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-fieldset} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.fieldset];
  type child(+'a) =
    Html_Node.t([ Html_Node.flow('a) | Html_Node.legend | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.group
                 | Html_Attributes.Aria.presentation
               ],
             )
               =?,
      ~form: string=?,
      ~name: string=?,
      ~disabled: unit=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.fieldset]);
};
module Figcaption: {
  /**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-figcaption-element} The Figcaption Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-figcaption} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.figcaption];
  type child(+'a) = Html_Node.t([ Html_Node.flow('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.group
                 | Html_Attributes.Aria.presentation
               ],
             )
               =?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.figcaption]);
};
module Figure: {
  /**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-figure-element} The Figure Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-figure} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.figure];
  type child(+'a) =
    Html_Node.t(
      [ Html_Node.flow('a) | Html_Node.figcaption | Html_Node.other],
    );

  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.figure
                 | Html_Attributes.Aria.group
                 | Html_Attributes.Aria.presentation
               ],
             )
               =?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.figure]);
};
module Footer: {
  /**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-footer-element} The Footer Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-footer} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.footer];
  type child(+'a) = Html_Node.t([ Html_Node.flow('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.contentinfo
                 | Html_Attributes.Aria.group
                 | Html_Attributes.Aria.presentation
               ],
             )
               =?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.footer]);
};
module Form: {
  /**
     {{: https://html.spec.whatwg.org/multipage/forms.html#the-form-element} The Form Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-form} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.form];
  type child(+'a) = Html_Node.t([ Html_Node.flow('a) | Html_Node.other]);

  module Attributes: {type autocomplete = [ | `on | `off];};

  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.form
                 | Html_Attributes.Aria.search
                 | Html_Attributes.Aria.presentation
               ],
             )
               =?,
      ~accept_charset: string=?,
      ~action: string=?,
      ~autocomplete: Attributes.autocomplete=?,
      ~enctype: Html_Attributes.Form.Enctype.t=?,
      ~_method: Html_Attributes.Form.Method.t=?,
      ~name: string=?,
      ~novalidate: unit=?,
      ~target: Html_Attributes.Target.t=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.form]);
};
module H1: {
  /**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements} The H1 Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-h1} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.h1];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.heading
                 | Html_Attributes.Aria.tab
                 | Html_Attributes.Aria.presentation
               ],
             )
               =?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    t([> Html_Node.h1]);
};
module H2: {
  /**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements} The H2 Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-h2} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.h2];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.heading
                 | Html_Attributes.Aria.tab
                 | Html_Attributes.Aria.presentation
               ],
             )
               =?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    t([> Html_Node.h2]);
};
module H3: {
  /**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements} The H3 Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-h3} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.h3];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.heading
                 | Html_Attributes.Aria.tab
                 | Html_Attributes.Aria.presentation
               ],
             )
               =?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    t([> Html_Node.h3]);
};
module H4: {
  /**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements} The H4 Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-h4} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.h4];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.heading
                 | Html_Attributes.Aria.tab
                 | Html_Attributes.Aria.presentation
               ],
             )
               =?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    t([> Html_Node.h4]);
};
module H5: {
  /**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements} The H5 Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-h5} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.h5];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.heading
                 | Html_Attributes.Aria.tab
                 | Html_Attributes.Aria.presentation
               ],
             )
               =?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    t([> Html_Node.h5]);
};
module H6: {
  /**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-h1,-h2,-h3,-h4,-h5,-and-h6-elements} The H6 Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-h6} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.h6];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.heading
                 | Html_Attributes.Aria.tab
                 | Html_Attributes.Aria.presentation
               ],
             )
               =?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    t([> Html_Node.h6]);
};
module Head: {
  /**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-head-element} The Head Element}
     ({{: https://www.w3.org/TR/html52/document-metadata.html#elementdef-head} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.head];
  type child = Html_Node.t([ Html_Node.metadata | Html_Node.fragment]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.roletype)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      array(child)
    ) =>
    Html_Node.t([> Html_Node.head]);
};
module Header: {
  /**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-header-element} The Header Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-header} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.header];
  type child(+'a) = Html_Node.t([ Html_Node.flow('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.banner
                 | Html_Attributes.Aria.group
                 | Html_Attributes.Aria.presentation
               ],
             )
               =?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.header]);
};
module Hgroup: {
  /**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-hgroup-element} The Hgroup Element}
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.hgroup];
  type child =
    Html_Node.t(
      [
        Html_Node.headings
        | Html_Node.Element.script_supporting
        | Html_Node.fragment
      ],
    );

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child)
    ) =>
    Html_Node.t([> Html_Node.hgroup]);
};
module Hr: {
  /**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-hr-element} The Hr Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-hr} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.hr];
  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.separator
                 | Html_Attributes.Aria.presentation
               ],
             )
               =?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      unit
    ) =>
    Html_Node.t([> Html_Node.hr]);
};
module Html: {
  /**
     {{: https://html.spec.whatwg.org/multipage/semantics.html#the-html-element} The Html Element}
     ({{: https://www.w3.org/TR/html52/semantics.html#elementdef-html} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.html];
  type child =
    Html_Node.t([ Html_Node.head | Html_Node.body | Html_Node.fragment]);

  let make:
    (
      ~manifest: string=?,
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.roletype)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      array(child)
    ) =>
    Html_Node.t([> Html_Node.html]);
};
module I: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-i-element} The I Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-i} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.i];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.i]);
};
module Iframe: {
  /**
     {{: https://html.spec.whatwg.org/multipage/iframe-embed-object.html#the-iframe-element} The Iframe Element}
     ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-iframe} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.iframe];
  module Attributes: {
    type sandbox = [
      | `allow_forms
      | `allow_modals
      | `allow_orientation_lock
      | `allow_pointer_lock
      | `allow_popups
      | `allow_popups_to_escape_sandbox
      | `allow_presentation
      | `allow_same_origin
      | `allow_scripts
      | `allow_top_navigation
      | `allow_top_navigation_by_user_activation
    ];
  };
  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.application
                 | Html_Attributes.Aria.document
                 | Html_Attributes.Aria.img
               ],
             )
               =?,
      ~src: string=?,
      ~srcdoc: string=?,
      ~name: string=?,
      ~sandbox: Attributes.sandbox=?,
      ~allow: string=?,
      ~allowfullscreen: unit=?,
      ~allowpaymentrequest: unit=?,
      ~width: int=?,
      ~height: int=?,
      ~referrerpolicy: Html_Attributes.ReferrerPolicy.t=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.replaced_inline)=?,
      ~css_module: Css_Module.t(Css_Property.replaced_inline)=?,
      unit
    ) =>
    Html_Node.t([> Html_Node.iframe]);
};
module Img: {
  /**
     {{: https://html.spec.whatwg.org/multipage/embedded-content.html#the-img-element} The Img Element}
     ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-img} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.img];
  module Attributes: {type decoding = [ | `async | `auto | `sync];};
  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~alt: string=?,
      ~src: string=?,
      ~srcset: string=?,
      ~sizes: string=?,
      ~crossorigin: Html_Attributes.CrossOrigin.t=?,
      ~usemap: string=?,
      ~ismap: unit=?,
      ~width: int=?,
      ~height: int=?,
      ~referrerpolicy: Html_Attributes.ReferrerPolicy.t=?,
      ~decoding: Attributes.decoding=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.replaced_inline)=?,
      ~css_module: Css_Module.t(Css_Property.replaced_inline)=?,
      unit
    ) =>
    Html_Node.t([> Html_Node.img]);
};
module Input: {
  /**
     {{: https://html.spec.whatwg.org/multipage/input.html#the-input-element} The Input Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-input} W3C})

     See also {{: https://www.w3.org/TR/html52/sec-forms.html#state-of-the-type-attribute} type attributes}
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.input];
  module Attributes: {
    type _type = [
      | `button
      | `checkbox
      | `color
      | `date
      | `datetime_local
      | `email
      | `file
      | `hidden
      | `image
      | `month
      | `number
      | `password
      | `radio
      | `range
      | `reset
      | `search
      | `submit
      | `tel
      | `text
      | `time
      | `url
      | `week
    ];
    type step = [ | `any | `step_value(float)];
  };
  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.textbox
                 | Html_Attributes.Aria.searchbox
                 | Html_Attributes.Aria.combobox
                 | Html_Attributes.Aria.spinbutton
                 | Html_Attributes.Aria.slider
                 | Html_Attributes.Aria.checkbox
                 | Html_Attributes.Aria.option
                 | Html_Attributes.Aria.switch_
                 | Html_Attributes.Aria.radio
                 | Html_Attributes.Aria.button
                 | Html_Attributes.Aria.link
               ],
             )
               =?,
      ~accept: string=?,
      ~alt: string=?,
      ~autocomplete: Html_Attributes.AutoComplete.t=?,
      ~autofocus: unit=?,
      ~checked: unit=?,
      ~dirname: Html_Attributes.Dirname.t=?,
      ~disabled: unit=?,
      ~form: string=?,
      ~formaction: string=?,
      ~formenctype: Html_Attributes.Form.Enctype.t=?,
      ~formmethod: Html_Attributes.Form.Method.t=?,
      ~formnovalidate: unit=?,
      ~formtarget: Html_Attributes.Target.t=?,
      ~height: int=?,
      ~list: string=?,
      ~max: string=?,
      ~maxlength: int=?,
      ~min: string=?,
      ~minlength: int=?,
      ~multiple: unit=?,
      ~name: string=?,
      ~pattern: Js.Re.t=?,
      ~placeholder: string=?,
      ~readonly: unit=?,
      ~required: unit=?,
      ~size: int=?,
      ~src: string=?,
      ~step: Attributes.step=?,
      ~_type: Attributes._type=?,
      ~value: 'a=?,
      ~width: int=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      unit
    ) =>
    Html_Node.t([> Html_Node.input]);
};
module Ins: {
  /**
     {{: https://html.spec.whatwg.org/multipage/edits.html#the-ins-element} The Ins Element}
     ({{: https://www.w3.org/TR/html52/edits.html#elementdef-ins} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.ins];
  type child(+'a) =
    Html_Node.t(
      [
        Html_Node.flow('a)
        | Html_Node.phrasing('a)
        | Html_Node.palpable('a)
        | Html_Node.other
      ],
    );

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~cite: string=?,
      ~datetime: Js.Date.t=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.ins]);
};
module Kbd: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-kbd-element} The Kbd Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-kbd} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.kbd];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.kbd]);
};
module Label: {
  /**
     {{: https://html.spec.whatwg.org/multipage/forms.html#the-label-element} The Label Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-label} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.label];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~_for: string=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.label]);
};
module Legend: {
  /**
     {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-legend-element} The Legend Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-legend} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.legend];
  type child(+'a) =
    Html_Node.t(
      [ Html_Node.phrasing('a) | Html_Node.headings | Html_Node.other],
    );

  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.roletype)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.legend]);
};
module Li: {
  /**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-li-element} The Li Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-li} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.li];
  type child(+'a) = Html_Node.t([ Html_Node.flow('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.listitem
                 | Html_Attributes.Aria.option
                 | Html_Attributes.Aria.presentation
                 | Html_Attributes.Aria.radio
                 | Html_Attributes.Aria.separator
                 | Html_Attributes.Aria.tab
                 | Html_Attributes.Aria.treeitem
               ],
             )
               =?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.list_item)=?,
      ~css_module: Css_Module.t(Css_Property.list_item)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.li]);
};
module Link: {
  /**
     {{: https://html.spec.whatwg.org/multipage/semantics.html#the-link-element} The Link Element}
     ({{: https://www.w3.org/TR/html52/document-metadata.html#elementdef-link} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.link];

  let make:
    (
      ~href: string=?,
      ~crossorigin: Html_Attributes.CrossOrigin.t=?,
      ~rel: Html_Attributes.LinkType.t=?,
      ~media: Css_Media.t=?,
      ~integrity: string=?,
      ~hreflang: string=?,
      ~_type: string=?,
      ~referrerpolicy: Html_Attributes.ReferrerPolicy.t=?,
      ~sizes: string=?,
      ~_as: string=?,
      ~color: Css_Value.Color.t=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      unit
    ) =>
    Html_Node.t([> Html_Node.link]);
};
module Main: {
  /**
     {{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-main} The Main Element}
     ({{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-main-element} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.main];
  type child(+'a) = Html_Node.t([ Html_Node.flow('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.main
                 | Html_Attributes.Aria.presentation
               ],
             )
               =?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.main]);
};
module Map: {
  /**
     {{: https://html.spec.whatwg.org/multipage/image-maps.html#the-map-element} The Map Element}
     ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-map} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.map];
  type child(+'a) =
    Html_Node.t(
      [
        Html_Node.flow('a)
        | Html_Node.phrasing('a)
        | Html_Node.palpable('a)
        | Html_Node.other
      ],
    );

  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.roletype)=?,
      ~name: string=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.map]);
};
module Mark: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-mark-element} The Mark Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-mark} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.mark];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.mark]);
};
module Meta: {
  /**
     {{: https://html.spec.whatwg.org/multipage/semantics.html#the-meta-element} The Meta Element}
     ({{: https://www.w3.org/TR/html52/document-metadata.html#elementdef-meta} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.meta];
  module Attributes: {
    type http_equiv = [
      | `content_language
      | `content_security_policy
      | `content_type
      | `default_style
      | `refresh
      | `set_cookie
      | `x_ua_compatible
    ];
  };
  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.roletype)=?,
      ~name: string=?,
      ~http_equiv: Attributes.http_equiv=?,
      ~content: string=?,
      ~charset: string=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      unit
    ) =>
    Html_Node.t([> Html_Node.meta]);
};
module Meter: {
  /**
     {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-meter-element} The Meter Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-meter} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.meter];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.roletype)=?,
      ~value: float=?,
      ~min: float=?,
      ~max: float=?,
      ~low: float=?,
      ~high: float=?,
      ~optimum: float=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline_block)=?,
      ~css_module: Css_Module.t(Css_Property.inline_block)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.meter]);
};
module Nav: {
  /**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-nav-element} The Nav Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-nav} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.nav];
  type child(+'a) = Html_Node.t([ Html_Node.flow('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.navigation)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline_block)=?,
      ~css_module: Css_Module.t(Css_Property.inline_block)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.nav]);
};
module Noscript: {
  /**
     {{: https://html.spec.whatwg.org/multipage/scripting.html#the-noscript-element} The Noscript Element}
     ({{: https://www.w3.org/TR/html52/semantics-scripting.html#elementdef-noscript} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.noscript];
  type child(+'a) =
    Html_Node.t(
      [
        Html_Node.metadata
        | Html_Node.flow('a)
        | Html_Node.phrasing('a)
        | Html_Node.other
      ],
    );

  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.roletype)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.noscript]);
};
module Object: {
  /**
     {{: https://html.spec.whatwg.org/multipage/iframe-embed-object.html#the-object-element} The Object Element}
     ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-object} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.object_];
  type child(+'a) =
    Html_Node.t(
      [
        Html_Node.param
        | Html_Node.flow('a)
        | Html_Node.phrasing('a)
        | Html_Node.embedded
        | Html_Node.interactive
        | Html_Node.Element.listed
        | Html_Node.Element.submittable
        | Html_Node.palpable('a)
        | Html_Node.other
      ],
    );

  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.application
                 | Html_Attributes.Aria.document
                 | Html_Attributes.Aria.img
                 | Html_Attributes.Aria.presentation
               ],
             )
               =?,
      ~data: string=?,
      ~_type: string=?,
      ~typemustmatch: unit=?,
      ~name: string=?,
      ~usemap: string=?,
      ~form: string=?,
      ~width: int=?,
      ~height: int=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.object_]);
};
module Ol: {
  /**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-ol-element} The Ol Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-ol} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.ol];
  type child(+'a) =
    Html_Node.t(
      [
        Html_Node.li
        | Html_Node.Element.script_supporting
        | Html_Node.fragment
      ],
    );

  module Attributes: {
    type _type = [
      | `decimal
      | `lower_alpha
      | `lower_roman
      | `upper_alpha
      | `upper_roman
    ];
  };
  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.list
                 | Html_Attributes.Aria.directory
                 | Html_Attributes.Aria.group
                 | Html_Attributes.Aria.listbox
                 | Html_Attributes.Aria.menubar
                 | Html_Attributes.Aria.presentation
                 | Html_Attributes.Aria.radiogroup
                 | Html_Attributes.Aria.tablist
                 | Html_Attributes.Aria.toolbar
                 | Html_Attributes.Aria.tree
               ],
             )
               =?,
      ~reversed: unit=?,
      ~start: int=?,
      ~_type: Attributes._type=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.ol]);
};
module Optgroup: {
  /**
     {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-optgroup-element} The Optgroup Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-optgroup} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.optgroup];
  type child(+'a) =
    Html_Node.t(
      [
        Html_Node.option
        | Html_Node.Element.script_supporting
        | Html_Node.fragment
      ],
    );

  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.roletype)=?,
      ~disabled: unit=?,
      ~label: string,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.optgroup]);
};
module Option: {
  /**
     {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-option-element} The Option Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-option} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.option];
  type child('a) = Html_Node.t(Html_Node.other);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.option
                 | Html_Attributes.Aria.separator
               ],
             )
               =?,
      ~disabled: unit=?,
      ~label: string=?,
      ~selected: unit=?,
      ~value: string=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.option]);
};
module Output: {
  /**
     {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-output-element} The Output Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-output} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.output];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~_for: string=?,
      ~form: string=?,
      ~name: string=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.output]);
};
module P: {
  /**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-p-element} The P Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-p} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.p];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.p]);
};
module Param: {
  /**
     {{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-param} The Param Element}
     ({{: https://html.spec.whatwg.org/multipage/iframe-embed-object.html#the-param-element} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.param];

  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.roletype)=?,
      ~name: string=?,
      ~value: string=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      unit
    ) =>
    Html_Node.t([> Html_Node.param]);
};
module Picture: {
  /**
     {{: https://html.spec.whatwg.org/multipage/embedded-content.html#the-picture-element} The Picture Element}
     ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-picture} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.picture];
  type child(+'a) =
    Html_Node.t(
      [
        Html_Node.img
        | Html_Node.source
        | Html_Node.Element.script_supporting
        | Html_Node.fragment
      ],
    );

  let make:
    (
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.picture]);
};
module Pre: {
  /**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-pre-element} The Pre Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-pre} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.pre];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.pre]);
};
module Progress: {
  /**
     {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-progress-element} The Progress Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-progress} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.progress];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.progressbar)=?,
      ~value: float=?,
      ~max: float=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline_block)=?,
      ~css_module: Css_Module.t(Css_Property.inline_block)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.progress]);
};
module Q: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-q-element} The Q Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-q} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.q];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~cite: string=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.q]);
};
module Rb: {
  /**
     {{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-rb} The Rb Element}
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.rb];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.ruby_base)=?,
      ~css_module: Css_Module.t(Css_Property.ruby_base)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.rb]);
};
module Rp: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-rp-element} The Rp Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-rp} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.rp];
  type child = Html_Node.t(Html_Node.other);
  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      array(child)
    ) =>
    Html_Node.t([> Html_Node.rp]);
};
module Rt: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-rt-element} The Rt Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-rt} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.rt];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.ruby_text)=?,
      ~css_module: Css_Module.t(Css_Property.ruby_text)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.rt]);
};
module Rtc: {
  /**
     {{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-rtc} The Rtc Element}
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.rtc];
  type child(+'a) =
    Html_Node.t(
      [
        Html_Node.phrasing('a)
        | Html_Node.rt
        | Html_Node.rp
        | Html_Node.other
      ],
    );

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.ruby_text_container)=?,
      ~css_module: Css_Module.t(Css_Property.ruby_text_container)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.rtc]);
};
module Ruby: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-ruby-element} The Ruby Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-ruby} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.ruby];
  type child(+'a) =
    Html_Node.t(
      [
        Html_Node.phrasing('a)
        | Html_Node.rp
        | Html_Node.rt
        | Html_Node.rb
        | Html_Node.rtc
        | Html_Node.other
      ],
    );

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.ruby)=?,
      ~css_module: Css_Module.t(Css_Property.ruby)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.ruby]);
};
module S: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-s-element} The S Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-s} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.s];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.s]);
};
module Samp: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-samp-element} The Samp Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-samp} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.samp];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.samp]);
};
module Script: {
  /**
     {{: https://html.spec.whatwg.org/multipage/scripting.html#the-script-element} The Script Element}
     ({{: https://www.w3.org/TR/html52/semantics-scripting.html#elementdef-script} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.script];

  let make:
    (
      ~src: string=?,
      ~_type: string=?,
      ~nomodule: unit=?,
      ~async: unit=?,
      ~defer: unit=?,
      ~crossorigin: Html_Attributes.CrossOrigin.t=?,
      ~integrity: string=?,
      ~referrerpolicy: Html_Attributes.ReferrerPolicy.t=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      unit
    ) =>
    Html_Node.t([> Html_Node.script]);
  let make_inline:
    (
      ~_type: string=?,
      ~nomodule: unit=?,
      ~async: unit=?,
      ~defer: unit=?,
      ~crossorigin: Html_Attributes.CrossOrigin.t=?,
      ~integrity: string=?,
      ~referrerpolicy: Html_Attributes.ReferrerPolicy.t=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      string
    ) =>
    Html_Node.t([> Html_Node.script]);
};
module Section: {
  /**
     {{: https://html.spec.whatwg.org/multipage/sections.html#the-section-element} The Section Element}
     ({{: https://www.w3.org/TR/html52/sections.html#elementdef-section} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.section];
  type children(+'a) = [ Html_Node.flow('a) | Html_Node.other];
  type child(+'a) = Html_Node.t(children('a));

  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.region
                 | Html_Attributes.Aria.alert
                 | Html_Attributes.Aria.alertdialog
                 | Html_Attributes.Aria.application
                 | Html_Attributes.Aria.contentinfo
                 | Html_Attributes.Aria.dialog
                 | Html_Attributes.Aria.document
                 | Html_Attributes.Aria.feed
                 | Html_Attributes.Aria.log
                 | Html_Attributes.Aria.main
                 | Html_Attributes.Aria.marquee
                 | Html_Attributes.Aria.presentation
                 | Html_Attributes.Aria.region
                 | Html_Attributes.Aria.search
                 | Html_Attributes.Aria.status
                 | Html_Attributes.Aria.tabpanel
               ],
             )
               =?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.section]);
};
module Select: {
  /**
     {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-select-element} The Select Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-select} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.select];
  type child(+'a) =
    Html_Node.t(
      [
        Html_Node.option
        | Html_Node.optgroup
        | Html_Node.Element.script_supporting
        | Html_Node.fragment
      ],
    );

  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.combobox
                 | Html_Attributes.Aria.listbox
               ],
             )
               =?,
      ~autocomplete: Html_Attributes.AutoComplete.t=?,
      ~autofocus: unit=?,
      ~disabled: unit=?,
      ~form: string=?,
      ~multiple: unit=?,
      ~name: string=?,
      ~required: unit=?,
      ~size: int=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline_block)=?,
      ~css_module: Css_Module.t(Css_Property.inline_block)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.select]);
};
module Slot: {
  /**
     {{: https://html.spec.whatwg.org/multipage/scripting.html#the-slot-element} The Slot Element}
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.slot];
  type child(+'a) =
    Html_Node.t(
      [ Html_Node.flow('a) | Html_Node.phrasing('a) | Html_Node.other],
    );

  let make:
    (
      ~name: string=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.slot]);
};
module Small: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-small-element} The Small Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-small} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.small];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.small]);
};
module Source: {
  /**
     {{: https://html.spec.whatwg.org/multipage/embedded-content.html#the-source-element} The Source Element}
     ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-source} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.source];

  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.roletype)=?,
      ~src: string=?,
      ~_type: string=?,
      ~srcset: string=?,
      ~sizes: string=?,
      ~media: Css_Media.t=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      unit
    ) =>
    Html_Node.t([> Html_Node.source]);
};
module Span: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-span-element} The Span Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-span} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.span];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.span]);
};
module Strong: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-strong-element} The Strong Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-strong} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.strong];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.strong]);
};
module Style: {
  /**
     {{: https://html.spec.whatwg.org/multipage/semantics.html#the-style-element} The Style Element}
     ({{: https://www.w3.org/TR/html52/document-metadata.html#elementdef-style} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.style];

  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.roletype)=?,
      ~media: Css_Media.t=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      string
    ) =>
    Html_Node.t([> Html_Node.style]);
};
module Sub: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-sub-and-sup-elements} The Sub Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-sub} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.sub];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.sub]);
};
module Summary: {
  /**
     {{: https://html.spec.whatwg.org/multipage/interactive-elements.html#the-summary-element} The Summary Element}
     ({{: https://www.w3.org/TR/html52/interactive-elements.html#elementdef-summary} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.summary];
  type child(+'a) =
    Html_Node.t(
      [ Html_Node.phrasing('a) | Html_Node.headings | Html_Node.other],
    );

  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.button)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.summary]);
};
module Sup: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-sub-and-sup-elements} The Sub Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-sup} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.sup];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.sup]);
};
module Table: {
  /**
     {{: https://html.spec.whatwg.org/multipage/tables.html#the-table-element} The Table Element}
     ({{: https://www.w3.org/TR/html52/tabular-data.html#elementdef-table} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.table];
  type child(+'a) =
    Html_Node.t(
      [
        Html_Node.caption
        | Html_Node.colgroup
        | Html_Node.thead
        | Html_Node.tbody
        | Html_Node.tr
        | Html_Node.tfoot
        | Html_Node.Element.script_supporting
        | Html_Node.fragment
      ],
    );

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.table)=?,
      ~css_module: Css_Module.t(Css_Property.table)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.table]);
};
module Tbody: {
  /**
     {{: https://html.spec.whatwg.org/multipage/tables.html#the-tbody-element} The Tbody Element}
     ({{: https://www.w3.org/TR/html52/tabular-data.html#elementdef-tbody} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.tbody];
  type child(+'a) =
    Html_Node.t(
      [
        Html_Node.tr
        | Html_Node.Element.script_supporting
        | Html_Node.fragment
      ],
    );

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.table_row_group)=?,
      ~css_module: Css_Module.t(Css_Property.table_row_group)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.tbody]);
};
module Td: {
  /**
     {{: https://html.spec.whatwg.org/multipage/tables.html#the-td-element} The Td Element}
     ({{: https://www.w3.org/TR/html52/tabular-data.html#elementdef-td} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.td];
  type child(+'a) = Html_Node.t([ Html_Node.flow('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~colspan: int=?,
      ~rowspan: int=?,
      ~headers: string=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.table_cell)=?,
      ~css_module: Css_Module.t(Css_Property.table_cell)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.td]);
};
module Template: {
  /**
     {{: https://html.spec.whatwg.org/multipage/scripting.html#the-template-element} The Template Element}
     ({{: https://www.w3.org/TR/html52/semantics-scripting.html#elementdef-template} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.template];
  type child(+'a) = Html_Node.t(Html_Node.content('a));

  let make:
    (
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.template]);
};
module Textarea: {
  /**
     {{: https://html.spec.whatwg.org/multipage/form-elements.html#the-textarea-element} The Textarea Element}
     ({{: https://www.w3.org/TR/html52/sec-forms.html#elementdef-textarea} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.textarea];
  type child = Html_Node.t(Html_Node.other);
  module Attributes: {type wrap = [ | `hard | `soft];};
  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.textbox)=?,
      ~autocomplete: Html_Attributes.AutoComplete.t=?,
      ~autofocus: unit=?,
      ~cols: int=?,
      ~dirname: Html_Attributes.Dirname.t=?,
      ~disabled: unit=?,
      ~form: string=?,
      ~maxlength: int=?,
      ~minlength: int=?,
      ~name: string=?,
      ~placeholder: string=?,
      ~readonly: unit=?,
      ~required: unit=?,
      ~rows: int=?,
      ~wrap: Attributes.wrap=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child)
    ) =>
    Html_Node.t([> Html_Node.textarea]);
};
module Tfoot: {
  /**
     {{: https://html.spec.whatwg.org/multipage/tables.html#the-tfoot-element} The Tfoot Element}
     ({{: https://www.w3.org/TR/html52/tabular-data.html#elementdef-tfoot} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.tfoot];
  type child =
    Html_Node.t(
      [
        Html_Node.tr
        | Html_Node.Element.script_supporting
        | Html_Node.fragment
      ],
    );

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.table_footer_group)=?,
      ~css_module: Css_Module.t(Css_Property.table_footer_group)=?,
      array(child)
    ) =>
    Html_Node.t([> Html_Node.tfoot]);
};
module Th: {
  /**
     {{: https://html.spec.whatwg.org/multipage/tables.html#the-th-element} The Th Element}
     ({{: https://www.w3.org/TR/html52/tabular-data.html#elementdef-th} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.th];
  type child(+'a) = Html_Node.t([ Html_Node.flow('a) | Html_Node.other]);

  module Attributes: {
    type scope = [ | `auto | `col | `colgroup | `row | `rowgroup];
  };
  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~colspan: int=?,
      ~rowspan: int=?,
      ~headers: string=?,
      ~scope: Attributes.scope=?,
      ~abbr: string=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.table_cell)=?,
      ~css_module: Css_Module.t(Css_Property.table_cell)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.th]);
};
module Thead: {
  /**
     {{: https://html.spec.whatwg.org/multipage/tables.html#the-thead-element} The Thead Element}
     ({{: https://www.w3.org/TR/html52/tabular-data.html#elementdef-thead} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.thead];
  type child(+'a) =
    Html_Node.t(
      [
        Html_Node.tr
        | Html_Node.Element.script_supporting
        | Html_Node.fragment
      ],
    );

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.table_header_group)=?,
      ~css_module: Css_Module.t(Css_Property.table_header_group)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.thead]);
};
module Time: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-time-element} The Time Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-time} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.time];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~datetime: Js.Date.t,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.time]);
};
module Title: {
  /**
     {{: https://html.spec.whatwg.org/multipage/semantics.html#the-title-element} The Title Element}
     ({{: https://www.w3.org/TR/html52/document-metadata.html#elementdef-title} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.title];
  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.roletype)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~style: Css_Style.t([< Css_Property.display])=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      string
    ) =>
    Html_Node.t([> Html_Node.title]);
};
module Tr: {
  /**
     {{: https://html.spec.whatwg.org/multipage/tables.html#the-tr-element} The Tr Element}
     ({{: https://www.w3.org/TR/html52/tabular-data.html#elementdef-tr} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.tr];
  type child =
    Html_Node.t(
      [
        Html_Node.th
        | Html_Node.td
        | Html_Node.Element.script_supporting
        | Html_Node.fragment
      ],
    );

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.table_row)=?,
      ~css_module: Css_Module.t(Css_Property.table_row)=?,
      array(child)
    ) =>
    Html_Node.t([> Html_Node.tr]);
};
module Track: {
  /**
     {{: https://html.spec.whatwg.org/multipage/media.html#the-track-element} The Track Element}
     ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-track} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.track];
  module Attributes: {
    type kind = [
      | `captions
      | `chapters
      | `descriptions
      | `metadata
      | `subtitles
    ];
  };
  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.roletype)=?,
      ~kind: Attributes.kind=?,
      ~src: string,
      ~srclang: string=?,
      ~label: string=?,
      ~default: unit=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      unit
    ) =>
    Html_Node.t([> Html_Node.track]);
};
module U: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-u-element} The U Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-u} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.u];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.u]);
};
module Ul: {
  /**
     {{: https://html.spec.whatwg.org/multipage/grouping-content.html#the-ul-element} The Ul Element}
     ({{: https://www.w3.org/TR/html52/grouping-content.html#elementdef-ul} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.ul];
  type child =
    Html_Node.t(
      [
        Html_Node.li
        | Html_Node.Element.script_supporting
        | Html_Node.fragment
      ],
    );

  let make:
    (
      ~aria: Html_Attributes.Aria.t(
               [<
                 Html_Attributes.Aria.list
                 | Html_Attributes.Aria.directory
                 | Html_Attributes.Aria.group
                 | Html_Attributes.Aria.listbox
                 | Html_Attributes.Aria.presentation
                 | Html_Attributes.Aria.menubar
                 | Html_Attributes.Aria.radiogroup
                 | Html_Attributes.Aria.tablist
                 | Html_Attributes.Aria.toolbar
                 | Html_Attributes.Aria.tree
               ],
             )
               =?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.block)=?,
      ~css_module: Css_Module.t(Css_Property.block)=?,
      array(child)
    ) =>
    Html_Node.t([> Html_Node.ul]);
};
module Var: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-var-element} The Var Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-var} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.var];
  type child(+'a) =
    Html_Node.t([ Html_Node.phrasing('a) | Html_Node.other]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('b))
    ) =>
    Html_Node.t([> Html_Node.var]);
};
module Video: {
  /**
     {{: https://html.spec.whatwg.org/multipage/media.html#the-video-element} The Video Element}
     ({{: https://www.w3.org/TR/html52/semantics-embedded-content.html#elementdef-video} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.video];
  type child(+'a) =
    Html_Node.t([ Html_Node.track | Html_Node.source | Html_Node.fragment]);

  let make:
    (
      ~aria: Html_Attributes.Aria.t(Html_Attributes.Aria.application)=?,
      ~src: string=?,
      ~crossorigin: Html_Attributes.CrossOrigin.t=?,
      ~poster: string=?,
      ~preload: Html_Attributes.Preload.t=?,
      ~autoplay: unit=?,
      ~playsinline: unit=?,
      ~loop: unit=?,
      ~muted: unit=?,
      ~controls: unit=?,
      ~width: int=?,
      ~height: int=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      ~on_auxclick: Dom.mouseEvent => unit=?,
      ~on_blur: Dom.focusEvent => unit=?,
      ~on_click: Dom.mouseEvent => unit=?,
      ~on_copy: Dom.clipboardEvent => unit=?,
      ~on_cut: Dom.clipboardEvent => unit=?,
      ~on_dblclick: Dom.mouseEvent => unit=?,
      ~on_drag: Dom.dragEvent => unit=?,
      ~on_dragend: Dom.dragEvent => unit=?,
      ~on_dragenter: Dom.dragEvent => unit=?,
      ~on_dragexit: Dom.dragEvent => unit=?,
      ~on_dragleave: Dom.dragEvent => unit=?,
      ~on_dragover: Dom.dragEvent => unit=?,
      ~on_dragstart: Dom.dragEvent => unit=?,
      ~on_drop: Dom.dragEvent => unit=?,
      ~on_focus: Dom.focusEvent => unit=?,
      ~on_input: Dom.inputEvent => unit=?,
      ~on_keydown: Dom.keyboardEvent => unit=?,
      ~on_keypress: Dom.keyboardEvent => unit=?,
      ~on_keyup: Dom.keyboardEvent => unit=?,
      ~on_mousedown: Dom.mouseEvent => unit=?,
      ~on_mouseenter: Dom.mouseEvent => unit=?,
      ~on_mouseleave: Dom.mouseEvent => unit=?,
      ~on_mousemove: Dom.mouseEvent => unit=?,
      ~on_mouseout: Dom.mouseEvent => unit=?,
      ~on_mouseover: Dom.mouseEvent => unit=?,
      ~on_mouseup: Dom.mouseEvent => unit=?,
      ~on_wheel: Dom.wheelEvent => unit=?,
      ~on_paste: Dom.clipboardEvent => unit=?,
      ~on_scroll: Dom.uiEvent => unit=?,
      ~style: Css_Style.t(Css_Property.inline)=?,
      ~css_module: Css_Module.t(Css_Property.inline)=?,
      array(child('a))
    ) =>
    Html_Node.t([> Html_Node.video]);
};
module Wbr: {
  /**
     {{: https://html.spec.whatwg.org/multipage/text-level-semantics.html#the-wbr-element} The Wbr Element}
     ({{: https://www.w3.org/TR/html52/textlevel-semantics.html#elementdef-wbr} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.wbr];
  let make:
    (
      ~aria: Html_Attributes.Aria.t('a)=?,
      ~accesskey: string=?,
      ~autocapitalize: Html_Attributes.Global.Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Html_Attributes.Global.Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Html_Attributes.Global.Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Html_Attributes.Global.Value.inputmode=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: unit=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~tabindex: int=?,
      ~title: string=?,
      ~translate: Html_Attributes.Global.Value.translate=?,
      unit
    ) =>
    Html_Node.t([> Html_Node.wbr]);
};
module Text: {
  /**
     {{: https://dom.spec.whatwg.org/#interface-text} The Text Node}
     ({{: https://www.w3.org/TR/dom/#interface-text} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.text];
  let make: string => Html_Node.t([> Html_Node.text]);
};
module Fragment: {
  /**
     {{: https://dom.spec.whatwg.org/#interface-documentfragment} Docuemnt Fragment}
     ({{: https://www.w3.org/TR/dom/#interface-documentfragment} W3C})
     */;

  type t(+'a) = Html_Node.t('a) constraint 'a = [> Html_Node.fragment];
  type child(+'a, +'b) =
    Html_Node.t([< Html_Node.content('b) > `fragment] as 'a);

  let make: array(child('a, 'b)) => child('a, 'b);
};
