type t('a);

module Internal = {
  type value('a) = {
    name: string,
    declaration:
      list(
        (list(Css_Selector.PseudoClass.t), Js.Dict.t(Css_Property.t('a))),
      ),
    media:
      list(
        (
          Css_Media.t,
          list(Css_Selector.PseudoClass.t),
          Js.Dict.t(Css_Property.t('a)),
        ),
      ),
  };

  module Convert = {
    external to_module: value('a) => t('a) = "%identity";
    external to_value: t('a) => value('a) = "%identity";
  };

  let show_pseudo = pseudoclasses =>
    (pseudoclasses |> List.map(Css_Selector.PseudoClass.show))
    ->(Util.join_with(""));

  let show_pseudo_and_declaration = ((pseudoclasses, declaration)) =>
    show_pseudo(pseudoclasses) ++ Css_Property.show_properties(declaration);

  let make_name = (media, declaration) => {
    let media' =
      media
      |> List.map(((media_t, pseudoclasses, declaration)) =>
           Css_Media.show(media_t)
           ++ show_pseudo_and_declaration((pseudoclasses, declaration))
         )
    and declaration' = declaration |> List.map(show_pseudo_and_declaration);

    let display = List.append(media', declaration')->(Util.join_with("\n"));

    "m" ++ Digest.to_hex @@ Digest.string @@ display;
  };

  let map = (fn, css_module) =>
    css_module |> Convert.to_value |> fn |> Convert.to_module;

  let collect = (declarations, (pseudoclasses, declaration)) => {
    let key = show_pseudo(pseudoclasses);
    let (_, entry) =
      declarations->(Js.Dict.get(key))
      |> Js.Option.getWithDefault((pseudoclasses, Js.Dict.empty()));

    declarations->(
                    Js.Dict.set(
                      key,
                      (
                        pseudoclasses,
                        Util.merge_all([|
                          Js.Dict.empty(),
                          entry,
                          declaration,
                        |]),
                      ),
                    )
                  );
  };

  let collect_media = (declarations, (media_t, pseudoclasses, declaration)) => {
    let key = Css_Media.show(media_t) ++ show_pseudo(pseudoclasses);
    let (_, _, entry) =
      declarations->(Js.Dict.get(key))
      |> Js.Option.getWithDefault((media_t, pseudoclasses, Js.Dict.empty()));

    declarations->(
                    Js.Dict.set(
                      key,
                      (
                        media_t,
                        pseudoclasses,
                        Util.merge_all([|
                          Js.Dict.empty(),
                          entry,
                          declaration,
                        |]),
                      ),
                    )
                  );
  };
};

let get_class = (~class_name=?, ~css_module=?, ()) =>
  switch (class_name, Belt.Option.map(css_module, Internal.Convert.to_value)) {
  | (Some(class_name'), Some({name})) => (class_name' ++ " " ++ name)->Some
  | (Some(_), None) => class_name
  | (None, Some({name})) => Some(name)
  | _ => None
  };

let to_display = css_module =>
  css_module
  |> Internal.map @@
  (
    ({name, declaration, media}) => {
      name,
      declaration:
        declaration
        |> List.map(((pseudoclasses, properties)) =>
             (
               pseudoclasses,
               properties
               |> Js.Dict.map((. e) =>
                    (e :> Css_Property.t(Css_Property.display))
                  ),
             )
           ),
      media:
        media
        |> List.map(((media_t, pseudoclasses, declaration)) =>
             (
               media_t,
               pseudoclasses,
               declaration
               |> Js.Dict.map((. e) =>
                    (e :> Css_Property.t(Css_Property.display))
                  ),
             )
           ),
    }
  );

let make = (~media=[], declaration): t([< Css_Property.display]) => {
  let declaration' = [([], declaration)]
  and media' =
    media
    |> List.map(((media_t, declaration)) => (media_t, [], declaration));

  Internal.Convert.to_module({
    name: Internal.make_name(media', declaration'),
    declaration: declaration',
    media: media',
  });
};

let make' = (~media=[], declaration): t([< Css_Property.display]) => {
  let declaration' =
    declaration
    |> List.map(((pseudoclasses, declaration)) =>
         (
           pseudoclasses
           |> List.map(pseudoclass =>
                (pseudoclass :> Css_Selector.PseudoClass.t)
              ),
           declaration,
         )
       )
  and media' =
    media
    |> List.map(((media_t, pseudoclasses, declaration)) =>
         (
           media_t,
           pseudoclasses
           |> List.map(pseudoclass =>
                (pseudoclass :> Css_Selector.PseudoClass.t)
              ),
           declaration,
         )
       );

  Internal.Convert.to_module({
    name: Internal.make_name(media', declaration'),
    declaration: declaration',
    media: media',
  });
};

let map = (f, css_module) =>
  css_module
  |> Internal.Convert.to_value
  |> (
    ({declaration, media}) => {
      let declaration' =
        declaration
        |> List.map(((pseudoclasses, declaration)) =>
             (pseudoclasses, f(declaration))
           )
      and media' =
        media
        |> List.map(((media_t, pseudoclasses, declaration)) =>
             (media_t, pseudoclasses, f(declaration))
           );

      {
        Internal.name: Internal.make_name(media', declaration'),
        declaration: declaration',
        media: media',
      };
    }
  )
  |> Internal.Convert.to_module;

let merge = (css_module_a, css_module_b) => {
  let {Internal.declaration: a, Internal.media: ma} =
    Internal.Convert.to_value(css_module_a)
  and {Internal.declaration: b, Internal.media: mb} =
    Internal.Convert.to_value(css_module_b);

  let declarations_map = Js.Dict.empty()
  and media_map = Js.Dict.empty();

  let _ = {
    a |> List.iter(Internal.collect(declarations_map));
    b |> List.iter(Internal.collect(declarations_map));
    ma |> List.iter(Internal.collect_media(media_map));
    mb |> List.iter(Internal.collect_media(media_map));
  };

  let declarations = declarations_map |> Js.Dict.values |> Array.to_list
  and media = media_map |> Js.Dict.values |> Array.to_list;

  make'(~media, declarations);
};

let class_name = css_module => {
  let {Internal.name} = Internal.Convert.to_value(css_module);

  name;
};

let show_declaration = (~indent=0, ~pseudoclasses=[], css_module, declaration) => {
  let indent' = Js.String.repeat(indent, "  ")
  and pseudoclasses' =
    (pseudoclasses |> List.map(Css_Selector.PseudoClass.show))
    ->(Util.join_with(""));

  indent'
  ++ "."
  ++ class_name(css_module)
  ++ pseudoclasses'
  ++ " {\n"
  ++ Css_Property.show_properties(~indent=indent + 1, declaration)
  ++ "\n"
  ++ indent'
  ++ "}";
};

let show_media = (~indent=0, css_module) => {
  let {Internal.media} = Internal.Convert.to_value(css_module);

  (
    media
    |> List.map(((media_t, pseudoclasses, declaration)) =>{
         let indent' = Js.String.repeat(indent, "  ");

         indent'
         ++ Css_Media.show(media_t)
         ++ " {\n"
         ++ show_declaration(
              ~indent=indent + 1,
              ~pseudoclasses,
              css_module,
              declaration,
            )
         ++ "\n"
         ++ indent'
         ++ "}";
       })
  )
  ->(Util.join_with("\n"));
};

let show_declaration = (~indent=?, css_module) => {
  let {Internal.declaration} = Internal.Convert.to_value(css_module);

  (
    declaration
    |> List.map(((pseudoclasses, declaration)) =>
         show_declaration(~indent?, ~pseudoclasses, css_module, declaration)
       )
  )
  ->(Util.join_with("\n"));
};

let show = (~indent=?, css_module) =>
  [show_declaration(~indent?, css_module), show_media(~indent?, css_module)]
  ->(Util.join_with("\n"))
  |> Js.String.trim;
