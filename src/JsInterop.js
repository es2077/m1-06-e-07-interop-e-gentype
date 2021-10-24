export const magicNumber = 42;
export const magicString = "hello";
export const isTheWorldBeautiful = true;
export const magicArray = [1, undefined, 3];
export const magicObject = {
  a: 1,
  b: 2,
}
export var magicMaybeString = null;

export const magicFunction = (a, b) => a + b;

export const magicCallback = (cb) => {
  setTimeout(() => {
    cb(null, "hello");
  }, 1000)
};


export const alert = (args) => {
  console.log(...args)
}