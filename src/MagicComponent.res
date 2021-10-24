@react.component
let make = (~name, ~_type: option<[#user | #admin]>=?) => {
  <div>
    {
      switch(_type) {
        | Some(#user) => {`Hello user, ${name}`->React.string}
        | Some(#admin) => {`Hello user, ${name}`->React.string}
        | None => {`Yo, ${name}`->React.string}
      }
    }
  </div>
}