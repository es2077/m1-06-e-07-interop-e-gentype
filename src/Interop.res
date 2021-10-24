// Exportar valores padrões
// Importar valores JS

@module("./JsInterop")
external magicNumber: int = "magicNumber"

@module("./JsInterop")
external magicString: string = "magicString"

@module("./JsInterop")
external magicMaybeString: Js.Null.t<string> = "magicMaybeString"

let magicMaybeString = magicMaybeString->Js.Null.toOption

@module("./JsInterop")
external isTheWorldBeautiful: bool = "isTheWorldBeautiful"

@module("./JsInterop")
external magicArray: array<int> = "magicArray"

type magicObject = {
  a: int,
  b: int,
}

@module("./JsInterop")
external magicObject: magicObject = "magicObject"

// Funções
// Bindings locais
// Binding de lib externa do NPM

@module("./JsInterop")
external magicFunction: (float, float) => float = "magicFunction"

@module("./JsInterop")
external magicCallback: (~cb: (Js.Null.t<string>, Js.Null.t<string>) => unit) => unit = "magicCallback"

type cbResult = | Errored(string) | Success(string);

let magicCallback = (cb) => {
  magicCallback(~cb=(error, result) => {
    let error = error->Js.Null.toOption;
    let result= result->Js.Null.toOption;

    switch(error, result) {
      | (Some(error), _) => cb(Errored(error))
      | (None, Some(result)) => cb(Success(result))
      | (None, None) => cb(Errored("No error and no result"))
    }
  })
}

type window;

@val
external window : window = "window";

@send
external alert : (window, 'a) => unit = "alert"

@send
external alert2 : (window, string, string) => unit = "alert"

@send
external alert3 : (window, string, string, string) => unit = "alert"


@module("./JsInterop")
external magicAlert : array<'a> => unit = "alert"