//
//  ViewController.swift
//  JSCoreDemoApp
//
//  Created by Nitin Soni on 09/06/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtValue1: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    @IBOutlet weak var txtValue2: UITextField!
    
    @IBOutlet weak var btnShowResult: UIButton!
    
    var viewModel = ViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showResultAction(_ sender: Any) {
        guard let value1 = Float(txtValue1.text!), let value2 = Float(txtValue2.text!) else {
            lblResult.isHidden = true
            return
        }
        viewModel.performOperation(value1: value1, value2: value2) { [weak self] result in
            let cleanResult = floor(result) == result ? "\(Int(result))" : "\(result)"
            self?.lblResult.isHidden = false
            self?.lblResult.text = cleanResult
        }
    }
    
}

