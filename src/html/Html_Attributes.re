type t = Js.Dict.t(Declaredom.property);

module LinkType = {
  module Link = {
    [@bs.deriving jsConverter]
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

    let show = tToJs;
  };

  module Hyperlink = {
    [@bs.deriving jsConverter]
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

    let show = tToJs;
  };

  type t = [ Link.t | Hyperlink.t];

  let show: t => string = (
    fun
    | #Link.t as value => Link.show(value)
    | #Hyperlink.t as value => Hyperlink.show(value):
      t => string
  );
};

module Target = {
  [@bs.deriving jsConverter]
  type value = [ | `blank | `self | `parent | `top];

  type t = [ value | `browsing_context(string)];

  let show: t => string = (
    fun
    | #value as value => "_" ++ valueToJs(value)
    | `browsing_context(name) => name:
      t => string
  );
};

module ReferrerPolicy = {
  [@bs.deriving jsConverter]
  type t = [
    | [@bs.as "no-referrer"] `no_referrer
    | [@bs.as "no-referrer-when-downgrade"] `no_referrer_when_downgrade
    | [@bs.as "same-origin"] `same_origin
    | `origin
    | [@bs.as "strict-origin"] `strict_origin
    | [@bs.as "origin-when-cross-origin"] `origin_when_cross_origin
    | [@bs.as "strict-origin-when-cross-origin"]
      `strict_origin_when_cross_origin
    | [@bs.as "unsafe-url"] `unsafe_url
  ];

  let show = tToJs;
};

module CrossOrigin = {
  [@bs.deriving jsConverter]
  type t = [ | `anonymous | [@bs.as "use-credentials"] `use_credentials];

  let show = tToJs;
};

module AutoComplete = {
  [@bs.deriving jsConverter]
  type t = [
    | `on
    | `off
    | `name
    | [@bs.as "honorific-prefix"] `honorific_prefix
    | [@bs.as "given-name"] `given_name
    | [@bs.as "additional-name"] `additional_name
    | [@bs.as "family-name"] `family_name
    | [@bs.as "honorific-suffix"] `honorific_suffix
    | `nickname
    | [@bs.as "organization-title"] `organization_title
    | `username
    | [@bs.as "new-password"] `new_password
    | [@bs.as "current-password"] `current_password
    | `organization
    | [@bs.as "street-address"] `street_address
    | [@bs.as "address-line1"] `address_line1
    | [@bs.as "address-line2"] `address_line2
    | [@bs.as "address-line3"] `address_line3
    | [@bs.as "address-level1"] `address_level1
    | [@bs.as "address-level2"] `address_level2
    | [@bs.as "address-level3"] `address_level3
    | [@bs.as "address-level4"] `address_level4
    | `country
    | [@bs.as "country-name"] `country_name
    | [@bs.as "postal-code"] `postal_code
    | [@bs.as "cc-name"] `cc_name
    | [@bs.as "cc-given-name"] `cc_given_name
    | [@bs.as "cc-additional-name"] `cc_additional_name
    | [@bs.as "cc-family-name"] `cc_family_name
    | [@bs.as "cc-number"] `cc_number
    | [@bs.as "cc-exp"] `cc_exp
    | [@bs.as "cc-exp-month"] `cc_exp_month
    | [@bs.as "cc-exp-year"] `cc_exp_year
    | [@bs.as "cc-csc"] `cc_csc
    | [@bs.as "cc-type"] `cc_type
    | [@bs.as "transaction-currency"] `transaction_currency
    | [@bs.as "transaction-amount"] `transaction_amount
    | `language
    | `bday
    | [@bs.as "bday-day"] `bday_day
    | [@bs.as "bday-month"] `bday_month
    | [@bs.as "bday-year"] `bday_year
    | `sex
    | `url
    | `photo
    | `tel
    | [@bs.as "tel-country-code"] `tel_country_code
    | [@bs.as "tel-national"] `tel_national
    | [@bs.as "tel-area-code"] `tel_area_code
    | [@bs.as "tel-local"] `tel_local
    | [@bs.as "tel-local-prefix"] `tel_local_prefix
    | [@bs.as "tel-local-suffix"] `tel_local_suffix
    | [@bs.as "tel-extension"] `tel_extension
    | `email
    | `impp
  ];

  let show = tToJs;
};

module Form = {
  module Enctype = {
    [@bs.deriving jsConverter]
    type t = [ | `x_www_form_urlencoded | `form_data | `plain];

    let show = tToJs;
  };

  module Method = {
    [@bs.deriving jsConverter]
    type t = [ | `get | `post | `dialog];

    let show = tToJs;
  };
};

module Dirname = {
  [@bs.deriving jsConverter]
  type t = [ | `ltr | `rtl];

  let show = tToJs;
};

module Preload = {
  [@bs.deriving jsConverter]
  type t = [ | `none | `metadata | `auto];

  let show = tToJs;
};

