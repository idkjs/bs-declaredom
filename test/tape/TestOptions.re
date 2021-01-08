type t;
[@bs.obj]
external make:
  (~skip: bool=?, ~timeout: int=?, ~objectPrintDepth: int=?, unit) => t;
