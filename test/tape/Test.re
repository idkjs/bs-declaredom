module Harness = {
  type t;
  [@bs.send.pipe: t]
  external createStream: Stream.options => Stream.t = "createStream";
};

[@bs.module "tape"]
external test:
  (~name: string=?, ~options: TestOptions.t=?, T.t => unit) => unit =
  "test";
[@bs.module "tape"]
external skip: (~name: string=?, T.t => unit) => unit = "skip";
[@bs.module "tape"]
external only: (~name: string=?, T.t => unit) => unit = "only";
[@bs.module "tape"] external onFinish: (unit => unit) => unit = "onFinish";
[@bs.module "tape"] external onFailure: (unit => unit) => unit = "onFailure";
[@bs.module "tape"]
external createHarness: unit => Harness.t = "createHarness";
[@bs.module "tape"]
external createStream: Stream.options => Stream.t = "createStream";