module Aria = {
  type t(+'a);

  type roletype = [ | `roletype];

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

  type alert = [ | `alert | section]
  and dialog = [ | `dialog | window];
  type alertdialog = [ | `alertdialog | alert | dialog]
  and application = [ | `application | structure]
  and document = [ | `document | structure];
  type article = [ | `article | document]
  and banner = [ | `banner | landmark]
  and button = [ | `button | command]
  and cell = [ | `cell | section]
  and checkbox = [ | `checkbox | input];
  type gridcell = [ | `gridcell | cell | widget];
  type columnheader = [ | `columnheader | cell | gridcell | sectionhead]
  and group = [ | `group | section];
  type select = [ composite | group];
  type combobox = [ | `combobox | select]
  and complementary = [ | `complementary | landmark]
  and contentinfo = [ | `contentinfo | landmark]
  and definition = [ | `definition | section]
  and list = [ | `list | section];
  type directory = [ | `directory | list]
  and feed = [ | `feed | list]
  and figure = [ | `figure | section]
  and form = [ | `form | landmark];
  type table = [ | `table | section];
  type grid = [ | `grid | composite | table]
  and heading = [ | `heading | sectionhead]
  and img = [ | `img | section]
  and link = [ | `link | command]
  and listbox = [ | `listbox | select]
  and listitem = [ | `listitem | section]
  and log = [ | `log | section]
  and main = [ | `main | landmark]
  and marquee = [ | `marquee | section]
  and math = [ | `math | section]
  and menu = [ | `menu | select];
  type menubar = [ | `menubar | menu]
  and menuitem = [ | `menuitem | command];
  type menuitemcheckbox = [ | `menuitemcheckbox | menuitem | checkbox]
  and radio = [ | `radio | input];
  type menuitemradio = [ | `menuitemradio | menuitemcheckbox | radio]
  and navigation = [ | `navigation | landmark]
  and none = [ | `none]
  and note = [ | `note | section]
  and option = [ | `option | input]
  and presentation = [ | `presentation | structure]
  and progressbar = [ | `progressbar | range]
  and radiogroup = [ | `radiogroup | select]
  and region = [ | `region | landmark]
  and row = [ | `row | group | widget]
  and rowgroup = [ | `rowgroup | structure]
  and rowheader = [ | `rowheader | cell | gridcell | sectionhead]
  and scrollbar = [ | `scrollbar | range]
  and search = [ | `search | landmark]
  and separator = [ | `separator | structure | widget]
  and textbox = [ | `textbox | input];
  type searchbox = [ | `searchbox | textbox]
  and separatable = [ | `separatable | structure | widget]
  and slider = [ | `slider | input | range]
  and spinbutton = [ | `spinbutton | composite | input | range]
  and status = [ | `status | section]
  and switch_ = [ | `switch_ | checkbox]
  and tab = [ | `tab | sectionhead | widget]
  and tablist = [ | `tablist | composite]
  and tabpanel = [ | `tabpanel | section]
  and term = [ | `term | section];
  type timer = [ | `timer | status]
  and toolbar = [ | `toolbar | group]
  and tooltip = [ | `tooltip | section]
  and tree = [ | `tree | select];
  type treegrid = [ | `treegrid | grid | tree]
  and treeitem = [ | `treeitem | listitem | option];

  external from_aria: t(_) => Js.Dict.t(Declaredom.property) = "%identity";
};

module Global = {
  module Value = {
    [@bs.deriving jsConverter]
    type autocapitalize = [
      | `off
      | `none
      | `on
      | `sentences
      | `words
      | `characters
    ];

    [@bs.deriving jsConverter]
    type dir = [ | `rtl | `ltr | `auto];

    [@bs.deriving jsConverter]
    type translate = [ | `yes | `no];

    [@bs.deriving jsConverter]
    type enterkeyhint = [
      | `enter
      | [@bs.as "done"] `done_
      | `go
      | `next
      | `previous
      | `search
      | `send
    ];

    [@bs.deriving jsConverter]
    type inputmode = [
      | `none
      | `text
      | `tel
      | `url
      | `email
      | `numeric
      | `decimal
      | `search
    ];
  };

  [@bs.obj]
  external _make:
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

  let make =
      (
        ~accesskey=?,
        ~autocapitalize=?,
        ~class_name=?,
        ~class_set=?,
        ~contenteditable=?,
        ~dataset=?,
        ~dir=?,
        ~draggable=?,
        ~enterkeyhint=?,
        ~hidden=?,
        ~id=?,
        ~inputmode=?,
        ~is=?,
        ~itemid=?,
        ~itemprop=?,
        ~itemref=?,
        ~itemscope=?,
        ~itemtype=?,
        ~lang=?,
        ~nonce=?,
        ~slot=?,
        ~spellcheck=?,
        ~style=?,
        ~tabindex=?,
        ~title=?,
        ~translate=?,
        (),
      ) =>
    _make(
      ~accesskey?,
      ~autocapitalize=?
        Belt.Option.map(autocapitalize, Value.autocapitalizeToJs),
      ~class_name?,
      ~class_set?,
      ~contenteditable=?Belt.Option.map(contenteditable, Util.string_of_unit),
      ~dataset?,
      ~dir=?Belt.Option.map(dir, Value.dirToJs),
      ~draggable=?Belt.Option.map(draggable, Util.string_of_unit),
      ~enterkeyhint=?Belt.Option.map(enterkeyhint, Value.enterkeyhintToJs),
      ~hidden=?Belt.Option.map(hidden, Util.string_of_unit),
      ~id?,
      ~inputmode=?Belt.Option.map(inputmode, Value.inputmodeToJs),
      ~is?,
      ~itemid?,
      ~itemprop?,
      ~itemref?,
      ~itemscope=?Belt.Option.map(itemscope, Util.string_of_unit),
      ~itemtype?,
      ~lang?,
      ~nonce?,
      ~slot?,
      ~spellcheck?,
      ~style=?Belt.Option.map(style, Css_Property.show_dict),
      ~tabindex=?Belt.Option.map(tabindex, string_of_int),
      ~title?,
      ~translate=?Belt.Option.map(translate, Value.translateToJs),
      (),
    );
};
