/** HTML Attributes */;

type t = Js.Dict.t(Declaredom.property);
module LinkType: {
  /** {{: https://www.w3.org/TR/html52/links.html#sec-link-types} Link Types} */;

  module Link: {
    type t = [
      | `alternate
      | `author
      | `help
      | `icon
      | `license
      | `next
      | `prev
      | `search
      | `stylesheet
    ];
    let show: t => string;
  };
  module Hyperlink: {
    type t = [
      | `alternate
      | `author
      | `bookmark
      | `help
      | `license
      | `next
      | `nofollow
      | `noopener
      | `noreferrer
      | `prev
      | `search
      | `tag
    ];
    let show: t => string;
  };
  type t = [
    | `alternate
    | `author
    | `bookmark
    | `help
    | `icon
    | `license
    | `next
    | `nofollow
    | `noopener
    | `noreferrer
    | `prev
    | `search
    | `stylesheet
    | `tag
  ];
  let show: t => string;
};
module Target: {
  /** {{: https://www.w3.org/TR/html52/browsers.html#browsing-context-names} Browsing context} */;

  type value = [ | `blank | `parent | `self | `top];
  type t = [ | `blank | `browsing_context(string) | `parent | `self | `top];
  let show: t => string;
};
module ReferrerPolicy: {
  /** {{: https://www.w3.org/TR/referrer-policy/#referrer-policies} Referrer Policies} */;

  type t = [
    | `no_referrer
    | `no_referrer_when_downgrade
    | `origin
    | `origin_when_cross_origin
    | `same_origin
    | `strict_origin
    | `strict_origin_when_cross_origin
    | `unsafe_url
  ];
  let show: t => string;
};
module CrossOrigin: {
  /** {{: https://html.spec.whatwg.org/multipage/media.html#attr-media-crossorigin} Crossorigin} */;

  type t = [ | `anonymous | `use_credentials];
  let show: t => string;
};
module AutoComplete: {
  /** {{: https://www.w3.org/TR/html52/sec-forms.html#autofill-detail-tokens} Autofill detail tokens} */;

  type t = [
    | `additional_name
    | `address_level1
    | `address_level2
    | `address_level3
    | `address_level4
    | `address_line1
    | `address_line2
    | `address_line3
    | `bday
    | `bday_day
    | `bday_month
    | `bday_year
    | `cc_additional_name
    | `cc_csc
    | `cc_exp
    | `cc_exp_month
    | `cc_exp_year
    | `cc_family_name
    | `cc_given_name
    | `cc_name
    | `cc_number
    | `cc_type
    | `country
    | `country_name
    | `current_password
    | `email
    | `family_name
    | `given_name
    | `honorific_prefix
    | `honorific_suffix
    | `impp
    | `language
    | `name
    | `new_password
    | `nickname
    | `off
    | `on
    | `organization
    | `organization_title
    | `photo
    | `postal_code
    | `sex
    | `street_address
    | `tel
    | `tel_area_code
    | `tel_country_code
    | `tel_extension
    | `tel_local
    | `tel_local_prefix
    | `tel_local_suffix
    | `tel_national
    | `transaction_amount
    | `transaction_currency
    | `url
    | `username
  ];
  let show: t => string;
};
module Form: {
  module Enctype: {
    /** {{: https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-enctype} Form Enctype} */;

    type t = [ | `form_data | `plain | `x_www_form_urlencoded];
    let show: t => string;
  };
  module Method: {
    /** {{: https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fs-method} Form Method} */;

    type t = [ | `dialog | `get | `post];
    let show: t => string;
  };
};
module Dirname: {
  /** {{: https://html.spec.whatwg.org/multipage/form-control-infrastructure.html#attr-fe-dirname} Dirname} */;

  type t = [ | `ltr | `rtl];
  let show: t => string;
};
module Preload: {
  /** {{: https://html.spec.whatwg.org/multipage/media.html#attr-media-preload} Preload} */;

  type t = [ | `auto | `metadata | `none];
  let show: t => string;
};
module Aria: {
  /**
      {{: https://www.w3.org/TR/html52/dom.html#allowed-aria-roles-states-and-properties} Aria Roles}
      and {{: https://www.w3.org/TR/wai-aria-1.1/#role_definitions} Role Definitions}
    */;

