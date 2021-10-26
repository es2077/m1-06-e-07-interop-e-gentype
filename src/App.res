@react.component
let make = () => {
  React.useEffect0(() => {
    Interop.magicCallback(result => {
      switch result {
      | Errored(error) => Js.log2("error", error)
      | Success(result) => Js.log2("success", result)
      }
    })
    open Interop;
    magicAlert([
      2,
      2,
      2,
    ])
    None
  })

  <div className="main-container">
    <h1> {`Hello from ReScript and Vite 😄`->React.string} </h1>
    <p> {Interop.magicNumber->Js.Int.toString->React.string} </p>
    <p>
      {switch Interop.magicMaybeString {
      | Some(s) => s
      | None => "No string"
      }->React.string}
    </p>
    <p> {Interop.magicFunction(1.0, 2.0)->Belt.Float.toString->React.string} </p>
    <p> {Js.Date.make()->DateFns.format("dd/MM/yyyy")->React.string} </p>
    <MyComponent name="Gabriel" _type=#admin />
    <MagicTSOnlyComponent name="Gabriel" _type=#cat />
  </div>
}
