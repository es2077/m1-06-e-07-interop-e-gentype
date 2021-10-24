@module("./MyComponent")
@react.component
external make : (~name: string, ~_type: [#user | #admin]=?) => React.element = "default"