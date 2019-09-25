//
//  ViewController.swift
//  TextFieldMaxLen
//
//  Created by Enamul Haque on 9/25/19.
//  Copyright © 2019 Enamul Haque. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate {
    
    @IBOutlet weak var txtName: UITextField!
    var maxLen:Int = 8;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtName.delegate = self
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
           
           if(textField == txtName){
               let currentText = textField.text! + string
              return currentText.count <= maxLen
           }
           
           return true;
       }
}

