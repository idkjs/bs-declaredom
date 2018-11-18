type 'a t

(* TODO: hide *)
external to_dict: 'a t -> 'a Js.Dict.t = "%identity"

(* TODO: this should have all styles that apply to non-replaced elements *)
external non_replaced:
  ?backgroundAttachment:Css.Property.background_attachment ->
  ?backgroundColor:Css.Property.background_color ->
  unit ->
  Css.Property.non_replaced t = "" [@@bs.obj]


(* TODO: this should have all styles that apply to replaced elements *)
external replaced:
  ?height:Css.Property.height ->
  unit ->
  Css.Property.replaced t = "" [@@bs.obj]
