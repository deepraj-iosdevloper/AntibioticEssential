//
//  LoginViewController.swift
//  AntibioticEssential
//
//  Created by Mac on 25/05/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController , UITextFieldDelegate {

    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func loginButtonAction(_ sender: Any) {
        
        self.view.endEditing(true)
    }

    @IBAction func backButtonAction(_ sender: Any) {
        
        _ = self.navigationController?.popViewController(animated: true)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == txtUserName {
            
            txtPassword.becomeFirstResponder()
        }else{
            
            textField.resignFirstResponder()
        }
        
        return true
    }
}