  type t(+'a);

  /* Core role */
  type roletype = [ | `roletype];

  /* Abstract roles */
  type structure = roletype;
  type widget = roletype
  and window = roletype;
  type command = widget
  and composite = widget
  and input = widget
  and range = widget;
  type section = structure
  and sectionhead = structure;
  type landmark = section;
  type alert = [ | `alert | `roletype]
  and dialog = [ | `dialog | `roletype];
  type alertdialog = [ | `alert | `alertdialog | `dialog | `roletype]
  and application = [ | `application | `roletype]
  and document = [ | `document | `roletype];
  type article = [ | `article | `document | `roletype]
  and banner = [ | `banner | `roletype]
  and button = [ | `button | `roletype]
  and cell = [ | `cell | `roletype]
  and checkbox = [ | `checkbox | `roletype];
  type gridcell = [ | `cell | `gridcell | `roletype];
  type columnheader = [ | `cell | `columnheader | `gridcell | `roletype]
  and group = [ | `group | `roletype];
  type select = [ | `group | `roletype];
  type combobox = [ | `combobox | `group | `roletype]
  and complementary = [ | `complementary | `roletype]
  and contentinfo = [ | `contentinfo | `roletype]
  and definition = [ | `definition | `roletype]
  and list = [ | `list | `roletype];
  type directory = [ | `directory | `list | `roletype]
  and feed = [ | `feed | `list | `roletype]
  and figure = [ | `figure | `roletype]
  and form = [ | `form | `roletype];
  type table = [ | `roletype | `table];
  type grid = [ | `grid | `roletype | `table]
  and heading = [ | `heading | `roletype]
  and img = [ | `img | `roletype]
  and link = [ | `link | `roletype]
  and listbox = [ | `group | `listbox | `roletype]
  and listitem = [ | `listitem | `roletype]
  and log = [ | `log | `roletype]
  and main = [ | `main | `roletype]
  and marquee = [ | `marquee | `roletype]
  and math = [ | `math | `roletype]
  and menu = [ | `group | `menu | `roletype];
  type menubar = [ | `group | `menu | `menubar | `roletype]
  and menuitem = [ | `menuitem | `roletype];
  type menuitemcheckbox = [
    | `checkbox
    | `menuitem
    | `menuitemcheckbox
    | `roletype
  ]
  and radio = [ | `radio | `roletype];
  type menuitemradio = [
    | `checkbox
    | `menuitem
    | `menuitemcheckbox
    | `menuitemradio
    | `radio
    | `roletype
  ]
  and navigation = [ | `navigation | `roletype]
  and none = [ | `none]
  and note = [ | `note | `roletype]
  and option = [ | `option | `roletype]
  and presentation = [ | `presentation | `roletype]
  and progressbar = [ | `progressbar | `roletype]
  and radiogroup = [ | `group | `radiogroup | `roletype]
  and region = [ | `region | `roletype]
  and row = [ | `group | `roletype | `row]
  and rowgroup = [ | `roletype | `rowgroup]
  and rowheader = [ | `cell | `gridcell | `roletype | `rowheader]
  and scrollbar = [ | `roletype | `scrollbar]
  and search = [ | `roletype | `search]
  and separator = [ | `roletype | `separator]
  and textbox = [ | `roletype | `textbox];
  type searchbox = [ | `roletype | `searchbox | `textbox]
  and separatable = [ | `roletype | `separatable]
  and slider = [ | `roletype | `slider]
  and spinbutton = [ | `roletype | `spinbutton]
  and status = [ | `roletype | `status]
  and switch_ = [ | `checkbox | `roletype | `switch_]
  and tab = [ | `roletype | `tab]
  and tablist = [ | `roletype | `tablist]
  and tabpanel = [ | `roletype | `tabpanel]
  and term = [ | `roletype | `term];
  type timer = [ | `roletype | `status | `timer]
  and toolbar = [ | `group | `roletype | `toolbar]
  and tooltip = [ | `roletype | `tooltip]
  and tree = [ | `group | `roletype | `tree];
  type treegrid = [ | `grid | `group | `roletype | `table | `tree | `treegrid]
  and treeitem = [ | `listitem | `option | `roletype | `treeitem];

  let from_aria: t('a) => Js.Dict.t(Declaredom.property);
};
module Global: {
  /**
     {{: https://html.spec.whatwg.org/multipage/dom.html#global-attributes} Global Attributes}
     ({{: https://www.w3.org/TR/html52/dom.html#global-attributes} W3C})
     */;

  module Value: {
    type autocapitalize = [
      | `characters
      | `none
      | `off
      | `on
      | `sentences
      | `words
    ];
    type dir = [ | `auto | `ltr | `rtl];
    type translate = [ | `no | `yes];
    type enterkeyhint = [
      | `done_
      | `enter
      | `go
      | `next
      | `previous
      | `search
      | `send
    ];
    type inputmode = [
      | `decimal
      | `email
      | `none
      | `numeric
      | `search
      | `tel
      | `text
      | `url
    ];
  };
  let _make:
    (
      ~accesskey: string=?,
      ~autocapitalize: string=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: string=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: string=?,
      ~draggable: string=?,
      ~enterkeyhint: string=?,
      ~hidden: string=?,
      ~id: string=?,
      ~inputmode: string=?,
      ~is: string=?,
      ~itemid: string=?,
      ~itemprop: string=?,
      ~itemref: string=?,
      ~itemscope: string=?,
      ~itemtype: string=?,
      ~lang: string=?,
      ~nonce: string=?,
      ~slot: string=?,
      ~spellcheck: string=?,
      ~style: Js.Dict.t(string)=?,
      ~tabindex: string=?,
      ~title: string=?,
      ~translate: string=?,
      unit
    ) =>
    t;

  let make:
    (
      ~accesskey: string=?,
      ~autocapitalize: Value.autocapitalize=?,
      ~class_name: string=?,
      ~class_set: Js.Dict.t(bool)=?,
      ~contenteditable: unit=?,
      ~dataset: Js.Dict.t(string)=?,
      ~dir: Value.dir=?,
      ~draggable: unit=?,
      ~enterkeyhint: Value.enterkeyhint=?,
      ~hidden: unit=?,
      ~id: string=?,
      ~inputmode: Value.inputmode=?,
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
      ~translate: Value.translate=?,
      unit
    ) =>
    t;
};
