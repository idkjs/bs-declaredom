type t;

[@bs.send.pipe: t] external plan: int => unit = "plan";
[@bs.send.pipe: t] external end_: ([@bs.as 0] _) => unit = "end";
[@bs.send.pipe: t] external end_error: Js.Exn.t => unit = "end";
[@bs.send.pipe: t] external fail: string => unit = "fail";
[@bs.send.pipe: t] external pass: string => unit = "pass";
[@bs.send.pipe: t] external timeoutAfter: int => unit = "timeoutAfter";
[@bs.send.pipe: t] external skip: string => unit = "skip";
[@bs.send.pipe: t] external ok: ('value, ~msg: string=?) => unit = "ok";
[@bs.send.pipe: t] external notOk: ('value, ~msg: string=?) => unit = "notOk";
[@bs.send.pipe: t]
external error: (Js.Nullable.t(Js.Exn.t), ~msg: string=?) => unit = "error";
[@bs.send.pipe: t]
external equal: ('actual, 'expected, ~msg: string=?) => unit = "equal";
[@bs.send.pipe: t]
external notEqual: ('actual, 'expected, ~msg: string=?) => unit = "notEqual";
[@bs.send.pipe: t]
external deepEqual: ('actual, 'expected, ~msg: string=?) => unit = "deepEqual";
[@bs.send.pipe: t]
external notDeepEqual: ('actual, 'expected, ~msg: string=?) => unit =
  "notDeepEqual";
[@bs.send.pipe: t]
external deepLooseEqual: ('actual, 'expected, ~msg: string=?) => unit =
  "deepLooseEqual";
[@bs.send.pipe: t]
external notDeepLooseEqual: ('actual, 'expected, ~msg: string=?) => unit =
  "notDeepLooseEqual";
[@bs.send.pipe: t]
external throws: ('a => 'b, ~expected: Js.Exn.t=?, ~msg: string=?) => unit =
  "throws";
[@bs.send.pipe: t]
external doesNotThrow:
  ('a => 'b, ~expected: Js.Exn.t=?, ~msg: string=?) => unit =
  "doesNotThrow";
[@bs.send.pipe: t]
external test: (string, ~options: TestOptions.t=?, t => unit) => unit = "test";
[@bs.send.pipe: t] external comment: string => unit = "comment";
