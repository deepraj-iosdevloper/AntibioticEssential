//
//  RegistrationViewController.swift
//  AntibioticEssential
//
//  Created by Mac on 26/05/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class RegistrationViewController: UIViewController , UITextFieldDelegate{
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtEmailId: UITextField!
    @IBOutlet weak var txtPhoneNumber: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func backButtonAction(_ sender: Any) {
        
        _ = self.navigationController?.popViewController(animated: true)
        
    }
    @IBAction func registerButtonActio(_ sender: Any) {
    
        self.view.endEditing(true)
        
        let login = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(login, animated: true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == txtFirstName {
            txtLastName.becomeFirstResponder()
        }else if textField == txtLastName {
            txtEmailId.becomeFirstResponder()
        }else if textField == txtEmailId {
            txtPhoneNumber.becomeFirstResponder()
        }else{
            textField.resignFirstResponder()
        }
        
        return true
    }
}
