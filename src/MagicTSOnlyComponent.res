@module("./MagicTSOnlyComponent")
@react.component
@genType.import("./MagicTSOnlyComponent")
external make : (~name: string, ~_type: [#person | #cat]=?) => React.element = "default"