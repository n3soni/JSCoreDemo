# JSCoreDemo

It is a Javascript Core framwork demo with iOS app initially. 
It uses javascript function written in addition.js file and use it inside Native code.
Javascript file's content in String form has been used to evaluate script in a JSContext (to recieve JsonValue).
and then javascript function has been called using :

let jsFunction = context.objectForKeyedSubscript("addX")
let result = jsFunction?.call(withArguments: [x,y])

we can change defination of javascript function to notice reflection in native code.
