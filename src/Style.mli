type 'a t = 'a Css_Property.t Js.Dict.t
val show_dict : [< Css_Property.display ] t -> string Js.Dict.t
val to_display :
  [< Css_Property.display ] t ->
  Css_Property.display t
val merge :
  ([< Css_Property.display ] as 'a) t ->
  ([< Css_Property.display ] as 'a) t ->
  ([< Css_Property.display ] as 'a) t

val background :
  ?color:Css_Value.Background.Color.t ->
  ?image:Css_Value.Background.Image.t ->
  ?repeat:Css_Value.Background.Repeat.t ->
  ?attachment:Css_Value.Background.Attachment.t ->
  ?position:Css_Value.Background.Position.t ->
  unit -> [> Css_Property.background ] Css_Property.t
val borderTop :
  ?width:Css_Value.Border.Width.t ->
  ?style:Css_Value.Border.Style.t ->
  ?color:Css_Value.Border.Color.t ->
  unit -> [> Css_Property.border_top ] Css_Property.t
val borderRight :
  ?width:Css_Value.Border.Width.t ->
  ?style:Css_Value.Border.Style.t ->
  ?color:Css_Value.Border.Color.t ->
  unit -> [> Css_Property.border_right ] Css_Property.t
val borderBottom :
  ?width:Css_Value.Border.Width.t ->
  ?style:Css_Value.Border.Style.t ->
  ?color:Css_Value.Border.Color.t ->
  unit -> [> Css_Property.border_bottom ] Css_Property.t
val borderLeft :
  ?width:Css_Value.Border.Width.t ->
  ?style:Css_Value.Border.Style.t ->
  ?color:Css_Value.Border.Color.t ->
  unit -> [> Css_Property.border_left ] Css_Property.t
val border :
  ?width:Css_Value.Border.Width.t ->
  ?style:Css_Value.Border.Style.t ->
  ?color:Css_Value.Border.Color.t ->
  unit -> [> Css_Property.border ] Css_Property.t
val font :
  ?style:Css_Value.Font.Style.t ->
  ?variant:Css_Value.Font.Variant.t ->
  ?weight:Css_Value.Font.Weight.t ->
  ?line_height:Css_Value.LineHeight.t ->
  Css_Value.Font.Size.t ->
  Css_Value.Font.Family.t ->
  [> Css_Property.font] Css_Property.t
val flex :
  ?grow:float ->
  ?shrink:float ->
  ?basis:Css_Value.LengthPercent.t ->
  unit -> [> Css_Property.flex ] Css_Property.t
val listStyle :
  ?type_:Css_Value.ListStyle.Type.t ->
  ?position:Css_Value.ListStyle.Position.t ->
  ?image:Css_Value.ListStyle.Image.t ->
  unit -> [> Css_Property.list_style ] Css_Property.t
val margin :
  top:Css_Value.LengthPercent.t ->
  right:Css_Value.LengthPercent.t ->
  bottom:Css_Value.LengthPercent.t ->
  left:Css_Value.LengthPercent.t ->
  [> Css_Property.margin ] Css_Property.t
val outline :
  ?color:Css_Value.Outline.Color.t ->
  ?style:Css_Value.Outline.Style.t ->
  ?width:Css_Value.Outline.Width.t ->
  unit -> [> Css_Property.outline ] Css_Property.t
val padding :
  top:Css_Value.LengthPercent.t ->
  right:Css_Value.LengthPercent.t ->
  bottom:Css_Value.LengthPercent.t ->
  left:Css_Value.LengthPercent.t ->
  [> Css_Property.padding ] Css_Property.t
module Group :
  sig
    val aligns :
      ?alignContent:Css_Properties.AlignContent.Value.t ->
      ?alignItems:Css_Properties.AlignItems.Value.t ->
      ?alignSelf:Css_Properties.AlignSelf.Value.t ->
      unit -> Css_Property.aligns t
    val backgrounds :
      ?backgroundAttachment:Css_Value.Background.Attachment.t ->
      ?backgroundColor:Css_Value.Background.Color.t ->
      ?backgroundImage:Css_Value.Background.Image.t ->
      ?backgroundPosition:Css_Value.Background.Position.t ->
      ?backgroundRepeat:Css_Value.Background.Repeat.t ->
      ?background:Css_Property.background Css_Property.t ->
      unit -> Css_Property.backgrounds t
    val borders :
      ?borderTop:Css_Property.border_top Css_Property.t ->
      ?borderRight:Css_Property.border_right Css_Property.t ->
      ?borderBottom:Css_Property.border_bottom Css_Property.t ->
      ?borderLeft:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      unit -> Css_Property.borders t
    val border_colors :
      ?borderTopColor:Css_Value.Border.Color.t ->
      ?borderRightColor:Css_Value.Border.Color.t ->
      ?borderBottomColor:Css_Value.Border.Color.t ->
      ?borderLeftColor:Css_Value.Border.Color.t ->
      ?borderColor:Css_Value.Border.Color.t ->
      unit -> Css_Property.border_colors t
    val border_styles :
      ?borderTopStyle:Css_Value.Border.Style.t ->
      ?borderRightStyle:Css_Value.Border.Style.t ->
      ?borderBottomStyle:Css_Value.Border.Style.t ->
      ?borderLeftStyle:Css_Value.Border.Style.t ->
      ?borderStyle:Css_Value.Border.Style.t ->
      unit -> Css_Property.border_styles t
    val border_widths :
      ?borderTopWidth:Css_Value.Border.Width.t ->
      ?borderRightWidth:Css_Value.Border.Width.t ->
      ?borderBottomWidth:Css_Value.Border.Width.t ->
      ?borderLeftWidth:Css_Value.Border.Width.t ->
      ?borderWidth:Css_Value.Border.Width.t ->
      unit -> Css_Property.border_widths t
    val heights :
      ?height:Css_Value.LengthPercent.t ->
      ?minHeight:Css_Value.LengthPercent.t ->
      ?maxHeight:Css_Value.LengthPercent.t -> unit -> Css_Property.heights t
    val cues :
      ?cueAfter:Css_Value.UriOrNone.t ->
      ?cueBefore:Css_Value.UriOrNone.t ->
      ?cue:Css_Properties.Cue.Value.t -> unit -> Css_Property.cues t
    val flexs :
      ?flex:Css_Property.flex Css_Property.t ->
      ?flexBasis:Css_Value.LengthPercent.t ->
      ?flexDirection:Css_Value.Flex.Direction.t ->
      ?flexFlow:Css_Properties.FlexFlow.Value.t ->
      ?flexGrow:float ->
      ?flexShrink:float ->
      ?flexWrap:Css_Value.Flex.Wrap.t -> unit -> Css_Property.flexs t
    val fonts :
      ?fontFamily:Css_Value.Font.Family.t ->
      ?fontSize:Css_Value.Font.Size.t ->
      ?fontStyle:Css_Value.Font.Style.t ->
      ?fontVariant:Css_Value.Font.Variant.t ->
      ?fontWeight:Css_Value.Font.Weight.t ->
      ?font:Css_Property.font Css_Property.t -> unit -> Css_Property.fonts t
    val margins :
      ?margin:Css_Property.margin Css_Property.t ->
      ?marginTop:Css_Value.LengthPercent.t ->
      ?marginRight:Css_Value.LengthPercent.t ->
      ?marginBottom:Css_Value.LengthPercent.t ->
      ?marginLeft:Css_Value.LengthPercent.t -> unit -> Css_Property.margins t
    val paddings :
      ?padding:Css_Property.padding Css_Property.t ->
      ?paddingTop:Css_Value.LengthPercent.t ->
      ?paddingRight:Css_Value.LengthPercent.t ->
      ?paddingBottom:Css_Value.LengthPercent.t ->
      ?paddingLeft:Css_Value.LengthPercent.t ->
      unit -> Css_Property.paddings t
    val list_styles :
      ?listStyleImage:Css_Value.ListStyle.Image.t ->
      ?listStylePosition:Css_Value.ListStyle.Position.t ->
      ?listStyleType:Css_Value.ListStyle.Type.t ->
      ?listStyle:Css_Property.list_style Css_Property.t ->
      unit -> Css_Property.list_styles t
    val outlines :
      ?outlineColor:Css_Value.Outline.Color.t ->
      ?outlineStyle:Css_Value.Outline.Style.t ->
      ?outlineWidth:Css_Value.Outline.Width.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      unit -> Css_Property.outlines t
    val page_breaks :
      ?pageBreakBefore:Css_Value.PageBreak.t ->
      ?pageBreakAfter:Css_Value.PageBreak.t ->
      ?pageBreakInside:Css_Value.PageBreak.inside ->
      unit -> Css_Property.page_breaks t
    val page_breaks_inside :
      ?orphans:Css_Value.BreakInside.t ->
      ?widows:Css_Value.BreakInside.t ->
      unit -> Css_Property.page_break_inside t
    val pauses :
      ?pauseAfter:Css_Value.TimePercent.t ->
      ?pauseBefore:Css_Value.TimePercent.t ->
      ?pause:Css_Properties.Pause.Value.t -> unit -> Css_Property.pauses t
    val positions :
      ?top:Css_Value.LengthPercent.t ->
      ?right:Css_Value.LengthPercent.t ->
      ?bottom:Css_Value.LengthPercent.t ->
      ?left:Css_Value.LengthPercent.t -> unit -> Css_Property.positions t
    val speaks :
      ?speakHeader:Css_Properties.SpeakHeader.Value.t ->
      ?speakNumeral:Css_Properties.SpeakNumeral.Value.t ->
      ?speakPunctuation:Css_Properties.SpeakPunctuation.Value.t ->
      ?speak:Css_Properties.Speak.Value.t -> unit -> Css_Property.speaks t
    val texts :
      ?textDecoration:Css_Properties.TextDecoration.Value.t ->
      ?textTransform:Css_Properties.TextTransform.Value.t ->
      ?textAlign:Css_Properties.TextAlign.Value.t ->
      ?textIndent:Css_Value.LengthPercent.t -> unit -> Css_Property.texts t
    val widths :
      ?width:Css_Value.LengthPercent.t ->
      ?minWidth:Css_Value.LengthPercent.t ->
      ?maxWidth:Css_Value.LengthPercent.t -> unit -> Css_Property.widths t
  end
module MediaGroup :
  sig
    val aural :
      ?azimuth:Css_Properties.Azimuth.Value.t ->
      ?cueAfter:Css_Value.UriOrNone.t ->
      ?cueBefore:Css_Value.UriOrNone.t ->
      ?cue:Css_Properties.Cue.Value.t ->
      ?elevation:Css_Properties.Elevation.Value.t ->
      ?pauseAfter:Css_Value.TimePercent.t ->
      ?pauseBefore:Css_Value.TimePercent.t ->
      ?pause:Css_Properties.Pause.Value.t ->
      ?pitchRange:Css_Properties.PitchRange.Value.t ->
      ?pitch:Css_Properties.Pitch.Value.t ->
      ?playDuring:Css_Properties.PlayDuring.Value.t ->
      ?richness:Css_Properties.Richness.Value.t ->
      ?speakHeader:Css_Properties.SpeakHeader.Value.t ->
      ?speakNumeral:Css_Properties.SpeakNumeral.Value.t ->
      ?speakPunctuation:Css_Properties.SpeakPunctuation.Value.t ->
      ?speak:Css_Properties.Speak.Value.t ->
      ?speechRate:Css_Properties.SpeechRate.Value.t ->
      ?stress:Css_Properties.Stress.Value.t ->
      ?voiceFamily:Css_Properties.VoiceFamily.Value.t ->
      ?volume:Css_Properties.Volume.Value.t ->
      unit -> Css_Property.MediaGroup.aural t
    val interactive :
      ?cursor:Css_Properties.Cursor.Value.t ->
      ?outlineColor:Css_Value.Outline.Color.t ->
      ?outlineStyle:Css_Value.Outline.Style.t ->
      ?outlineWidth:Css_Value.Outline.Width.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      unit -> Css_Property.MediaGroup.interactive t
    val visual :
      ?alignContent:Css_Properties.AlignContent.Value.t ->
      ?alignItems:Css_Properties.AlignItems.Value.t ->
      ?alignSelf:Css_Properties.AlignSelf.Value.t ->
      ?backgroundAttachment:Css_Value.Background.Attachment.t ->
      ?backgroundColor:Css_Value.Background.Color.t ->
      ?backgroundImage:Css_Value.Background.Image.t ->
      ?backgroundPosition:Css_Value.Background.Position.t ->
      ?backgroundRepeat:Css_Value.Background.Repeat.t ->
      ?background:Css_Property.background Css_Property.t ->
      ?borderCollapse:Css_Properties.BorderCollapse.Value.t ->
      ?borderTopColor:Css_Value.Border.Color.t ->
      ?borderRightColor:Css_Value.Border.Color.t ->
      ?borderBottomColor:Css_Value.Border.Color.t ->
      ?borderLeftColor:Css_Value.Border.Color.t ->
      ?borderColor:Css_Value.Border.Color.t ->
      ?borderSpacing:Css_Properties.BorderSpacing.Value.t ->
      ?borderTopStyle:Css_Value.Border.Style.t ->
      ?borderRightStyle:Css_Value.Border.Style.t ->
      ?borderBottomStyle:Css_Value.Border.Style.t ->
      ?borderLeftStyle:Css_Value.Border.Style.t ->
      ?borderStyle:Css_Value.Border.Style.t ->
      ?borderTopWidth:Css_Value.Border.Width.t ->
      ?borderRightWidth:Css_Value.Border.Width.t ->
      ?borderBottomWidth:Css_Value.Border.Width.t ->
      ?borderLeftWidth:Css_Value.Border.Width.t ->
      ?borderWidth:Css_Value.Border.Width.t ->
      ?borderTop:Css_Property.border_top Css_Property.t ->
      ?borderRight:Css_Property.border_right Css_Property.t ->
      ?borderBottom:Css_Property.border_bottom Css_Property.t ->
      ?borderLeft:Css_Property.border_left Css_Property.t ->
      ?border:Css_Property.border Css_Property.t ->
      ?captionSide:Css_Properties.CaptionSide.Value.t ->
      ?clear:Css_Properties.Clear.Value.t ->
      ?clip:Css_Properties.Clip.Value.t ->
      ?color:Css_Properties.Color.Value.t ->
      ?cursor:Css_Properties.Cursor.Value.t ->
      ?direction:Css_Properties.Direction.Value.t ->
      ?emptyCells:Css_Properties.EmptyCells.Value.t ->
      ?flex:Css_Property.flex Css_Property.t ->
      ?flexBasis:Css_Value.LengthPercent.t ->
      ?flexDirection:Css_Value.Flex.Direction.t ->
      ?flexFlow:Css_Properties.FlexFlow.Value.t ->
      ?flexGrow:float ->
      ?flexShrink:float ->
      ?flexWrap:Css_Value.Flex.Wrap.t ->
      ?float:Css_Properties.Float.Value.t ->
      ?fontFamily:Css_Value.Font.Family.t ->
      ?fontSize:Css_Value.Font.Size.t ->
      ?fontStyle:Css_Value.Font.Style.t ->
      ?fontVariant:Css_Value.Font.Variant.t ->
      ?fontWeight:Css_Value.Font.Weight.t ->
      ?font:Css_Property.font Css_Property.t ->
      ?height:Css_Value.LengthPercent.t ->
      ?minHeight:Css_Value.LengthPercent.t ->
      ?maxHeight:Css_Value.LengthPercent.t ->
      ?justifyContent:Css_Properties.JustifyContent.Value.t ->
      ?letterSpacing:Css_Properties.LetterSpacing.Value.t ->
      ?lineHeight:Css_Value.LineHeight.t ->
      ?listStyleImage:Css_Value.ListStyle.Image.t ->
      ?listStylePosition:Css_Value.ListStyle.Position.t ->
      ?listStyleType:Css_Value.ListStyle.Type.t ->
      ?listStyle:Css_Property.list_style Css_Property.t ->
      ?margin:Css_Property.margin Css_Property.t ->
      ?marginTop:Css_Value.LengthPercent.t ->
      ?marginRight:Css_Value.LengthPercent.t ->
      ?marginBottom:Css_Value.LengthPercent.t ->
      ?marginLeft:Css_Value.LengthPercent.t ->
      ?order:int ->
      ?outlineColor:Css_Value.Outline.Color.t ->
      ?outlineStyle:Css_Value.Outline.Style.t ->
      ?outlineWidth:Css_Value.Outline.Width.t ->
      ?outline:Css_Property.outline Css_Property.t ->
      ?overflow:Css_Properties.Overflow.Value.t ->
      ?padding:Css_Property.padding Css_Property.t ->
      ?paddingTop:Css_Value.LengthPercent.t ->
      ?paddingRight:Css_Value.LengthPercent.t ->
      ?paddingBottom:Css_Value.LengthPercent.t ->
      ?paddingLeft:Css_Value.LengthPercent.t ->
      ?pageBreakBefore:Css_Value.PageBreak.t ->
      ?pageBreakAfter:Css_Value.PageBreak.t ->
      ?pageBreakInside:Css_Value.PageBreak.inside ->
      ?orphans:Css_Value.BreakInside.t ->
      ?widows:Css_Value.BreakInside.t ->
      ?top:Css_Value.LengthPercent.t ->
      ?right:Css_Value.LengthPercent.t ->
      ?bottom:Css_Value.LengthPercent.t ->
      ?left:Css_Value.LengthPercent.t ->
      ?tableLayout:Css_Properties.TableLayout.Value.t ->
      ?textDecoration:Css_Properties.TextDecoration.Value.t ->
      ?textTransform:Css_Properties.TextTransform.Value.t ->
      ?textAlign:Css_Properties.TextAlign.Value.t ->
      ?textIndent:Css_Value.LengthPercent.t ->
      ?unicodeBidi:Css_Properties.UnicodeBidi.Value.t ->
      ?verticalAlign:Css_Properties.VerticalAlign.Value.t ->
      ?visibility:Css_Properties.Visibility.Value.t ->
      ?whiteSpace:Css_Properties.WhiteSpace.Value.t ->
      ?width:Css_Value.LengthPercent.t ->
      ?minWidth:Css_Value.LengthPercent.t ->
      ?maxWidth:Css_Value.LengthPercent.t ->
      ?wordSpacing:Css_Properties.WordSpacing.Value.t ->
      ?zIndex:int -> unit -> Css_Property.MediaGroup.visual t
    val paged :
      ?margin:Css_Property.margin Css_Property.t ->
      ?marginTop:Css_Value.LengthPercent.t ->
      ?marginRight:Css_Value.LengthPercent.t ->
      ?marginBottom:Css_Value.LengthPercent.t ->
      ?marginLeft:Css_Value.LengthPercent.t ->
      ?pageBreakBefore:Css_Value.PageBreak.t ->
      ?pageBreakAfter:Css_Value.PageBreak.t ->
      ?pageBreakInside:Css_Value.PageBreak.inside ->
      ?orphans:Css_Value.BreakInside.t ->
      ?widows:Css_Value.BreakInside.t ->
      unit -> Css_Property.MediaGroup.paged t
  end
val any :
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?backgroundAttachment:Css_Value.Background.Attachment.t ->
  ?backgroundColor:Css_Value.Background.Color.t ->
  ?backgroundImage:Css_Value.Background.Image.t ->
  ?backgroundPosition:Css_Value.Background.Position.t ->
  ?backgroundRepeat:Css_Value.Background.Repeat.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?borderTopColor:Css_Value.Border.Color.t ->
  ?borderRightColor:Css_Value.Border.Color.t ->
  ?borderBottomColor:Css_Value.Border.Color.t ->
  ?borderLeftColor:Css_Value.Border.Color.t ->
  ?borderColor:Css_Value.Border.Color.t ->
  ?borderTopStyle:Css_Value.Border.Style.t ->
  ?borderRightStyle:Css_Value.Border.Style.t ->
  ?borderBottomStyle:Css_Value.Border.Style.t ->
  ?borderLeftStyle:Css_Value.Border.Style.t ->
  ?borderStyle:Css_Value.Border.Style.t ->
  ?borderTopWidth:Css_Value.Border.Width.t ->
  ?borderRightWidth:Css_Value.Border.Width.t ->
  ?borderBottomWidth:Css_Value.Border.Width.t ->
  ?borderLeftWidth:Css_Value.Border.Width.t ->
  ?borderWidth:Css_Value.Border.Width.t ->
  ?borderTop:Css_Property.border_top Css_Property.t ->
  ?borderRight:Css_Property.border_right Css_Property.t ->
  ?borderBottom:Css_Property.border_bottom Css_Property.t ->
  ?borderLeft:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cueAfter:Css_Value.UriOrNone.t ->
  ?cueBefore:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?fontFamily:Css_Value.Font.Family.t ->
  ?fontSize:Css_Value.Font.Size.t ->
  ?fontStyle:Css_Value.Font.Style.t ->
  ?fontVariant:Css_Value.Font.Variant.t ->
  ?fontWeight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letterSpacing:Css_Properties.LetterSpacing.Value.t ->
  ?lineHeight:Css_Value.LineHeight.t ->
  ?outlineColor:Css_Value.Outline.Color.t ->
  ?outlineStyle:Css_Value.Outline.Style.t ->
  ?outlineWidth:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pauseAfter:Css_Value.TimePercent.t ->
  ?pauseBefore:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitchRange:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?playDuring:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speakNumeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speakPunctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speechRate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?textDecoration:Css_Properties.TextDecoration.Value.t ->
  ?textTransform:Css_Properties.TextTransform.Value.t ->
  ?unicodeBidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voiceFamily:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?whiteSpace:Css_Properties.WhiteSpace.Value.t ->
  ?wordSpacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.any t
val block :
  ?clear:Css_Properties.Clear.Value.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?minHeight:Css_Value.LengthPercent.t ->
  ?maxHeight:Css_Value.LengthPercent.t ->
  ?margin:Css_Property.margin Css_Property.t ->
  ?marginTop:Css_Value.LengthPercent.t ->
  ?marginRight:Css_Value.LengthPercent.t ->
  ?marginBottom:Css_Value.LengthPercent.t ->
  ?marginLeft:Css_Value.LengthPercent.t ->
  ?overflow:Css_Properties.Overflow.Value.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?paddingTop:Css_Value.LengthPercent.t ->
  ?paddingRight:Css_Value.LengthPercent.t ->
  ?paddingBottom:Css_Value.LengthPercent.t ->
  ?paddingLeft:Css_Value.LengthPercent.t ->
  ?pageBreakBefore:Css_Value.PageBreak.t ->
  ?pageBreakAfter:Css_Value.PageBreak.t ->
  ?pageBreakInside:Css_Value.PageBreak.inside ->
  ?orphans:Css_Value.BreakInside.t ->
  ?widows:Css_Value.BreakInside.t ->
  ?textAlign:Css_Properties.TextAlign.Value.t ->
  ?textIndent:Css_Value.LengthPercent.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?minWidth:Css_Value.LengthPercent.t ->
  ?maxWidth:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?backgroundAttachment:Css_Value.Background.Attachment.t ->
  ?backgroundColor:Css_Value.Background.Color.t ->
  ?backgroundImage:Css_Value.Background.Image.t ->
  ?backgroundPosition:Css_Value.Background.Position.t ->
  ?backgroundRepeat:Css_Value.Background.Repeat.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?borderTopColor:Css_Value.Border.Color.t ->
  ?borderRightColor:Css_Value.Border.Color.t ->
  ?borderBottomColor:Css_Value.Border.Color.t ->
  ?borderLeftColor:Css_Value.Border.Color.t ->
  ?borderColor:Css_Value.Border.Color.t ->
  ?borderTopStyle:Css_Value.Border.Style.t ->
  ?borderRightStyle:Css_Value.Border.Style.t ->
  ?borderBottomStyle:Css_Value.Border.Style.t ->
  ?borderLeftStyle:Css_Value.Border.Style.t ->
  ?borderStyle:Css_Value.Border.Style.t ->
  ?borderTopWidth:Css_Value.Border.Width.t ->
  ?borderRightWidth:Css_Value.Border.Width.t ->
  ?borderBottomWidth:Css_Value.Border.Width.t ->
  ?borderLeftWidth:Css_Value.Border.Width.t ->
  ?borderWidth:Css_Value.Border.Width.t ->
  ?borderTop:Css_Property.border_top Css_Property.t ->
  ?borderRight:Css_Property.border_right Css_Property.t ->
  ?borderBottom:Css_Property.border_bottom Css_Property.t ->
  ?borderLeft:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cueAfter:Css_Value.UriOrNone.t ->
  ?cueBefore:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?fontFamily:Css_Value.Font.Family.t ->
  ?fontSize:Css_Value.Font.Size.t ->
  ?fontStyle:Css_Value.Font.Style.t ->
  ?fontVariant:Css_Value.Font.Variant.t ->
  ?fontWeight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letterSpacing:Css_Properties.LetterSpacing.Value.t ->
  ?lineHeight:Css_Value.LineHeight.t ->
  ?outlineColor:Css_Value.Outline.Color.t ->
  ?outlineStyle:Css_Value.Outline.Style.t ->
  ?outlineWidth:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pauseAfter:Css_Value.TimePercent.t ->
  ?pauseBefore:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitchRange:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?playDuring:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speakNumeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speakPunctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speechRate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?textDecoration:Css_Properties.TextDecoration.Value.t ->
  ?textTransform:Css_Properties.TextTransform.Value.t ->
  ?unicodeBidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voiceFamily:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?whiteSpace:Css_Properties.WhiteSpace.Value.t ->
  ?wordSpacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.block t
val flexbox :
  ?alignContent:Css_Properties.AlignContent.Value.t ->
  ?alignItems:Css_Properties.AlignItems.Value.t ->
  ?flexDirection:Css_Value.Flex.Direction.t ->
  ?flexFlow:Css_Properties.FlexFlow.Value.t ->
  ?flexWrap:Css_Value.Flex.Wrap.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?minHeight:Css_Value.LengthPercent.t ->
  ?maxHeight:Css_Value.LengthPercent.t ->
  ?justifyContent:Css_Properties.JustifyContent.Value.t ->
  ?margin:Css_Property.margin Css_Property.t ->
  ?marginTop:Css_Value.LengthPercent.t ->
  ?marginRight:Css_Value.LengthPercent.t ->
  ?marginBottom:Css_Value.LengthPercent.t ->
  ?marginLeft:Css_Value.LengthPercent.t ->
  ?order:int ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?paddingTop:Css_Value.LengthPercent.t ->
  ?paddingRight:Css_Value.LengthPercent.t ->
  ?paddingBottom:Css_Value.LengthPercent.t ->
  ?paddingLeft:Css_Value.LengthPercent.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?minWidth:Css_Value.LengthPercent.t ->
  ?maxWidth:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?backgroundAttachment:Css_Value.Background.Attachment.t ->
  ?backgroundColor:Css_Value.Background.Color.t ->
  ?backgroundImage:Css_Value.Background.Image.t ->
  ?backgroundPosition:Css_Value.Background.Position.t ->
  ?backgroundRepeat:Css_Value.Background.Repeat.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?borderTopColor:Css_Value.Border.Color.t ->
  ?borderRightColor:Css_Value.Border.Color.t ->
  ?borderBottomColor:Css_Value.Border.Color.t ->
  ?borderLeftColor:Css_Value.Border.Color.t ->
  ?borderColor:Css_Value.Border.Color.t ->
  ?borderTopStyle:Css_Value.Border.Style.t ->
  ?borderRightStyle:Css_Value.Border.Style.t ->
  ?borderBottomStyle:Css_Value.Border.Style.t ->
  ?borderLeftStyle:Css_Value.Border.Style.t ->
  ?borderStyle:Css_Value.Border.Style.t ->
  ?borderTopWidth:Css_Value.Border.Width.t ->
  ?borderRightWidth:Css_Value.Border.Width.t ->
  ?borderBottomWidth:Css_Value.Border.Width.t ->
  ?borderLeftWidth:Css_Value.Border.Width.t ->
  ?borderWidth:Css_Value.Border.Width.t ->
  ?borderTop:Css_Property.border_top Css_Property.t ->
  ?borderRight:Css_Property.border_right Css_Property.t ->
  ?borderBottom:Css_Property.border_bottom Css_Property.t ->
  ?borderLeft:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cueAfter:Css_Value.UriOrNone.t ->
  ?cueBefore:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?fontFamily:Css_Value.Font.Family.t ->
  ?fontSize:Css_Value.Font.Size.t ->
  ?fontStyle:Css_Value.Font.Style.t ->
  ?fontVariant:Css_Value.Font.Variant.t ->
  ?fontWeight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letterSpacing:Css_Properties.LetterSpacing.Value.t ->
  ?lineHeight:Css_Value.LineHeight.t ->
  ?outlineColor:Css_Value.Outline.Color.t ->
  ?outlineStyle:Css_Value.Outline.Style.t ->
  ?outlineWidth:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pauseAfter:Css_Value.TimePercent.t ->
  ?pauseBefore:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitchRange:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?playDuring:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speakNumeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speakPunctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speechRate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?textDecoration:Css_Properties.TextDecoration.Value.t ->
  ?textTransform:Css_Properties.TextTransform.Value.t ->
  ?unicodeBidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voiceFamily:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?whiteSpace:Css_Properties.WhiteSpace.Value.t ->
  ?wordSpacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.flexbox t
val flex_item :
  ?alignSelf:Css_Properties.AlignSelf.Value.t ->
  ?flex:Css_Property.flex Css_Property.t ->
  ?flexBasis:Css_Value.LengthPercent.t ->
  ?flexGrow:float ->
  ?flexShrink:float ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?backgroundAttachment:Css_Value.Background.Attachment.t ->
  ?backgroundColor:Css_Value.Background.Color.t ->
  ?backgroundImage:Css_Value.Background.Image.t ->
  ?backgroundPosition:Css_Value.Background.Position.t ->
  ?backgroundRepeat:Css_Value.Background.Repeat.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?borderTopColor:Css_Value.Border.Color.t ->
  ?borderRightColor:Css_Value.Border.Color.t ->
  ?borderBottomColor:Css_Value.Border.Color.t ->
  ?borderLeftColor:Css_Value.Border.Color.t ->
  ?borderColor:Css_Value.Border.Color.t ->
  ?borderTopStyle:Css_Value.Border.Style.t ->
  ?borderRightStyle:Css_Value.Border.Style.t ->
  ?borderBottomStyle:Css_Value.Border.Style.t ->
  ?borderLeftStyle:Css_Value.Border.Style.t ->
  ?borderStyle:Css_Value.Border.Style.t ->
  ?borderTopWidth:Css_Value.Border.Width.t ->
  ?borderRightWidth:Css_Value.Border.Width.t ->
  ?borderBottomWidth:Css_Value.Border.Width.t ->
  ?borderLeftWidth:Css_Value.Border.Width.t ->
  ?borderWidth:Css_Value.Border.Width.t ->
  ?borderTop:Css_Property.border_top Css_Property.t ->
  ?borderRight:Css_Property.border_right Css_Property.t ->
  ?borderBottom:Css_Property.border_bottom Css_Property.t ->
  ?borderLeft:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cueAfter:Css_Value.UriOrNone.t ->
  ?cueBefore:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?fontFamily:Css_Value.Font.Family.t ->
  ?fontSize:Css_Value.Font.Size.t ->
  ?fontStyle:Css_Value.Font.Style.t ->
  ?fontVariant:Css_Value.Font.Variant.t ->
  ?fontWeight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letterSpacing:Css_Properties.LetterSpacing.Value.t ->
  ?lineHeight:Css_Value.LineHeight.t ->
  ?outlineColor:Css_Value.Outline.Color.t ->
  ?outlineStyle:Css_Value.Outline.Style.t ->
  ?outlineWidth:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pauseAfter:Css_Value.TimePercent.t ->
  ?pauseBefore:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitchRange:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?playDuring:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speakNumeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speakPunctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speechRate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?textDecoration:Css_Properties.TextDecoration.Value.t ->
  ?textTransform:Css_Properties.TextTransform.Value.t ->
  ?unicodeBidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voiceFamily:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?whiteSpace:Css_Properties.WhiteSpace.Value.t ->
  ?wordSpacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.flex_item t
val positioned :
  ?clip:Css_Properties.Clip.Value.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?minHeight:Css_Value.LengthPercent.t ->
  ?maxHeight:Css_Value.LengthPercent.t ->
  ?margin:Css_Property.margin Css_Property.t ->
  ?marginTop:Css_Value.LengthPercent.t ->
  ?marginRight:Css_Value.LengthPercent.t ->
  ?marginBottom:Css_Value.LengthPercent.t ->
  ?marginLeft:Css_Value.LengthPercent.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?paddingTop:Css_Value.LengthPercent.t ->
  ?paddingRight:Css_Value.LengthPercent.t ->
  ?paddingBottom:Css_Value.LengthPercent.t ->
  ?paddingLeft:Css_Value.LengthPercent.t ->
  ?top:Css_Value.LengthPercent.t ->
  ?right:Css_Value.LengthPercent.t ->
  ?bottom:Css_Value.LengthPercent.t ->
  ?left:Css_Value.LengthPercent.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?minWidth:Css_Value.LengthPercent.t ->
  ?maxWidth:Css_Value.LengthPercent.t ->
  ?zIndex:int ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?backgroundAttachment:Css_Value.Background.Attachment.t ->
  ?backgroundColor:Css_Value.Background.Color.t ->
  ?backgroundImage:Css_Value.Background.Image.t ->
  ?backgroundPosition:Css_Value.Background.Position.t ->
  ?backgroundRepeat:Css_Value.Background.Repeat.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?borderTopColor:Css_Value.Border.Color.t ->
  ?borderRightColor:Css_Value.Border.Color.t ->
  ?borderBottomColor:Css_Value.Border.Color.t ->
  ?borderLeftColor:Css_Value.Border.Color.t ->
  ?borderColor:Css_Value.Border.Color.t ->
  ?borderTopStyle:Css_Value.Border.Style.t ->
  ?borderRightStyle:Css_Value.Border.Style.t ->
  ?borderBottomStyle:Css_Value.Border.Style.t ->
  ?borderLeftStyle:Css_Value.Border.Style.t ->
  ?borderStyle:Css_Value.Border.Style.t ->
  ?borderTopWidth:Css_Value.Border.Width.t ->
  ?borderRightWidth:Css_Value.Border.Width.t ->
  ?borderBottomWidth:Css_Value.Border.Width.t ->
  ?borderLeftWidth:Css_Value.Border.Width.t ->
  ?borderWidth:Css_Value.Border.Width.t ->
  ?borderTop:Css_Property.border_top Css_Property.t ->
  ?borderRight:Css_Property.border_right Css_Property.t ->
  ?borderBottom:Css_Property.border_bottom Css_Property.t ->
  ?borderLeft:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cueAfter:Css_Value.UriOrNone.t ->
  ?cueBefore:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?fontFamily:Css_Value.Font.Family.t ->
  ?fontSize:Css_Value.Font.Size.t ->
  ?fontStyle:Css_Value.Font.Style.t ->
  ?fontVariant:Css_Value.Font.Variant.t ->
  ?fontWeight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letterSpacing:Css_Properties.LetterSpacing.Value.t ->
  ?lineHeight:Css_Value.LineHeight.t ->
  ?outlineColor:Css_Value.Outline.Color.t ->
  ?outlineStyle:Css_Value.Outline.Style.t ->
  ?outlineWidth:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pauseAfter:Css_Value.TimePercent.t ->
  ?pauseBefore:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitchRange:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?playDuring:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speakNumeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speakPunctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speechRate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?textDecoration:Css_Properties.TextDecoration.Value.t ->
  ?textTransform:Css_Properties.TextTransform.Value.t ->
  ?unicodeBidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voiceFamily:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?whiteSpace:Css_Properties.WhiteSpace.Value.t ->
  ?wordSpacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.positioned t
val list_item :
  ?height:Css_Value.LengthPercent.t ->
  ?minHeight:Css_Value.LengthPercent.t ->
  ?maxHeight:Css_Value.LengthPercent.t ->
  ?listStyleImage:Css_Value.ListStyle.Image.t ->
  ?listStylePosition:Css_Value.ListStyle.Position.t ->
  ?listStyleType:Css_Value.ListStyle.Type.t ->
  ?listStyle:Css_Property.list_style Css_Property.t ->
  ?margin:Css_Property.margin Css_Property.t ->
  ?marginTop:Css_Value.LengthPercent.t ->
  ?marginRight:Css_Value.LengthPercent.t ->
  ?marginBottom:Css_Value.LengthPercent.t ->
  ?marginLeft:Css_Value.LengthPercent.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?paddingTop:Css_Value.LengthPercent.t ->
  ?paddingRight:Css_Value.LengthPercent.t ->
  ?paddingBottom:Css_Value.LengthPercent.t ->
  ?paddingLeft:Css_Value.LengthPercent.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?minWidth:Css_Value.LengthPercent.t ->
  ?maxWidth:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?backgroundAttachment:Css_Value.Background.Attachment.t ->
  ?backgroundColor:Css_Value.Background.Color.t ->
  ?backgroundImage:Css_Value.Background.Image.t ->
  ?backgroundPosition:Css_Value.Background.Position.t ->
  ?backgroundRepeat:Css_Value.Background.Repeat.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?borderTopColor:Css_Value.Border.Color.t ->
  ?borderRightColor:Css_Value.Border.Color.t ->
  ?borderBottomColor:Css_Value.Border.Color.t ->
  ?borderLeftColor:Css_Value.Border.Color.t ->
  ?borderColor:Css_Value.Border.Color.t ->
  ?borderTopStyle:Css_Value.Border.Style.t ->
  ?borderRightStyle:Css_Value.Border.Style.t ->
  ?borderBottomStyle:Css_Value.Border.Style.t ->
  ?borderLeftStyle:Css_Value.Border.Style.t ->
  ?borderStyle:Css_Value.Border.Style.t ->
  ?borderTopWidth:Css_Value.Border.Width.t ->
  ?borderRightWidth:Css_Value.Border.Width.t ->
  ?borderBottomWidth:Css_Value.Border.Width.t ->
  ?borderLeftWidth:Css_Value.Border.Width.t ->
  ?borderWidth:Css_Value.Border.Width.t ->
  ?borderTop:Css_Property.border_top Css_Property.t ->
  ?borderRight:Css_Property.border_right Css_Property.t ->
  ?borderBottom:Css_Property.border_bottom Css_Property.t ->
  ?borderLeft:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cueAfter:Css_Value.UriOrNone.t ->
  ?cueBefore:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?fontFamily:Css_Value.Font.Family.t ->
  ?fontSize:Css_Value.Font.Size.t ->
  ?fontStyle:Css_Value.Font.Style.t ->
  ?fontVariant:Css_Value.Font.Variant.t ->
  ?fontWeight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letterSpacing:Css_Properties.LetterSpacing.Value.t ->
  ?lineHeight:Css_Value.LineHeight.t ->
  ?outlineColor:Css_Value.Outline.Color.t ->
  ?outlineStyle:Css_Value.Outline.Style.t ->
  ?outlineWidth:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pauseAfter:Css_Value.TimePercent.t ->
  ?pauseBefore:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitchRange:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?playDuring:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speakNumeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speakPunctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speechRate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?textDecoration:Css_Properties.TextDecoration.Value.t ->
  ?textTransform:Css_Properties.TextTransform.Value.t ->
  ?unicodeBidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voiceFamily:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?whiteSpace:Css_Properties.WhiteSpace.Value.t ->
  ?wordSpacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.list_item t
val replaced_inline :
  ?height:Css_Value.LengthPercent.t ->
  ?minHeight:Css_Value.LengthPercent.t ->
  ?maxHeight:Css_Value.LengthPercent.t ->
  ?margin:Css_Property.margin Css_Property.t ->
  ?marginTop:Css_Value.LengthPercent.t ->
  ?marginRight:Css_Value.LengthPercent.t ->
  ?marginBottom:Css_Value.LengthPercent.t ->
  ?marginLeft:Css_Value.LengthPercent.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?paddingTop:Css_Value.LengthPercent.t ->
  ?paddingRight:Css_Value.LengthPercent.t ->
  ?paddingBottom:Css_Value.LengthPercent.t ->
  ?paddingLeft:Css_Value.LengthPercent.t ->
  ?verticalAlign:Css_Properties.VerticalAlign.Value.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?minWidth:Css_Value.LengthPercent.t ->
  ?maxWidth:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?backgroundAttachment:Css_Value.Background.Attachment.t ->
  ?backgroundColor:Css_Value.Background.Color.t ->
  ?backgroundImage:Css_Value.Background.Image.t ->
  ?backgroundPosition:Css_Value.Background.Position.t ->
  ?backgroundRepeat:Css_Value.Background.Repeat.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?borderTopColor:Css_Value.Border.Color.t ->
  ?borderRightColor:Css_Value.Border.Color.t ->
  ?borderBottomColor:Css_Value.Border.Color.t ->
  ?borderLeftColor:Css_Value.Border.Color.t ->
  ?borderColor:Css_Value.Border.Color.t ->
  ?borderTopStyle:Css_Value.Border.Style.t ->
  ?borderRightStyle:Css_Value.Border.Style.t ->
  ?borderBottomStyle:Css_Value.Border.Style.t ->
  ?borderLeftStyle:Css_Value.Border.Style.t ->
  ?borderStyle:Css_Value.Border.Style.t ->
  ?borderTopWidth:Css_Value.Border.Width.t ->
  ?borderRightWidth:Css_Value.Border.Width.t ->
  ?borderBottomWidth:Css_Value.Border.Width.t ->
  ?borderLeftWidth:Css_Value.Border.Width.t ->
  ?borderWidth:Css_Value.Border.Width.t ->
  ?borderTop:Css_Property.border_top Css_Property.t ->
  ?borderRight:Css_Property.border_right Css_Property.t ->
  ?borderBottom:Css_Property.border_bottom Css_Property.t ->
  ?borderLeft:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cueAfter:Css_Value.UriOrNone.t ->
  ?cueBefore:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?fontFamily:Css_Value.Font.Family.t ->
  ?fontSize:Css_Value.Font.Size.t ->
  ?fontStyle:Css_Value.Font.Style.t ->
  ?fontVariant:Css_Value.Font.Variant.t ->
  ?fontWeight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letterSpacing:Css_Properties.LetterSpacing.Value.t ->
  ?lineHeight:Css_Value.LineHeight.t ->
  ?outlineColor:Css_Value.Outline.Color.t ->
  ?outlineStyle:Css_Value.Outline.Style.t ->
  ?outlineWidth:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pauseAfter:Css_Value.TimePercent.t ->
  ?pauseBefore:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitchRange:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?playDuring:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speakNumeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speakPunctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speechRate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?textDecoration:Css_Properties.TextDecoration.Value.t ->
  ?textTransform:Css_Properties.TextTransform.Value.t ->
  ?unicodeBidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voiceFamily:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?whiteSpace:Css_Properties.WhiteSpace.Value.t ->
  ?wordSpacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.replaced_inline t
val non_replaced_inline :
  ?margin:Css_Property.margin Css_Property.t ->
  ?marginTop:Css_Value.LengthPercent.t ->
  ?marginRight:Css_Value.LengthPercent.t ->
  ?marginBottom:Css_Value.LengthPercent.t ->
  ?marginLeft:Css_Value.LengthPercent.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?paddingTop:Css_Value.LengthPercent.t ->
  ?paddingRight:Css_Value.LengthPercent.t ->
  ?paddingBottom:Css_Value.LengthPercent.t ->
  ?paddingLeft:Css_Value.LengthPercent.t ->
  ?verticalAlign:Css_Properties.VerticalAlign.Value.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?backgroundAttachment:Css_Value.Background.Attachment.t ->
  ?backgroundColor:Css_Value.Background.Color.t ->
  ?backgroundImage:Css_Value.Background.Image.t ->
  ?backgroundPosition:Css_Value.Background.Position.t ->
  ?backgroundRepeat:Css_Value.Background.Repeat.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?borderTopColor:Css_Value.Border.Color.t ->
  ?borderRightColor:Css_Value.Border.Color.t ->
  ?borderBottomColor:Css_Value.Border.Color.t ->
  ?borderLeftColor:Css_Value.Border.Color.t ->
  ?borderColor:Css_Value.Border.Color.t ->
  ?borderTopStyle:Css_Value.Border.Style.t ->
  ?borderRightStyle:Css_Value.Border.Style.t ->
  ?borderBottomStyle:Css_Value.Border.Style.t ->
  ?borderLeftStyle:Css_Value.Border.Style.t ->
  ?borderStyle:Css_Value.Border.Style.t ->
  ?borderTopWidth:Css_Value.Border.Width.t ->
  ?borderRightWidth:Css_Value.Border.Width.t ->
  ?borderBottomWidth:Css_Value.Border.Width.t ->
  ?borderLeftWidth:Css_Value.Border.Width.t ->
  ?borderWidth:Css_Value.Border.Width.t ->
  ?borderTop:Css_Property.border_top Css_Property.t ->
  ?borderRight:Css_Property.border_right Css_Property.t ->
  ?borderBottom:Css_Property.border_bottom Css_Property.t ->
  ?borderLeft:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cueAfter:Css_Value.UriOrNone.t ->
  ?cueBefore:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?fontFamily:Css_Value.Font.Family.t ->
  ?fontSize:Css_Value.Font.Size.t ->
  ?fontStyle:Css_Value.Font.Style.t ->
  ?fontVariant:Css_Value.Font.Variant.t ->
  ?fontWeight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letterSpacing:Css_Properties.LetterSpacing.Value.t ->
  ?lineHeight:Css_Value.LineHeight.t ->
  ?outlineColor:Css_Value.Outline.Color.t ->
  ?outlineStyle:Css_Value.Outline.Style.t ->
  ?outlineWidth:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pauseAfter:Css_Value.TimePercent.t ->
  ?pauseBefore:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitchRange:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?playDuring:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speakNumeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speakPunctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speechRate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?textDecoration:Css_Properties.TextDecoration.Value.t ->
  ?textTransform:Css_Properties.TextTransform.Value.t ->
  ?unicodeBidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voiceFamily:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?whiteSpace:Css_Properties.WhiteSpace.Value.t ->
  ?wordSpacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.non_replaced_inline t
val inline :
  ?height:Css_Value.LengthPercent.t ->
  ?minHeight:Css_Value.LengthPercent.t ->
  ?maxHeight:Css_Value.LengthPercent.t ->
  ?margin:Css_Property.margin Css_Property.t ->
  ?marginTop:Css_Value.LengthPercent.t ->
  ?marginRight:Css_Value.LengthPercent.t ->
  ?marginBottom:Css_Value.LengthPercent.t ->
  ?marginLeft:Css_Value.LengthPercent.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?paddingTop:Css_Value.LengthPercent.t ->
  ?paddingRight:Css_Value.LengthPercent.t ->
  ?paddingBottom:Css_Value.LengthPercent.t ->
  ?paddingLeft:Css_Value.LengthPercent.t ->
  ?verticalAlign:Css_Properties.VerticalAlign.Value.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?minWidth:Css_Value.LengthPercent.t ->
  ?maxWidth:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?backgroundAttachment:Css_Value.Background.Attachment.t ->
  ?backgroundColor:Css_Value.Background.Color.t ->
  ?backgroundImage:Css_Value.Background.Image.t ->
  ?backgroundPosition:Css_Value.Background.Position.t ->
  ?backgroundRepeat:Css_Value.Background.Repeat.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?borderTopColor:Css_Value.Border.Color.t ->
  ?borderRightColor:Css_Value.Border.Color.t ->
  ?borderBottomColor:Css_Value.Border.Color.t ->
  ?borderLeftColor:Css_Value.Border.Color.t ->
  ?borderColor:Css_Value.Border.Color.t ->
  ?borderTopStyle:Css_Value.Border.Style.t ->
  ?borderRightStyle:Css_Value.Border.Style.t ->
  ?borderBottomStyle:Css_Value.Border.Style.t ->
  ?borderLeftStyle:Css_Value.Border.Style.t ->
  ?borderStyle:Css_Value.Border.Style.t ->
  ?borderTopWidth:Css_Value.Border.Width.t ->
  ?borderRightWidth:Css_Value.Border.Width.t ->
  ?borderBottomWidth:Css_Value.Border.Width.t ->
  ?borderLeftWidth:Css_Value.Border.Width.t ->
  ?borderWidth:Css_Value.Border.Width.t ->
  ?borderTop:Css_Property.border_top Css_Property.t ->
  ?borderRight:Css_Property.border_right Css_Property.t ->
  ?borderBottom:Css_Property.border_bottom Css_Property.t ->
  ?borderLeft:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cueAfter:Css_Value.UriOrNone.t ->
  ?cueBefore:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?fontFamily:Css_Value.Font.Family.t ->
  ?fontSize:Css_Value.Font.Size.t ->
  ?fontStyle:Css_Value.Font.Style.t ->
  ?fontVariant:Css_Value.Font.Variant.t ->
  ?fontWeight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letterSpacing:Css_Properties.LetterSpacing.Value.t ->
  ?lineHeight:Css_Value.LineHeight.t ->
  ?outlineColor:Css_Value.Outline.Color.t ->
  ?outlineStyle:Css_Value.Outline.Style.t ->
  ?outlineWidth:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pauseAfter:Css_Value.TimePercent.t ->
  ?pauseBefore:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitchRange:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?playDuring:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speakNumeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speakPunctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speechRate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?textDecoration:Css_Properties.TextDecoration.Value.t ->
  ?textTransform:Css_Properties.TextTransform.Value.t ->
  ?unicodeBidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voiceFamily:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?whiteSpace:Css_Properties.WhiteSpace.Value.t ->
  ?wordSpacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.inline t
val inline_flex :
  ?alignContent:Css_Properties.AlignContent.Value.t ->
  ?alignItems:Css_Properties.AlignItems.Value.t ->
  ?flex:Css_Property.flex Css_Property.t ->
  ?flexDirection:Css_Value.Flex.Direction.t ->
  ?flexFlow:Css_Properties.FlexFlow.Value.t ->
  ?flexWrap:Css_Value.Flex.Wrap.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?minHeight:Css_Value.LengthPercent.t ->
  ?maxHeight:Css_Value.LengthPercent.t ->
  ?justifyContent:Css_Properties.JustifyContent.Value.t ->
  ?margin:Css_Property.margin Css_Property.t ->
  ?marginTop:Css_Value.LengthPercent.t ->
  ?marginRight:Css_Value.LengthPercent.t ->
  ?marginBottom:Css_Value.LengthPercent.t ->
  ?marginLeft:Css_Value.LengthPercent.t ->
  ?order:int ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?paddingTop:Css_Value.LengthPercent.t ->
  ?paddingRight:Css_Value.LengthPercent.t ->
  ?paddingBottom:Css_Value.LengthPercent.t ->
  ?paddingLeft:Css_Value.LengthPercent.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?minWidth:Css_Value.LengthPercent.t ->
  ?maxWidth:Css_Value.LengthPercent.t ->
  ?verticalAlign:Css_Properties.VerticalAlign.Value.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?backgroundAttachment:Css_Value.Background.Attachment.t ->
  ?backgroundColor:Css_Value.Background.Color.t ->
  ?backgroundImage:Css_Value.Background.Image.t ->
  ?backgroundPosition:Css_Value.Background.Position.t ->
  ?backgroundRepeat:Css_Value.Background.Repeat.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?borderTopColor:Css_Value.Border.Color.t ->
  ?borderRightColor:Css_Value.Border.Color.t ->
  ?borderBottomColor:Css_Value.Border.Color.t ->
  ?borderLeftColor:Css_Value.Border.Color.t ->
  ?borderColor:Css_Value.Border.Color.t ->
  ?borderTopStyle:Css_Value.Border.Style.t ->
  ?borderRightStyle:Css_Value.Border.Style.t ->
  ?borderBottomStyle:Css_Value.Border.Style.t ->
  ?borderLeftStyle:Css_Value.Border.Style.t ->
  ?borderStyle:Css_Value.Border.Style.t ->
  ?borderTopWidth:Css_Value.Border.Width.t ->
  ?borderRightWidth:Css_Value.Border.Width.t ->
  ?borderBottomWidth:Css_Value.Border.Width.t ->
  ?borderLeftWidth:Css_Value.Border.Width.t ->
  ?borderWidth:Css_Value.Border.Width.t ->
  ?borderTop:Css_Property.border_top Css_Property.t ->
  ?borderRight:Css_Property.border_right Css_Property.t ->
  ?borderBottom:Css_Property.border_bottom Css_Property.t ->
  ?borderLeft:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cueAfter:Css_Value.UriOrNone.t ->
  ?cueBefore:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?fontFamily:Css_Value.Font.Family.t ->
  ?fontSize:Css_Value.Font.Size.t ->
  ?fontStyle:Css_Value.Font.Style.t ->
  ?fontVariant:Css_Value.Font.Variant.t ->
  ?fontWeight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letterSpacing:Css_Properties.LetterSpacing.Value.t ->
  ?lineHeight:Css_Value.LineHeight.t ->
  ?outlineColor:Css_Value.Outline.Color.t ->
  ?outlineStyle:Css_Value.Outline.Style.t ->
  ?outlineWidth:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pauseAfter:Css_Value.TimePercent.t ->
  ?pauseBefore:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitchRange:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?playDuring:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speakNumeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speakPunctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speechRate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?textDecoration:Css_Properties.TextDecoration.Value.t ->
  ?textTransform:Css_Properties.TextTransform.Value.t ->
  ?unicodeBidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voiceFamily:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?whiteSpace:Css_Properties.WhiteSpace.Value.t ->
  ?wordSpacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.inline_flex t
val inline_block :
  ?clear:Css_Properties.Clear.Value.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?minHeight:Css_Value.LengthPercent.t ->
  ?maxHeight:Css_Value.LengthPercent.t ->
  ?margin:Css_Property.margin Css_Property.t ->
  ?marginTop:Css_Value.LengthPercent.t ->
  ?marginRight:Css_Value.LengthPercent.t ->
  ?marginBottom:Css_Value.LengthPercent.t ->
  ?marginLeft:Css_Value.LengthPercent.t ->
  ?overflow:Css_Properties.Overflow.Value.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?paddingTop:Css_Value.LengthPercent.t ->
  ?paddingRight:Css_Value.LengthPercent.t ->
  ?paddingBottom:Css_Value.LengthPercent.t ->
  ?paddingLeft:Css_Value.LengthPercent.t ->
  ?pageBreakBefore:Css_Value.PageBreak.t ->
  ?pageBreakAfter:Css_Value.PageBreak.t ->
  ?pageBreakInside:Css_Value.PageBreak.inside ->
  ?orphans:Css_Value.BreakInside.t ->
  ?widows:Css_Value.BreakInside.t ->
  ?textAlign:Css_Properties.TextAlign.Value.t ->
  ?textIndent:Css_Value.LengthPercent.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?minWidth:Css_Value.LengthPercent.t ->
  ?maxWidth:Css_Value.LengthPercent.t ->
  ?verticalAlign:Css_Properties.VerticalAlign.Value.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?backgroundAttachment:Css_Value.Background.Attachment.t ->
  ?backgroundColor:Css_Value.Background.Color.t ->
  ?backgroundImage:Css_Value.Background.Image.t ->
  ?backgroundPosition:Css_Value.Background.Position.t ->
  ?backgroundRepeat:Css_Value.Background.Repeat.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?borderTopColor:Css_Value.Border.Color.t ->
  ?borderRightColor:Css_Value.Border.Color.t ->
  ?borderBottomColor:Css_Value.Border.Color.t ->
  ?borderLeftColor:Css_Value.Border.Color.t ->
  ?borderColor:Css_Value.Border.Color.t ->
  ?borderTopStyle:Css_Value.Border.Style.t ->
  ?borderRightStyle:Css_Value.Border.Style.t ->
  ?borderBottomStyle:Css_Value.Border.Style.t ->
  ?borderLeftStyle:Css_Value.Border.Style.t ->
  ?borderStyle:Css_Value.Border.Style.t ->
  ?borderTopWidth:Css_Value.Border.Width.t ->
  ?borderRightWidth:Css_Value.Border.Width.t ->
  ?borderBottomWidth:Css_Value.Border.Width.t ->
  ?borderLeftWidth:Css_Value.Border.Width.t ->
  ?borderWidth:Css_Value.Border.Width.t ->
  ?borderTop:Css_Property.border_top Css_Property.t ->
  ?borderRight:Css_Property.border_right Css_Property.t ->
  ?borderBottom:Css_Property.border_bottom Css_Property.t ->
  ?borderLeft:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cueAfter:Css_Value.UriOrNone.t ->
  ?cueBefore:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?fontFamily:Css_Value.Font.Family.t ->
  ?fontSize:Css_Value.Font.Size.t ->
  ?fontStyle:Css_Value.Font.Style.t ->
  ?fontVariant:Css_Value.Font.Variant.t ->
  ?fontWeight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letterSpacing:Css_Properties.LetterSpacing.Value.t ->
  ?lineHeight:Css_Value.LineHeight.t ->
  ?outlineColor:Css_Value.Outline.Color.t ->
  ?outlineStyle:Css_Value.Outline.Style.t ->
  ?outlineWidth:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pauseAfter:Css_Value.TimePercent.t ->
  ?pauseBefore:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitchRange:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?playDuring:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speakNumeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speakPunctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speechRate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?textDecoration:Css_Properties.TextDecoration.Value.t ->
  ?textTransform:Css_Properties.TextTransform.Value.t ->
  ?unicodeBidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voiceFamily:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?whiteSpace:Css_Properties.WhiteSpace.Value.t ->
  ?wordSpacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.inline_block t
val table_header_group :
  ?height:Css_Value.LengthPercent.t ->
  ?minHeight:Css_Value.LengthPercent.t ->
  ?maxHeight:Css_Value.LengthPercent.t ->
  ?speakHeader:Css_Properties.SpeakHeader.Value.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?minWidth:Css_Value.LengthPercent.t ->
  ?maxWidth:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?backgroundAttachment:Css_Value.Background.Attachment.t ->
  ?backgroundColor:Css_Value.Background.Color.t ->
  ?backgroundImage:Css_Value.Background.Image.t ->
  ?backgroundPosition:Css_Value.Background.Position.t ->
  ?backgroundRepeat:Css_Value.Background.Repeat.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?borderTopColor:Css_Value.Border.Color.t ->
  ?borderRightColor:Css_Value.Border.Color.t ->
  ?borderBottomColor:Css_Value.Border.Color.t ->
  ?borderLeftColor:Css_Value.Border.Color.t ->
  ?borderColor:Css_Value.Border.Color.t ->
  ?borderTopStyle:Css_Value.Border.Style.t ->
  ?borderRightStyle:Css_Value.Border.Style.t ->
  ?borderBottomStyle:Css_Value.Border.Style.t ->
  ?borderLeftStyle:Css_Value.Border.Style.t ->
  ?borderStyle:Css_Value.Border.Style.t ->
  ?borderTopWidth:Css_Value.Border.Width.t ->
  ?borderRightWidth:Css_Value.Border.Width.t ->
  ?borderBottomWidth:Css_Value.Border.Width.t ->
  ?borderLeftWidth:Css_Value.Border.Width.t ->
  ?borderWidth:Css_Value.Border.Width.t ->
  ?borderTop:Css_Property.border_top Css_Property.t ->
  ?borderRight:Css_Property.border_right Css_Property.t ->
  ?borderBottom:Css_Property.border_bottom Css_Property.t ->
  ?borderLeft:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cueAfter:Css_Value.UriOrNone.t ->
  ?cueBefore:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?fontFamily:Css_Value.Font.Family.t ->
  ?fontSize:Css_Value.Font.Size.t ->
  ?fontStyle:Css_Value.Font.Style.t ->
  ?fontVariant:Css_Value.Font.Variant.t ->
  ?fontWeight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letterSpacing:Css_Properties.LetterSpacing.Value.t ->
  ?lineHeight:Css_Value.LineHeight.t ->
  ?outlineColor:Css_Value.Outline.Color.t ->
  ?outlineStyle:Css_Value.Outline.Style.t ->
  ?outlineWidth:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pauseAfter:Css_Value.TimePercent.t ->
  ?pauseBefore:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitchRange:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?playDuring:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speakNumeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speakPunctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speechRate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?textDecoration:Css_Properties.TextDecoration.Value.t ->
  ?textTransform:Css_Properties.TextTransform.Value.t ->
  ?unicodeBidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voiceFamily:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?whiteSpace:Css_Properties.WhiteSpace.Value.t ->
  ?wordSpacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.table_header_group t
val table_footer_group :
  ?height:Css_Value.LengthPercent.t ->
  ?minHeight:Css_Value.LengthPercent.t ->
  ?maxHeight:Css_Value.LengthPercent.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?minWidth:Css_Value.LengthPercent.t ->
  ?maxWidth:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?backgroundAttachment:Css_Value.Background.Attachment.t ->
  ?backgroundColor:Css_Value.Background.Color.t ->
  ?backgroundImage:Css_Value.Background.Image.t ->
  ?backgroundPosition:Css_Value.Background.Position.t ->
  ?backgroundRepeat:Css_Value.Background.Repeat.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?borderTopColor:Css_Value.Border.Color.t ->
  ?borderRightColor:Css_Value.Border.Color.t ->
  ?borderBottomColor:Css_Value.Border.Color.t ->
  ?borderLeftColor:Css_Value.Border.Color.t ->
  ?borderColor:Css_Value.Border.Color.t ->
  ?borderTopStyle:Css_Value.Border.Style.t ->
  ?borderRightStyle:Css_Value.Border.Style.t ->
  ?borderBottomStyle:Css_Value.Border.Style.t ->
  ?borderLeftStyle:Css_Value.Border.Style.t ->
  ?borderStyle:Css_Value.Border.Style.t ->
  ?borderTopWidth:Css_Value.Border.Width.t ->
  ?borderRightWidth:Css_Value.Border.Width.t ->
  ?borderBottomWidth:Css_Value.Border.Width.t ->
  ?borderLeftWidth:Css_Value.Border.Width.t ->
  ?borderWidth:Css_Value.Border.Width.t ->
  ?borderTop:Css_Property.border_top Css_Property.t ->
  ?borderRight:Css_Property.border_right Css_Property.t ->
  ?borderBottom:Css_Property.border_bottom Css_Property.t ->
  ?borderLeft:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cueAfter:Css_Value.UriOrNone.t ->
  ?cueBefore:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?fontFamily:Css_Value.Font.Family.t ->
  ?fontSize:Css_Value.Font.Size.t ->
  ?fontStyle:Css_Value.Font.Style.t ->
  ?fontVariant:Css_Value.Font.Variant.t ->
  ?fontWeight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letterSpacing:Css_Properties.LetterSpacing.Value.t ->
  ?lineHeight:Css_Value.LineHeight.t ->
  ?outlineColor:Css_Value.Outline.Color.t ->
  ?outlineStyle:Css_Value.Outline.Style.t ->
  ?outlineWidth:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pauseAfter:Css_Value.TimePercent.t ->
  ?pauseBefore:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitchRange:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?playDuring:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speakNumeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speakPunctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speechRate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?textDecoration:Css_Properties.TextDecoration.Value.t ->
  ?textTransform:Css_Properties.TextTransform.Value.t ->
  ?unicodeBidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voiceFamily:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?whiteSpace:Css_Properties.WhiteSpace.Value.t ->
  ?wordSpacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.table_footer_group t
val table_caption :
  ?captionSide:Css_Properties.CaptionSide.Value.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?minHeight:Css_Value.LengthPercent.t ->
  ?maxHeight:Css_Value.LengthPercent.t ->
  ?margin:Css_Property.margin Css_Property.t ->
  ?marginTop:Css_Value.LengthPercent.t ->
  ?marginRight:Css_Value.LengthPercent.t ->
  ?marginBottom:Css_Value.LengthPercent.t ->
  ?marginLeft:Css_Value.LengthPercent.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?paddingTop:Css_Value.LengthPercent.t ->
  ?paddingRight:Css_Value.LengthPercent.t ->
  ?paddingBottom:Css_Value.LengthPercent.t ->
  ?paddingLeft:Css_Value.LengthPercent.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?minWidth:Css_Value.LengthPercent.t ->
  ?maxWidth:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?backgroundAttachment:Css_Value.Background.Attachment.t ->
  ?backgroundColor:Css_Value.Background.Color.t ->
  ?backgroundImage:Css_Value.Background.Image.t ->
  ?backgroundPosition:Css_Value.Background.Position.t ->
  ?backgroundRepeat:Css_Value.Background.Repeat.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?borderTopColor:Css_Value.Border.Color.t ->
  ?borderRightColor:Css_Value.Border.Color.t ->
  ?borderBottomColor:Css_Value.Border.Color.t ->
  ?borderLeftColor:Css_Value.Border.Color.t ->
  ?borderColor:Css_Value.Border.Color.t ->
  ?borderTopStyle:Css_Value.Border.Style.t ->
  ?borderRightStyle:Css_Value.Border.Style.t ->
  ?borderBottomStyle:Css_Value.Border.Style.t ->
  ?borderLeftStyle:Css_Value.Border.Style.t ->
  ?borderStyle:Css_Value.Border.Style.t ->
  ?borderTopWidth:Css_Value.Border.Width.t ->
  ?borderRightWidth:Css_Value.Border.Width.t ->
  ?borderBottomWidth:Css_Value.Border.Width.t ->
  ?borderLeftWidth:Css_Value.Border.Width.t ->
  ?borderWidth:Css_Value.Border.Width.t ->
  ?borderTop:Css_Property.border_top Css_Property.t ->
  ?borderRight:Css_Property.border_right Css_Property.t ->
  ?borderBottom:Css_Property.border_bottom Css_Property.t ->
  ?borderLeft:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cueAfter:Css_Value.UriOrNone.t ->
  ?cueBefore:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?fontFamily:Css_Value.Font.Family.t ->
  ?fontSize:Css_Value.Font.Size.t ->
  ?fontStyle:Css_Value.Font.Style.t ->
  ?fontVariant:Css_Value.Font.Variant.t ->
  ?fontWeight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letterSpacing:Css_Properties.LetterSpacing.Value.t ->
  ?lineHeight:Css_Value.LineHeight.t ->
  ?outlineColor:Css_Value.Outline.Color.t ->
  ?outlineStyle:Css_Value.Outline.Style.t ->
  ?outlineWidth:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pauseAfter:Css_Value.TimePercent.t ->
  ?pauseBefore:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitchRange:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?playDuring:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speakNumeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speakPunctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speechRate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?textDecoration:Css_Properties.TextDecoration.Value.t ->
  ?textTransform:Css_Properties.TextTransform.Value.t ->
  ?unicodeBidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voiceFamily:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?whiteSpace:Css_Properties.WhiteSpace.Value.t ->
  ?wordSpacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.table_caption t
val table :
  ?borderCollapse:Css_Properties.BorderCollapse.Value.t ->
  ?borderSpacing:Css_Properties.BorderSpacing.Value.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?minHeight:Css_Value.LengthPercent.t ->
  ?maxHeight:Css_Value.LengthPercent.t ->
  ?margin:Css_Property.margin Css_Property.t ->
  ?marginTop:Css_Value.LengthPercent.t ->
  ?marginRight:Css_Value.LengthPercent.t ->
  ?marginBottom:Css_Value.LengthPercent.t ->
  ?marginLeft:Css_Value.LengthPercent.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?paddingTop:Css_Value.LengthPercent.t ->
  ?paddingRight:Css_Value.LengthPercent.t ->
  ?paddingBottom:Css_Value.LengthPercent.t ->
  ?paddingLeft:Css_Value.LengthPercent.t ->
  ?speakHeader:Css_Properties.SpeakHeader.Value.t ->
  ?tableLayout:Css_Properties.TableLayout.Value.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?minWidth:Css_Value.LengthPercent.t ->
  ?maxWidth:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?backgroundAttachment:Css_Value.Background.Attachment.t ->
  ?backgroundColor:Css_Value.Background.Color.t ->
  ?backgroundImage:Css_Value.Background.Image.t ->
  ?backgroundPosition:Css_Value.Background.Position.t ->
  ?backgroundRepeat:Css_Value.Background.Repeat.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?borderTopColor:Css_Value.Border.Color.t ->
  ?borderRightColor:Css_Value.Border.Color.t ->
  ?borderBottomColor:Css_Value.Border.Color.t ->
  ?borderLeftColor:Css_Value.Border.Color.t ->
  ?borderColor:Css_Value.Border.Color.t ->
  ?borderTopStyle:Css_Value.Border.Style.t ->
  ?borderRightStyle:Css_Value.Border.Style.t ->
  ?borderBottomStyle:Css_Value.Border.Style.t ->
  ?borderLeftStyle:Css_Value.Border.Style.t ->
  ?borderStyle:Css_Value.Border.Style.t ->
  ?borderTopWidth:Css_Value.Border.Width.t ->
  ?borderRightWidth:Css_Value.Border.Width.t ->
  ?borderBottomWidth:Css_Value.Border.Width.t ->
  ?borderLeftWidth:Css_Value.Border.Width.t ->
  ?borderWidth:Css_Value.Border.Width.t ->
  ?borderTop:Css_Property.border_top Css_Property.t ->
  ?borderRight:Css_Property.border_right Css_Property.t ->
  ?borderBottom:Css_Property.border_bottom Css_Property.t ->
  ?borderLeft:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cueAfter:Css_Value.UriOrNone.t ->
  ?cueBefore:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?fontFamily:Css_Value.Font.Family.t ->
  ?fontSize:Css_Value.Font.Size.t ->
  ?fontStyle:Css_Value.Font.Style.t ->
  ?fontVariant:Css_Value.Font.Variant.t ->
  ?fontWeight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letterSpacing:Css_Properties.LetterSpacing.Value.t ->
  ?lineHeight:Css_Value.LineHeight.t ->
  ?outlineColor:Css_Value.Outline.Color.t ->
  ?outlineStyle:Css_Value.Outline.Style.t ->
  ?outlineWidth:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pauseAfter:Css_Value.TimePercent.t ->
  ?pauseBefore:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitchRange:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?playDuring:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speakNumeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speakPunctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speechRate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?textDecoration:Css_Properties.TextDecoration.Value.t ->
  ?textTransform:Css_Properties.TextTransform.Value.t ->
  ?unicodeBidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voiceFamily:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?whiteSpace:Css_Properties.WhiteSpace.Value.t ->
  ?wordSpacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.table t
val inline_table :
  ?borderCollapse:Css_Properties.BorderCollapse.Value.t ->
  ?borderSpacing:Css_Properties.BorderSpacing.Value.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?minHeight:Css_Value.LengthPercent.t ->
  ?maxHeight:Css_Value.LengthPercent.t ->
  ?margin:Css_Property.margin Css_Property.t ->
  ?marginTop:Css_Value.LengthPercent.t ->
  ?marginRight:Css_Value.LengthPercent.t ->
  ?marginBottom:Css_Value.LengthPercent.t ->
  ?marginLeft:Css_Value.LengthPercent.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?paddingTop:Css_Value.LengthPercent.t ->
  ?paddingRight:Css_Value.LengthPercent.t ->
  ?paddingBottom:Css_Value.LengthPercent.t ->
  ?paddingLeft:Css_Value.LengthPercent.t ->
  ?tableLayout:Css_Properties.TableLayout.Value.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?minWidth:Css_Value.LengthPercent.t ->
  ?maxWidth:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?backgroundAttachment:Css_Value.Background.Attachment.t ->
  ?backgroundColor:Css_Value.Background.Color.t ->
  ?backgroundImage:Css_Value.Background.Image.t ->
  ?backgroundPosition:Css_Value.Background.Position.t ->
  ?backgroundRepeat:Css_Value.Background.Repeat.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?borderTopColor:Css_Value.Border.Color.t ->
  ?borderRightColor:Css_Value.Border.Color.t ->
  ?borderBottomColor:Css_Value.Border.Color.t ->
  ?borderLeftColor:Css_Value.Border.Color.t ->
  ?borderColor:Css_Value.Border.Color.t ->
  ?borderTopStyle:Css_Value.Border.Style.t ->
  ?borderRightStyle:Css_Value.Border.Style.t ->
  ?borderBottomStyle:Css_Value.Border.Style.t ->
  ?borderLeftStyle:Css_Value.Border.Style.t ->
  ?borderStyle:Css_Value.Border.Style.t ->
  ?borderTopWidth:Css_Value.Border.Width.t ->
  ?borderRightWidth:Css_Value.Border.Width.t ->
  ?borderBottomWidth:Css_Value.Border.Width.t ->
  ?borderLeftWidth:Css_Value.Border.Width.t ->
  ?borderWidth:Css_Value.Border.Width.t ->
  ?borderTop:Css_Property.border_top Css_Property.t ->
  ?borderRight:Css_Property.border_right Css_Property.t ->
  ?borderBottom:Css_Property.border_bottom Css_Property.t ->
  ?borderLeft:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cueAfter:Css_Value.UriOrNone.t ->
  ?cueBefore:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?fontFamily:Css_Value.Font.Family.t ->
  ?fontSize:Css_Value.Font.Size.t ->
  ?fontStyle:Css_Value.Font.Style.t ->
  ?fontVariant:Css_Value.Font.Variant.t ->
  ?fontWeight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letterSpacing:Css_Properties.LetterSpacing.Value.t ->
  ?lineHeight:Css_Value.LineHeight.t ->
  ?outlineColor:Css_Value.Outline.Color.t ->
  ?outlineStyle:Css_Value.Outline.Style.t ->
  ?outlineWidth:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pauseAfter:Css_Value.TimePercent.t ->
  ?pauseBefore:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitchRange:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?playDuring:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speakNumeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speakPunctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speechRate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?textDecoration:Css_Properties.TextDecoration.Value.t ->
  ?textTransform:Css_Properties.TextTransform.Value.t ->
  ?unicodeBidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voiceFamily:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?whiteSpace:Css_Properties.WhiteSpace.Value.t ->
  ?wordSpacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.inline_table t
val table_cell :
  ?emptyCells:Css_Properties.EmptyCells.Value.t ->
  ?height:Css_Value.LengthPercent.t ->
  ?minHeight:Css_Value.LengthPercent.t ->
  ?maxHeight:Css_Value.LengthPercent.t ->
  ?padding:Css_Property.padding Css_Property.t ->
  ?paddingTop:Css_Value.LengthPercent.t ->
  ?paddingRight:Css_Value.LengthPercent.t ->
  ?paddingBottom:Css_Value.LengthPercent.t ->
  ?paddingLeft:Css_Value.LengthPercent.t ->
  ?speakHeader:Css_Properties.SpeakHeader.Value.t ->
  ?verticalAlign:Css_Properties.VerticalAlign.Value.t ->
  ?width:Css_Value.LengthPercent.t ->
  ?minWidth:Css_Value.LengthPercent.t ->
  ?maxWidth:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?backgroundAttachment:Css_Value.Background.Attachment.t ->
  ?backgroundColor:Css_Value.Background.Color.t ->
  ?backgroundImage:Css_Value.Background.Image.t ->
  ?backgroundPosition:Css_Value.Background.Position.t ->
  ?backgroundRepeat:Css_Value.Background.Repeat.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?borderTopColor:Css_Value.Border.Color.t ->
  ?borderRightColor:Css_Value.Border.Color.t ->
  ?borderBottomColor:Css_Value.Border.Color.t ->
  ?borderLeftColor:Css_Value.Border.Color.t ->
  ?borderColor:Css_Value.Border.Color.t ->
  ?borderTopStyle:Css_Value.Border.Style.t ->
  ?borderRightStyle:Css_Value.Border.Style.t ->
  ?borderBottomStyle:Css_Value.Border.Style.t ->
  ?borderLeftStyle:Css_Value.Border.Style.t ->
  ?borderStyle:Css_Value.Border.Style.t ->
  ?borderTopWidth:Css_Value.Border.Width.t ->
  ?borderRightWidth:Css_Value.Border.Width.t ->
  ?borderBottomWidth:Css_Value.Border.Width.t ->
  ?borderLeftWidth:Css_Value.Border.Width.t ->
  ?borderWidth:Css_Value.Border.Width.t ->
  ?borderTop:Css_Property.border_top Css_Property.t ->
  ?borderRight:Css_Property.border_right Css_Property.t ->
  ?borderBottom:Css_Property.border_bottom Css_Property.t ->
  ?borderLeft:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cueAfter:Css_Value.UriOrNone.t ->
  ?cueBefore:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?fontFamily:Css_Value.Font.Family.t ->
  ?fontSize:Css_Value.Font.Size.t ->
  ?fontStyle:Css_Value.Font.Style.t ->
  ?fontVariant:Css_Value.Font.Variant.t ->
  ?fontWeight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letterSpacing:Css_Properties.LetterSpacing.Value.t ->
  ?lineHeight:Css_Value.LineHeight.t ->
  ?outlineColor:Css_Value.Outline.Color.t ->
  ?outlineStyle:Css_Value.Outline.Style.t ->
  ?outlineWidth:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pauseAfter:Css_Value.TimePercent.t ->
  ?pauseBefore:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitchRange:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?playDuring:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speakNumeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speakPunctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speechRate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?textDecoration:Css_Properties.TextDecoration.Value.t ->
  ?textTransform:Css_Properties.TextTransform.Value.t ->
  ?unicodeBidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voiceFamily:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?whiteSpace:Css_Properties.WhiteSpace.Value.t ->
  ?wordSpacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.table_cell t
val table_column :
  ?width:Css_Value.LengthPercent.t ->
  ?minWidth:Css_Value.LengthPercent.t ->
  ?maxWidth:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?backgroundAttachment:Css_Value.Background.Attachment.t ->
  ?backgroundColor:Css_Value.Background.Color.t ->
  ?backgroundImage:Css_Value.Background.Image.t ->
  ?backgroundPosition:Css_Value.Background.Position.t ->
  ?backgroundRepeat:Css_Value.Background.Repeat.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?borderTopColor:Css_Value.Border.Color.t ->
  ?borderRightColor:Css_Value.Border.Color.t ->
  ?borderBottomColor:Css_Value.Border.Color.t ->
  ?borderLeftColor:Css_Value.Border.Color.t ->
  ?borderColor:Css_Value.Border.Color.t ->
  ?borderTopStyle:Css_Value.Border.Style.t ->
  ?borderRightStyle:Css_Value.Border.Style.t ->
  ?borderBottomStyle:Css_Value.Border.Style.t ->
  ?borderLeftStyle:Css_Value.Border.Style.t ->
  ?borderStyle:Css_Value.Border.Style.t ->
  ?borderTopWidth:Css_Value.Border.Width.t ->
  ?borderRightWidth:Css_Value.Border.Width.t ->
  ?borderBottomWidth:Css_Value.Border.Width.t ->
  ?borderLeftWidth:Css_Value.Border.Width.t ->
  ?borderWidth:Css_Value.Border.Width.t ->
  ?borderTop:Css_Property.border_top Css_Property.t ->
  ?borderRight:Css_Property.border_right Css_Property.t ->
  ?borderBottom:Css_Property.border_bottom Css_Property.t ->
  ?borderLeft:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cueAfter:Css_Value.UriOrNone.t ->
  ?cueBefore:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?fontFamily:Css_Value.Font.Family.t ->
  ?fontSize:Css_Value.Font.Size.t ->
  ?fontStyle:Css_Value.Font.Style.t ->
  ?fontVariant:Css_Value.Font.Variant.t ->
  ?fontWeight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letterSpacing:Css_Properties.LetterSpacing.Value.t ->
  ?lineHeight:Css_Value.LineHeight.t ->
  ?outlineColor:Css_Value.Outline.Color.t ->
  ?outlineStyle:Css_Value.Outline.Style.t ->
  ?outlineWidth:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pauseAfter:Css_Value.TimePercent.t ->
  ?pauseBefore:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitchRange:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?playDuring:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speakNumeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speakPunctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speechRate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?textDecoration:Css_Properties.TextDecoration.Value.t ->
  ?textTransform:Css_Properties.TextTransform.Value.t ->
  ?unicodeBidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voiceFamily:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?whiteSpace:Css_Properties.WhiteSpace.Value.t ->
  ?wordSpacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.table_column t
val table_column_group :
  ?width:Css_Value.LengthPercent.t ->
  ?minWidth:Css_Value.LengthPercent.t ->
  ?maxWidth:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?backgroundAttachment:Css_Value.Background.Attachment.t ->
  ?backgroundColor:Css_Value.Background.Color.t ->
  ?backgroundImage:Css_Value.Background.Image.t ->
  ?backgroundPosition:Css_Value.Background.Position.t ->
  ?backgroundRepeat:Css_Value.Background.Repeat.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?borderTopColor:Css_Value.Border.Color.t ->
  ?borderRightColor:Css_Value.Border.Color.t ->
  ?borderBottomColor:Css_Value.Border.Color.t ->
  ?borderLeftColor:Css_Value.Border.Color.t ->
  ?borderColor:Css_Value.Border.Color.t ->
  ?borderTopStyle:Css_Value.Border.Style.t ->
  ?borderRightStyle:Css_Value.Border.Style.t ->
  ?borderBottomStyle:Css_Value.Border.Style.t ->
  ?borderLeftStyle:Css_Value.Border.Style.t ->
  ?borderStyle:Css_Value.Border.Style.t ->
  ?borderTopWidth:Css_Value.Border.Width.t ->
  ?borderRightWidth:Css_Value.Border.Width.t ->
  ?borderBottomWidth:Css_Value.Border.Width.t ->
  ?borderLeftWidth:Css_Value.Border.Width.t ->
  ?borderWidth:Css_Value.Border.Width.t ->
  ?borderTop:Css_Property.border_top Css_Property.t ->
  ?borderRight:Css_Property.border_right Css_Property.t ->
  ?borderBottom:Css_Property.border_bottom Css_Property.t ->
  ?borderLeft:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cueAfter:Css_Value.UriOrNone.t ->
  ?cueBefore:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?fontFamily:Css_Value.Font.Family.t ->
  ?fontSize:Css_Value.Font.Size.t ->
  ?fontStyle:Css_Value.Font.Style.t ->
  ?fontVariant:Css_Value.Font.Variant.t ->
  ?fontWeight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letterSpacing:Css_Properties.LetterSpacing.Value.t ->
  ?lineHeight:Css_Value.LineHeight.t ->
  ?outlineColor:Css_Value.Outline.Color.t ->
  ?outlineStyle:Css_Value.Outline.Style.t ->
  ?outlineWidth:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pauseAfter:Css_Value.TimePercent.t ->
  ?pauseBefore:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitchRange:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?playDuring:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speakNumeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speakPunctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speechRate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?textDecoration:Css_Properties.TextDecoration.Value.t ->
  ?textTransform:Css_Properties.TextTransform.Value.t ->
  ?unicodeBidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voiceFamily:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?whiteSpace:Css_Properties.WhiteSpace.Value.t ->
  ?wordSpacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.table_column_group t
val table_row :
  ?height:Css_Value.LengthPercent.t ->
  ?minHeight:Css_Value.LengthPercent.t ->
  ?maxHeight:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?backgroundAttachment:Css_Value.Background.Attachment.t ->
  ?backgroundColor:Css_Value.Background.Color.t ->
  ?backgroundImage:Css_Value.Background.Image.t ->
  ?backgroundPosition:Css_Value.Background.Position.t ->
  ?backgroundRepeat:Css_Value.Background.Repeat.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?borderTopColor:Css_Value.Border.Color.t ->
  ?borderRightColor:Css_Value.Border.Color.t ->
  ?borderBottomColor:Css_Value.Border.Color.t ->
  ?borderLeftColor:Css_Value.Border.Color.t ->
  ?borderColor:Css_Value.Border.Color.t ->
  ?borderTopStyle:Css_Value.Border.Style.t ->
  ?borderRightStyle:Css_Value.Border.Style.t ->
  ?borderBottomStyle:Css_Value.Border.Style.t ->
  ?borderLeftStyle:Css_Value.Border.Style.t ->
  ?borderStyle:Css_Value.Border.Style.t ->
  ?borderTopWidth:Css_Value.Border.Width.t ->
  ?borderRightWidth:Css_Value.Border.Width.t ->
  ?borderBottomWidth:Css_Value.Border.Width.t ->
  ?borderLeftWidth:Css_Value.Border.Width.t ->
  ?borderWidth:Css_Value.Border.Width.t ->
  ?borderTop:Css_Property.border_top Css_Property.t ->
  ?borderRight:Css_Property.border_right Css_Property.t ->
  ?borderBottom:Css_Property.border_bottom Css_Property.t ->
  ?borderLeft:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cueAfter:Css_Value.UriOrNone.t ->
  ?cueBefore:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?fontFamily:Css_Value.Font.Family.t ->
  ?fontSize:Css_Value.Font.Size.t ->
  ?fontStyle:Css_Value.Font.Style.t ->
  ?fontVariant:Css_Value.Font.Variant.t ->
  ?fontWeight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letterSpacing:Css_Properties.LetterSpacing.Value.t ->
  ?lineHeight:Css_Value.LineHeight.t ->
  ?outlineColor:Css_Value.Outline.Color.t ->
  ?outlineStyle:Css_Value.Outline.Style.t ->
  ?outlineWidth:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pauseAfter:Css_Value.TimePercent.t ->
  ?pauseBefore:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitchRange:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?playDuring:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speakNumeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speakPunctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speechRate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?textDecoration:Css_Properties.TextDecoration.Value.t ->
  ?textTransform:Css_Properties.TextTransform.Value.t ->
  ?unicodeBidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voiceFamily:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?whiteSpace:Css_Properties.WhiteSpace.Value.t ->
  ?wordSpacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.table_row t
val table_row_group :
  ?height:Css_Value.LengthPercent.t ->
  ?minHeight:Css_Value.LengthPercent.t ->
  ?maxHeight:Css_Value.LengthPercent.t ->
  ?azimuth:Css_Properties.Azimuth.Value.t ->
  ?backgroundAttachment:Css_Value.Background.Attachment.t ->
  ?backgroundColor:Css_Value.Background.Color.t ->
  ?backgroundImage:Css_Value.Background.Image.t ->
  ?backgroundPosition:Css_Value.Background.Position.t ->
  ?backgroundRepeat:Css_Value.Background.Repeat.t ->
  ?background:Css_Property.background Css_Property.t ->
  ?borderTopColor:Css_Value.Border.Color.t ->
  ?borderRightColor:Css_Value.Border.Color.t ->
  ?borderBottomColor:Css_Value.Border.Color.t ->
  ?borderLeftColor:Css_Value.Border.Color.t ->
  ?borderColor:Css_Value.Border.Color.t ->
  ?borderTopStyle:Css_Value.Border.Style.t ->
  ?borderRightStyle:Css_Value.Border.Style.t ->
  ?borderBottomStyle:Css_Value.Border.Style.t ->
  ?borderLeftStyle:Css_Value.Border.Style.t ->
  ?borderStyle:Css_Value.Border.Style.t ->
  ?borderTopWidth:Css_Value.Border.Width.t ->
  ?borderRightWidth:Css_Value.Border.Width.t ->
  ?borderBottomWidth:Css_Value.Border.Width.t ->
  ?borderLeftWidth:Css_Value.Border.Width.t ->
  ?borderWidth:Css_Value.Border.Width.t ->
  ?borderTop:Css_Property.border_top Css_Property.t ->
  ?borderRight:Css_Property.border_right Css_Property.t ->
  ?borderBottom:Css_Property.border_bottom Css_Property.t ->
  ?borderLeft:Css_Property.border_left Css_Property.t ->
  ?border:Css_Property.border Css_Property.t ->
  ?color:Css_Properties.Color.Value.t ->
  ?cueAfter:Css_Value.UriOrNone.t ->
  ?cueBefore:Css_Value.UriOrNone.t ->
  ?cue:Css_Properties.Cue.Value.t ->
  ?cursor:Css_Properties.Cursor.Value.t ->
  ?direction:Css_Properties.Direction.Value.t ->
  ?elevation:Css_Properties.Elevation.Value.t ->
  ?float:Css_Properties.Float.Value.t ->
  ?fontFamily:Css_Value.Font.Family.t ->
  ?fontSize:Css_Value.Font.Size.t ->
  ?fontStyle:Css_Value.Font.Style.t ->
  ?fontVariant:Css_Value.Font.Variant.t ->
  ?fontWeight:Css_Value.Font.Weight.t ->
  ?font:Css_Property.font Css_Property.t ->
  ?letterSpacing:Css_Properties.LetterSpacing.Value.t ->
  ?lineHeight:Css_Value.LineHeight.t ->
  ?outlineColor:Css_Value.Outline.Color.t ->
  ?outlineStyle:Css_Value.Outline.Style.t ->
  ?outlineWidth:Css_Value.Outline.Width.t ->
  ?outline:Css_Property.outline Css_Property.t ->
  ?pauseAfter:Css_Value.TimePercent.t ->
  ?pauseBefore:Css_Value.TimePercent.t ->
  ?pause:Css_Properties.Pause.Value.t ->
  ?pitchRange:Css_Properties.PitchRange.Value.t ->
  ?pitch:Css_Properties.Pitch.Value.t ->
  ?playDuring:Css_Properties.PlayDuring.Value.t ->
  ?richness:Css_Properties.Richness.Value.t ->
  ?speakNumeral:Css_Properties.SpeakNumeral.Value.t ->
  ?speakPunctuation:Css_Properties.SpeakPunctuation.Value.t ->
  ?speak:Css_Properties.Speak.Value.t ->
  ?speechRate:Css_Properties.SpeechRate.Value.t ->
  ?stress:Css_Properties.Stress.Value.t ->
  ?textDecoration:Css_Properties.TextDecoration.Value.t ->
  ?textTransform:Css_Properties.TextTransform.Value.t ->
  ?unicodeBidi:Css_Properties.UnicodeBidi.Value.t ->
  ?visibility:Css_Properties.Visibility.Value.t ->
  ?voiceFamily:Css_Properties.VoiceFamily.Value.t ->
  ?volume:Css_Properties.Volume.Value.t ->
  ?whiteSpace:Css_Properties.WhiteSpace.Value.t ->
  ?wordSpacing:Css_Properties.WordSpacing.Value.t ->
  unit -> Css_Property.table_row_group t
val show :
  ?indent:int ->
  Css_Selector.Selector.t ->
  [< Css_Property.display ] t -> string
