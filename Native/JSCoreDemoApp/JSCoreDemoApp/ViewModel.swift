//
//  ViewModel.swift
//  JSCoreDemoApp
//
//  Created by Nitin Soni on 09/06/23.
//

import Foundation

class ViewModel {
    var jsOperation = JSOperations()
    func performOperation(value1: Float?, value2: Float?, completion: @escaping ((Float) -> Void)){
        guard let v1 = value1, let v2 = value2 else { return}
        jsOperation.performOperation(x: v1, y: v2) { result in
            completion(result)
        }
    }
}
