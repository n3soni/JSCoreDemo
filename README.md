# JSCoreDemo

It is a Javascript Core framwork demo with iOS app initially. 

1.It uses javascript function written in addition.js file and use it inside Native code.

2.Javascript file's content in String form has been used to evaluate script in a JSContext (to recieve JsonValue).

3. and then javascript function has been called using (see JSOperations.swift):

let jsFunction = context.objectForKeyedSubscript("addX")

let result = jsFunction?.call(withArguments: [x,y])

we can change defination of javascript function to notice reflection in native code.

Note: Point #2 also states we can use any remote js file as a source to Javascript code.
