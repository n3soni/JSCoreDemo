//
//  JSOperations.swift
//  JSCoreDemoApp
//
//  Created by Nitin Soni on 09/06/23.
//

import Foundation

import JavaScriptCore

var context: JSContext? = {
    
    let context = JSContext()
    
    guard let additionJSPath = Bundle.main.path(forResource: "addition", ofType: "js") else {
        print("Unable to read resource files.")
        return nil
    }
    
    do {
      let addition = try String(contentsOfFile: additionJSPath, encoding: String.Encoding.utf8)
      _ = context?.evaluateScript(addition)
    } catch (let error) {
      print("Error while processing script file: \(error)")
    }
    
    return context
  }()


class JSOperations {
    func performOperation(x: Float, y: Float, completion: @escaping ((Float) -> Void)) {
        guard let context = context else {
            return
        }
        let jsFunction = context.objectForKeyedSubscript("addX")
        guard let result = jsFunction?.call(withArguments: [x,y]).toNumber() else {
            return
        }
        print("result = \(result)")
        completion(Float(truncating: result))
        
    }
}
