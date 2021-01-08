open BsTape;
open Test;
open! Html;

let _ = Jsdom.init();

let (tagName, outerHTML, ofNode) =
  Webapi.Dom.Element.(tagName, outerHTML, ofNode);

let to_element = x => x |> Html_Node.to_node |> ofNode |> Js.Option.getExn;

let tag_name = x =>
  x->Html_Node.to_node->ofNode->Js.Option.getExn->Webapi.Dom.Element.tagName;

test(~name="node - a") @@
(
  t => {
    {
      let element =
        a(
          ~aria=Html.Aria.link(~aria_label="foo", ()),
          ~href="http://www.w3.org",
          ~target=`blank,
          ~download=(),
          ~rel=`nofollow,
          ~rev=`bookmark,
          ~hreflang="en-US",
          ~_type="html",
          ~referrerpolicy=`no_referrer,
          [||],
        );

      t |> T.equal(tag_name(element), "A");
      t
      |> T.equal(Html_Node.show(element)) @@
      "<a href=\"http://www.w3.org\" target=\"_blank\" download=\"\" "
      ++ "rel=\"nofollow\" rev=\"bookmark\" hreflang=\"en-US\" type=\"html\" "
      ++ "referrerpolicy=\"no-referrer\" aria-label=\"foo\"></a>";
      t |> T.end_;
    };

    test(~name="node - area") @@
    (
      t => {
        {
          let element =
            area(
              ~aria=Aria.link(~aria_label="foo", ()),
              ~alt="foobar",
              ~coords=[123, 456],
              ~download=(),
              ~href="http://www.w3.org",
              ~hreflang="en-US",
              ~rel=`nofollow,
              ~shape=`circle,
              ~target=`blank,
              ~_type="html",
              ~referrerpolicy=`no_referrer,
              (),
            );

          t |> T.equal(tag_name(element), "AREA");
          t
          |> T.equal(Html_Node.show(element)) @@
          "<area alt=\"foobar\" coords=\"123,456\" download=\"\" "
          ++ "href=\"http://www.w3.org\" hreflang=\"en-US\" rel=\"nofollow\" "
          ++ "shape=\"circle\" target=\"_blank\" type=\"html\" "
          ++ "referrerpolicy=\"no-referrer\" aria-label=\"foo\">";
          t |> T.end_;
        };

        test(~name="node - audio") @@
        (
          t => {
            {
              let element =
                audio(
                  ~aria=Aria.application(~aria_label="foo", ()),
                  ~src="foo.wav",
                  ~crossorigin=`anonymous,
                  ~preload=`metadata,
                  ~autoplay=(),
                  ~loop=(),
                  ~muted=(),
                  ~controls=(),
                  [||],
                );

              t |> T.equal(tag_name(element), "AUDIO");
              t
              |> T.equal(Html_Node.show(element)) @@
              "<audio src=\"foo.wav\" crossorigin=\"anonymous\" preload=\"metadata\" "
              ++ "autoplay=\"\" loop=\"\" muted=\"\" controls=\"\" role=\"application\" "
              ++ "aria-label=\"foo\"></audio>";
              t |> T.end_;
            };

            test(~name="node - blockquote") @@
            (
              t => {
                {
                  let element = blockquote(~cite="foo", [||]);

                  t |> T.equal(tag_name(element), "BLOCKQUOTE");
                  t
                  |> T.equal(Html_Node.show(element)) @@
                  "<blockquote cite=\"foo\"></blockquote>";
                  t |> T.end_;
                };

                test(~name="node - button") @@
                (
                  t => {
                    {
                      let element =
                        button(
                          ~autofocus=(),
                          ~disabled=(),
                          ~form="foo",
                          ~formaction="foo.com",
                          ~formenctype=`x_www_form_urlencoded,
                          ~formmethod=`post,
                          ~formnovalidate=(),
                          ~formtarget=`blank,
                          ~formelements="bar",
                          ~name="baz",
                          ~_type=`submit,
                          ~value="qux",
                          [||],
                        );

                      t |> T.equal(tag_name(element), "BUTTON");
                      t
                      |> T.equal(Html_Node.show(element)) @@
                      "<button autofocus=\"\" disabled=\"\" form=\"foo\" formaction=\"foo.com\" "
                      ++ "formenctype=\"x_www_form_urlencoded\" formmethod=\"post\" "
                      ++ "formnovalidate=\"\" formtarget=\"_blank\" formelements=\"bar\" "
                      ++ "name=\"baz\" type=\"submit\" value=\"qux\"></button>";
                      t |> T.end_;
                    };

                    test(~name="node - canvas") @@
                    (
                      t => {
                        {
                          let element = canvas(~width=800, ~height=600, [||]);

                          t |> T.equal(tag_name(element), "CANVAS");
                          t
                          |> T.equal(Html_Node.show(element)) @@
                          "<canvas width=\"800\" height=\"600\"></canvas>";
                          t |> T.end_;
                        };

                        test(~name="node - colgroup") @@
                        (
                          t => {
                            {
                              let element = colgroup(~span=3, [||]);

                              t |> T.equal(tag_name(element), "COLGROUP");
                              t
                              |> T.equal(Html_Node.show(element)) @@
                              "<colgroup span=\"3\"></colgroup>";
                              t |> T.end_;
                            };

                            test(~name="node - data") @@
                            (
                              t => {
                                {
                                  let element = data(~value="foo", [||]);

                                  t |> T.equal(tag_name(element), "DATA");
                                  t
                                  |> T.equal(Html_Node.show(element)) @@
                                  "<data value=\"foo\"></data>";
                                  t |> T.end_;
                                };

                                test(~name="node - del") @@
                                (
                                  t => {
                                    {
                                      let date = Js.Date.make();
                                      let element =
                                        del(
                                          ~cite="foo",
                                          ~datetime=date,
                                          [||],
                                        );

                                      t |> T.equal(tag_name(element), "DEL");
                                      t
                                      |> T.equal(Html_Node.show(element)) @@
                                      "<del cite=\"foo\" datetime=\""
                                      ++ Js.Date.toISOString(date)
                                      ++ "\"></del>";
                                      t |> T.end_;
                                    };

                                    test(~name="node - details") @@
                                    (
                                      t => {
                                        {
                                          let element =
                                            details(~_open=(), [||]);

                                          t
                                          |> T.equal(
                                               tag_name(element),
                                               "DETAILS",
                                             );
                                          t
                                          |> T.equal(
                                               Html_Node.show(element),
                                             ) @@
                                          "<details open=\"\"></details>";
                                          t |> T.end_;
                                        };

                                        test(~name="node - dialog") @@
                                        (
                                          t => {
                                            {
                                              let element =
                                                dialog(~_open=(), [||]);

                                              t
                                              |> T.equal(
                                                   tag_name(element),
                                                   "DIALOG",
                                                 );
                                              t
                                              |> T.equal(
                                                   Html_Node.show(element),
                                                 ) @@
                                              "<dialog open=\"\"></dialog>";
                                              t |> T.end_;
                                            };

                                            test(~name="node - fieldset") @@
                                            (
                                              t => {
                                                {
                                                  let element =
                                                    fieldset(
                                                      ~form="foo",
                                                      ~name="bar",
                                                      ~disabled=(),
                                                      [||],
                                                    );

                                                  t
                                                  |> T.equal(
                                                       tag_name(element),
                                                       "FIELDSET",
                                                     );
                                                  t
                                                  |> T.equal(
                                                       Html_Node.show(
                                                         element,
                                                       ),
                                                     ) @@
                                                  "<fieldset disabled=\"\" form=\"foo\" name=\"bar\"></fieldset>";
                                                  t |> T.end_;
                                                };

                                                test(~name="node - form") @@
                                                (
                                                  t => {
                                                    {
                                                      let element =
                                                        form(
                                                          ~accept_charset=
                                                            "utf-8",
                                                          ~action="foo/",
                                                          ~autocomplete=`off,
                                                          ~enctype=`x_www_form_urlencoded,
                                                          ~_method=`post,
                                                          ~name="foo",
                                                          ~novalidate=(),
                                                          ~target=`blank,
                                                          [||],
                                                        );

                                                      t
                                                      |> T.equal(
                                                           tag_name(element),
                                                           "FORM",
                                                         );
                                                      t
                                                      |> T.equal(
                                                           Html_Node.show(
                                                             element,
                                                           ),
                                                         ) @@
                                                      "<form accept-charset=\"utf-8\" action=\"foo/\" autocomplete=\"off\" "
                                                      ++ "enctype=\"x_www_form_urlencoded\" method=\"post\" name=\"foo\" "
                                                      ++ "novalidate=\"\" target=\"_blank\"></form>";
                                                      t |> T.end_;
                                                    };

                                                    test(~name="node - html") @@
                                                    (
                                                      t => {
                                                        {
                                                          let element =
                                                            html(
                                                              ~manifest="foo",
                                                              [||],
                                                            );

                                                          t
                                                          |> T.equal(
                                                               tag_name(
                                                                 element,
                                                               ),
                                                               "HTML",
                                                             );
                                                          t
                                                          |> T.equal(
                                                               Html_Node.show(
                                                                 element,
                                                               ),
                                                             ) @@
                                                          "<html manifest=\"foo\"></html>";
                                                          t |> T.end_;
                                                        };

                                                        test(
                                                          ~name=
                                                            "node - iframe",
                                                        ) @@
                                                        (
                                                          t => {
                                                            {
                                                              let element =
                                                                iframe(
                                                                  ~src="foo",
                                                                  ~srcdoc=
                                                                    "bar",
                                                                  ~name="baz",
                                                                  ~sandbox=`allow_forms,
                                                                  ~allow="qux",
                                                                  ~allowfullscreen=
                                                                    (),
                                                                  ~allowpaymentrequest=
                                                                    (),
                                                                  ~width=800,
                                                                  ~height=600,
                                                                  ~referrerpolicy=`no_referrer,
                                                                  (),
                                                                );

                                                              t
                                                              |> T.equal(
                                                                   tag_name(
                                                                    element,
                                                                   ),
                                                                   "IFRAME",
                                                                 );
                                                              t
                                                              |> T.equal(
                                                                   Html_Node.show(
                                                                    element,
                                                                   ),
                                                                 ) @@
                                                              "<iframe src=\"foo\" srcdoc=\"bar\" name=\"baz\" sandbox=\"allow-forms\" "
                                                              ++ "allow=\"qux\" allowfullscreen=\"\" allowpaymentrequest=\"\" width=\"800\" "
                                                              ++ "height=\"600\" referrerpolicy=\"no-referrer\"></iframe>";
                                                              t |> T.end_;
                                                            };

                                                            test(
                                                              ~name=
                                                                "node - img",
                                                            ) @@
                                                            (
                                                              t => {
                                                                {
                                                                  let element =
                                                                    img(
                                                                    ~alt="foo",
                                                                    ~src="bar",
                                                                    ~srcset=
                                                                    "baz",
                                                                    ~sizes=
                                                                    "norf",
                                                                    ~crossorigin=`anonymous,
                                                                    ~usemap=
                                                                    "qux",
                                                                    ~ismap=(),
                                                                    ~width=800,
                                                                    ~height=
                                                                    600,
                                                                    ~referrerpolicy=`no_referrer,
                                                                    ~decoding=`sync,
                                                                    (),
                                                                    );

                                                                  t
                                                                  |>
                                                                  T.equal(
                                                                    tag_name(
                                                                    element,
                                                                    ),
                                                                    "IMG",
                                                                  );
                                                                  t
                                                                  |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                  "<img alt=\"foo\" src=\"bar\" srcset=\"baz\" sizes=\"norf\" "
                                                                  ++ "crossorigin=\"anonymous\" usemap=\"qux\" ismap=\"\" width=\"800\" "
                                                                  ++ "height=\"600\" referrerpolicy=\"no-referrer\" decoding=\"sync\">";
                                                                  t |> T.end_;
                                                                };

                                                                test(
                                                                  ~name=
                                                                    "node - input",
                                                                ) @@
                                                                (
                                                                  t => {
                                                                    {
                                                                    let element =
                                                                    input(
                                                                    ~_type=`text,
                                                                    ~alt="foo",
                                                                    ~autocomplete=`email,
                                                                    ~autofocus=
                                                                    (),
                                                                    ~checked=
                                                                    (),
                                                                    ~dirname=`ltr,
                                                                    ~disabled=
                                                                    (),
                                                                    ~form=
                                                                    "foo",
                                                                    ~formaction=
                                                                    "bar",
                                                                    ~formenctype=`x_www_form_urlencoded,
                                                                    ~formmethod=`post,
                                                                    ~formnovalidate=
                                                                    (),
                                                                    ~formtarget=`blank,
                                                                    ~height=
                                                                    600,
                                                                    ~list=
                                                                    "baz",
                                                                    ~max="100",
                                                                    ~maxlength=
                                                                    100,
                                                                    ~min="0",
                                                                    ~minlength=
                                                                    0,
                                                                    ~multiple=
                                                                    (),
                                                                    ~name=
                                                                    "qux",
                                                                    ~pattern=[%re
                                                                    "/[0-9]*/"
                                                                    ],
                                                                    ~readonly=
                                                                    (),
                                                                    ~required=
                                                                    (),
                                                                    ~size=200,
                                                                    ~src=
                                                                    "worble",
                                                                    ~step=`any,
                                                                    ~width=800,
                                                                    (),
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    tag_name(
                                                                    element,
                                                                    ),
                                                                    "INPUT",
                                                                    );
                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<input alt=\"foo\" autocomplete=\"email\" autofocus=\"\" checked=\"\" "
                                                                    ++ "dirname=\"ltr\" disabled=\"\" form=\"foo\" formaction=\"bar\" "
                                                                    ++ "formenctype=\"x_www_form_urlencoded\" formmethod=\"post\" "
                                                                    ++ "formnovalidate=\"\" formtarget=\"_blank\" height=\"600\" list=\"baz\" "
                                                                    ++ "max=\"100\" maxlength=\"100\" min=\"0\" minlength=\"0\" multiple=\"\" "
                                                                    ++ "name=\"qux\" pattern=\"[0-9]*\" readonly=\"\" required=\"\" size=\"200\" "
                                                                    ++ "src=\"worble\" step=\"any\" type=\"text\" width=\"800\">";
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - ins",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let date =
                                                                    Js.Date.make();
                                                                    let element =
                                                                    ins(
                                                                    ~cite=
                                                                    "foo",
                                                                    ~datetime=date,
                                                                    [||],
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    tag_name(
                                                                    element,
                                                                    ),
                                                                    "INS",
                                                                    );
                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<ins cite=\"foo\" datetime=\""
                                                                    ++
                                                                    Js.Date.toISOString(
                                                                    date,
                                                                    )
                                                                    ++ "\"></ins>";
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - label",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let element =
                                                                    label(
                                                                    ~_for=
                                                                    "foo",
                                                                    [||],
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    tag_name(
                                                                    element,
                                                                    ),
                                                                    "LABEL",
                                                                    );
                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<label for=\"foo\"></label>";
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - link",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let element =
                                                                    link(
                                                                    ~rel=`nofollow,
                                                                    ~href=
                                                                    "foobar.com",
                                                                    (),
                                                                    )
                                                                    and element2 =
                                                                    link(
                                                                    ~rel=`stylesheet,
                                                                    ~href=
                                                                    "foobar.com",
                                                                    (),
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    tag_name(
                                                                    element,
                                                                    ),
                                                                    "LINK",
                                                                    );
                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<link href=\"foobar.com\" rel=\"nofollow\">";
                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element2,
                                                                    ),
                                                                    ) @@
                                                                    "<link href=\"foobar.com\" rel=\"stylesheet\">";
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - meta",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let element =
                                                                    meta(
                                                                    ~name=
                                                                    "foo",
                                                                    ~http_equiv=`set_cookie,
                                                                    ~content=
                                                                    "bar",
                                                                    ~charset=
                                                                    "baz",
                                                                    (),
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    tag_name(
                                                                    element,
                                                                    ),
                                                                    "META",
                                                                    );
                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<meta name=\"foo\" http-equiv=\"set-cookie\" content=\"bar\" "
                                                                    ++ "charset=\"baz\">";
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - meter",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let element =
                                                                    meter(
                                                                    ~value=10.,
                                                                    ~min=0.,
                                                                    ~max=100.,
                                                                    ~low=5.,
                                                                    ~high=80.,
                                                                    [||],
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    tag_name(
                                                                    element,
                                                                    ),
                                                                    "METER",
                                                                    );
                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<meter value=\"10\" min=\"0\" max=\"100\" low=\"5\" high=\"80\"></meter>";
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - object",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let element =
                                                                    object_(
                                                                    ~data=
                                                                    "foo",
                                                                    ~_type=
                                                                    "bar",
                                                                    ~typemustmatch=
                                                                    (),
                                                                    ~name=
                                                                    "baz",
                                                                    ~usemap=
                                                                    "qux",
                                                                    ~form=
                                                                    "norf",
                                                                    ~width=800,
                                                                    ~height=
                                                                    600,
                                                                    [||],
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    tag_name(
                                                                    element,
                                                                    ),
                                                                    "OBJECT",
                                                                    );
                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<object data=\"foo\" type=\"bar\" typemustmatch=\"\" name=\"baz\" "
                                                                    ++ "usemap=\"qux\" form=\"norf\" width=\"800\" height=\"600\"></object>";
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - ol",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let element =
                                                                    ol(
                                                                    ~reversed=
                                                                    (),
                                                                    ~start=3,
                                                                    ~_type=`upper_roman,
                                                                    [||],
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    tag_name(
                                                                    element,
                                                                    ),
                                                                    "OL",
                                                                    );
                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<ol reversed=\"\" start=\"3\" type=\"upper-roman\"></ol>";
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - optgroup",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let element =
                                                                    optgroup(
                                                                    ~disabled=
                                                                    (),
                                                                    ~label=
                                                                    "foo",
                                                                    [||],
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    tag_name(
                                                                    element,
                                                                    ),
                                                                    "OPTGROUP",
                                                                    );
                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<optgroup disabled=\"\" label=\"foo\"></optgroup>";
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - option",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let element =
                                                                    option(
                                                                    ~disabled=
                                                                    (),
                                                                    ~label=
                                                                    "foo",
                                                                    ~selected=
                                                                    (),
                                                                    ~value=
                                                                    "foo",
                                                                    [||],
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    tag_name(
                                                                    element,
                                                                    ),
                                                                    "OPTION",
                                                                    );
                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<option disabled=\"\" label=\"foo\" selected=\"\" value=\"foo\"></option>";
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - output",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let element =
                                                                    output(
                                                                    ~_for=
                                                                    "foo",
                                                                    ~form=
                                                                    "bar",
                                                                    ~name=
                                                                    "baz",
                                                                    [||],
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    tag_name(
                                                                    element,
                                                                    ),
                                                                    "OUTPUT",
                                                                    );
                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<output for=\"foo\" form=\"bar\" name=\"baz\"></output>";
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - param",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let element =
                                                                    param(
                                                                    ~name=
                                                                    "foo",
                                                                    ~value=
                                                                    "bar",
                                                                    (),
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    tag_name(
                                                                    element,
                                                                    ),
                                                                    "PARAM",
                                                                    );
                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<param name=\"foo\" value=\"bar\">";
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - progress",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let element =
                                                                    progress(
                                                                    ~value=10.,
                                                                    ~max=100.,
                                                                    [||],
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    tag_name(
                                                                    element,
                                                                    ),
                                                                    "PROGRESS",
                                                                    );
                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<progress value=\"10\" max=\"100\"></progress>";
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - q",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let element =
                                                                    q(
                                                                    ~cite=
                                                                    "foo",
                                                                    [||],
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    tag_name(
                                                                    element,
                                                                    ),
                                                                    "Q",
                                                                    );
                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<q cite=\"foo\"></q>";
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - script",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let element =
                                                                    script(
                                                                    ~src="foo",
                                                                    ~_type=
                                                                    "bar",
                                                                    ~nomodule=
                                                                    (),
                                                                    ~async=(),
                                                                    ~defer=(),
                                                                    ~crossorigin=`anonymous,
                                                                    ~integrity=
                                                                    "baz",
                                                                    ~referrerpolicy=`no_referrer,
                                                                    (),
                                                                    )
                                                                    and element' =
                                                                    inline_script(
                                                                    "var foo = 123",
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    tag_name(
                                                                    element,
                                                                    ),
                                                                    "SCRIPT",
                                                                    );
                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<script src=\"foo\" type=\"bar\" nomodule=\"\" async=\"\" defer=\"\" "
                                                                    ++ "crossorigin=\"anonymous\" integrity=\"baz\" "
                                                                    ++ "referrerpolicy=\"no-referrer\"></script>";
                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    Html_Node.show(
                                                                    element',
                                                                    ),
                                                                    "<script>var foo = 123</script>",
                                                                    );
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - select",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let element =
                                                                    select(
                                                                    ~autocomplete=`email,
                                                                    ~autofocus=
                                                                    (),
                                                                    ~disabled=
                                                                    (),
                                                                    ~form=
                                                                    "foo",
                                                                    ~multiple=
                                                                    (),
                                                                    ~name=
                                                                    "bar",
                                                                    ~required=
                                                                    (),
                                                                    ~size=10,
                                                                    [||],
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    tag_name(
                                                                    element,
                                                                    ),
                                                                    "SELECT",
                                                                    );
                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<select autocomplete=\"email\" autofocus=\"\" disabled=\"\" form=\"foo\" "
                                                                    ++ "multiple=\"\" name=\"bar\" required=\"\" size=\"10\"></select>";
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - slot",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let element =
                                                                    slot(
                                                                    ~name=
                                                                    "foo",
                                                                    [||],
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    tag_name(
                                                                    element,
                                                                    ),
                                                                    "SLOT",
                                                                    );
                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<slot name=\"foo\"></slot>";
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - style",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let element =
                                                                    style(
                                                                    ~media=[
                                                                    Css_Media.Fn.max_width(
                                                                    `px(200.),
                                                                    )
                                                                    |> Css_Media.Fn.to_query,
                                                                    ],
                                                                    ".foo { color: red; }",
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    tag_name(
                                                                    element,
                                                                    ),
                                                                    "STYLE",
                                                                    );
                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<style media=\"@media (max-width: 200px)\">.foo { color: red; }</style>";
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - td",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let element =
                                                                    td(
                                                                    ~colspan=3,
                                                                    ~rowspan=2,
                                                                    ~headers=
                                                                    "foo",
                                                                    [||],
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    tag_name(
                                                                    element,
                                                                    ),
                                                                    "TD",
                                                                    );
                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<td colspan=\"3\" rowspan=\"2\" headers=\"foo\"></td>";
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - textarea",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let element =
                                                                    textarea(
                                                                    ~autocomplete=`email,
                                                                    ~autofocus=
                                                                    (),
                                                                    ~dirname=`rtl,
                                                                    ~disabled=
                                                                    (),
                                                                    ~form=
                                                                    "foo",
                                                                    ~maxlength=
                                                                    100,
                                                                    ~minlength=
                                                                    0,
                                                                    ~name=
                                                                    "bar",
                                                                    ~placeholder=
                                                                    "baz",
                                                                    ~readonly=
                                                                    (),
                                                                    ~required=
                                                                    (),
                                                                    ~rows=4,
                                                                    ~wrap=`soft,
                                                                    [||],
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    tag_name(
                                                                    element,
                                                                    ),
                                                                    "TEXTAREA",
                                                                    );
                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<textarea autocomplete=\"email\" autofocus=\"\" dirname=\"rtl\" "
                                                                    ++ "disabled=\"\" form=\"foo\" maxlength=\"100\" minlength=\"0\" name=\"bar\" "
                                                                    ++ "placeholder=\"baz\" readonly=\"\" required=\"\" rows=\"4\" wrap=\"soft\">"
                                                                    ++ "</textarea>";
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - th",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let element =
                                                                    th(
                                                                    ~colspan=3,
                                                                    ~rowspan=2,
                                                                    ~headers=
                                                                    "foo",
                                                                    ~scope=`row,
                                                                    ~abbr=
                                                                    "baz",
                                                                    [||],
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    tag_name(
                                                                    element,
                                                                    ),
                                                                    "TH",
                                                                    );
                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<th colspan=\"3\" rowspan=\"2\" headers=\"foo\" scope=\"row\" "
                                                                    ++ "abbr=\"baz\"></th>";
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - time",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let date =
                                                                    Js.Date.make();

                                                                    let element =
                                                                    time(
                                                                    ~datetime=date,
                                                                    [||],
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    tag_name(
                                                                    element,
                                                                    ),
                                                                    "TIME",
                                                                    );
                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<time datetime=\""
                                                                    ++
                                                                    Js.Date.toISOString(
                                                                    date,
                                                                    )
                                                                    ++ "\"></time>";
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - track",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let element =
                                                                    track(
                                                                    ~kind=`subtitles,
                                                                    ~src="foo",
                                                                    ~srclang=
                                                                    "bar",
                                                                    ~label=
                                                                    "baz",
                                                                    ~default=
                                                                    (),
                                                                    (),
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    tag_name(
                                                                    element,
                                                                    ),
                                                                    "TRACK",
                                                                    );
                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<track kind=\"subtitles\" src=\"foo\" srclang=\"bar\" label=\"baz\" "
                                                                    ++ "default=\"\">";
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - video",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let element =
                                                                    video(
                                                                    ~src="foo",
                                                                    ~crossorigin=`anonymous,
                                                                    ~poster=
                                                                    "bar",
                                                                    ~preload=`metadata,
                                                                    ~autoplay=
                                                                    (),
                                                                    ~playsinline=
                                                                    (),
                                                                    ~loop=(),
                                                                    ~muted=(),
                                                                    ~controls=
                                                                    (),
                                                                    ~width=800,
                                                                    ~height=
                                                                    600,
                                                                    [||],
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    tag_name(
                                                                    element,
                                                                    ),
                                                                    "VIDEO",
                                                                    );
                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<video src=\"foo\" crossorigin=\"anonymous\" poster=\"bar\" "
                                                                    ++ "preload=\"metadata\" autoplay=\"\" playsinline=\"\" loop=\"\" muted=\"\" "
                                                                    ++ "controls=\"\" width=\"800\" height=\"600\"></video>";
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - global attributes",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let element =
                                                                    span(
                                                                    ~accesskey=
                                                                    "foo",
                                                                    ~autocapitalize=`on,
                                                                    ~class_name=
                                                                    "bar",
                                                                    ~class_set=
                                                                    Js.Dict.fromList([
                                                                    (
                                                                    "baz",
                                                                    true,
                                                                    ),
                                                                    (
                                                                    "qux",
                                                                    false,
                                                                    ),
                                                                    ]),
                                                                    ~contenteditable=
                                                                    (),
                                                                    ~dataset=
                                                                    Js.Dict.fromList([
                                                                    (
                                                                    "a",
                                                                    "norf",
                                                                    ),
                                                                    (
                                                                    "b",
                                                                    "worble",
                                                                    ),
                                                                    ]),
                                                                    ~dir=`ltr,
                                                                    ~draggable=
                                                                    (),
                                                                    ~enterkeyhint=`search,
                                                                    ~hidden=(),
                                                                    ~id="fizz",
                                                                    ~inputmode=`text,
                                                                    ~is="fuzz",
                                                                    ~itemid=
                                                                    "wizzle",
                                                                    ~itemprop=
                                                                    "wuzzle",
                                                                    ~itemref=
                                                                    "wazzle",
                                                                    ~itemscope=
                                                                    (),
                                                                    ~itemtype=
                                                                    "foos",
                                                                    ~lang=
                                                                    "bars",
                                                                    ~nonce=
                                                                    "bazs",
                                                                    ~slot=
                                                                    "quxs",
                                                                    ~spellcheck=
                                                                    "norfs",
                                                                    ~tabindex=
                                                                    -1,
                                                                    ~title=
                                                                    "hello",
                                                                    ~translate=`yes,
                                                                    [||],
                                                                    );

                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<span accesskey=\"foo\" autocapitalize=\"on\" class=\"bar baz\" "
                                                                    ++ "contenteditable=\"\" data-a=\"norf\" data-b=\"worble\" dir=\"ltr\" "
                                                                    ++ "draggable=\"\" enterkeyhint=\"search\" hidden=\"\" id=\"fizz\" "
                                                                    ++ "inputmode=\"text\" is=\"fuzz\" itemid=\"wizzle\" itemprop=\"wuzzle\" "
                                                                    ++ "itemref=\"wazzle\" itemscope=\"\" itemtype=\"foos\" lang=\"bars\" "
                                                                    ++ "nonce=\"bazs\" slot=\"quxs\" spellcheck=\"norfs\" tabindex=\"-1\" "
                                                                    ++ "title=\"hello\" translate=\"yes\"></span>";
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - global aria attributes",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let element =
                                                                    span(
                                                                    ~aria=
                                                                    Html.Aria.roletype(
                                                                    ~aria_atomic=
                                                                    "a",
                                                                    ~aria_busy=
                                                                    (),
                                                                    ~aria_controls=
                                                                    "c",
                                                                    ~aria_current=`date,
                                                                    ~aria_describedby=
                                                                    "d",
                                                                    ~aria_details=
                                                                    "e",
                                                                    ~aria_disabled=
                                                                    (),
                                                                    ~aria_dropeffect=[
                                                                    `copy,
                                                                    `move,
                                                                    ],
                                                                    ~aria_errormessage=
                                                                    "f",
                                                                    ~aria_flowto=
                                                                    "g",
                                                                    ~aria_grabbed=
                                                                    (),
                                                                    ~aria_haspopup=`menu,
                                                                    ~aria_hidden=
                                                                    (),
                                                                    ~aria_invalid=`grammar,
                                                                    ~aria_keyshortcuts=
                                                                    "h",
                                                                    ~aria_label=
                                                                    "i",
                                                                    ~aria_labelledby=
                                                                    "j",
                                                                    ~aria_live=`polite,
                                                                    ~aria_owns=
                                                                    "k",
                                                                    ~aria_relevant=[
                                                                    `all,
                                                                    `text,
                                                                    ],
                                                                    ~aria_roledescription=
                                                                    "l",
                                                                    (),
                                                                    ),
                                                                    [||],
                                                                    );

                                                                    t
                                                                    |> T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    ) @@
                                                                    "<span aria-atomic=\"a\" aria-busy=\"\" aria-controls=\"c\" "
                                                                    ++ "aria-current=\"date\" aria-describedby=\"d\" aria-details=\"e\" "
                                                                    ++ "aria-disabled=\"\" aria-dropeffect=\"copy move\" aria-errormessage=\"f\" "
                                                                    ++ "aria-flowto=\"g\" aria-grabbed=\"\" aria-haspopup=\"menu\" "
                                                                    ++ "aria-hidden=\"\" aria-invalid=\"grammar\" aria-keyshortcuts=\"h\" "
                                                                    ++ "aria-label=\"i\" aria-labelledby=\"j\" aria-live=\"polite\" "
                                                                    ++ "aria-owns=\"k\" aria-relevant=\"all text\" "
                                                                    ++ "aria-roledescription=\"l\"></span>";
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - style",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let element =
                                                                    span(
                                                                    ~style=
                                                                    Css_Style.inline(
                                                                    ~color=`red,
                                                                    ~font_size=
                                                                    `px(12.),
                                                                    (),
                                                                    ),
                                                                    [||],
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    "<span style=\"color: red; font-size: 12px;\"></span>",
                                                                    );
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - css module",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let title =
                                                                    Css_Module.make @@
                                                                    Css_Style.inline(
                                                                    ~vertical_align=`initial,
                                                                    ~color=`black,
                                                                    (),
                                                                    );

                                                                    let element =
                                                                    span(
                                                                    ~css_module=title,
                                                                    [||],
                                                                    );

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    Html_Node.show(
                                                                    element,
                                                                    ),
                                                                    "<span class=\"m72adb46b0467f9510ed02cc8fe77c7dd\"></span>",
                                                                    );
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - text node",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    Html_Node.show_text @@
                                                                    text(
                                                                    "foo",
                                                                    ),
                                                                    "foo",
                                                                    );
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - fragment node",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    {
                                                                    let node =
                                                                    fragment([|
                                                                    span([|
                                                                    text(
                                                                    "foo",
                                                                    ),
                                                                    |]),
                                                                    strong([|
                                                                    text(
                                                                    "bar",
                                                                    ),
                                                                    |]),
                                                                    |]);

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    Html_Node.show_fragment(
                                                                    node,
                                                                    ),
                                                                    "<span>foo</span>\n<strong>bar</strong>",
                                                                    );
                                                                    t |> T.end_;
                                                                    };

                                                                    test(
                                                                    ~name=
                                                                    "node - show_doc",
                                                                    ) @@
                                                                    (
                                                                    t => {
                                                                    let doc =
                                                                    html([|
                                                                    body([|
                                                                    text(
                                                                    "hello world",
                                                                    ),
                                                                    |]),
                                                                    |]);

                                                                    t
                                                                    |>
                                                                    T.equal(
                                                                    Html_Node.show_doc(
                                                                    doc,
                                                                    ),
                                                                    "<!DOCTYPE html>\n<html><body>hello world</body></html>",
                                                                    );
                                                                    t |> T.end_;
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                    }
                                                                    );
                                                                  }
                                                                );
                                                              }
                                                            );
                                                          }
                                                        );
                                                      }
                                                    );
                                                  }
                                                );
                                              }
                                            );
                                          }
                                        );
                                      }
                                    );
                                  }
                                );
                              }
                            );
                          }
                        );
                      }
                    );
                  }
                );
              }
            );
          }
        );
      }
    );
  }
);
