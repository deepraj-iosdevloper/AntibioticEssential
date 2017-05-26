//
//  RedeemCodeViewController.swift
//  AntibioticEssential
//
//  Created by Mac on 25/05/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class RedeemCodeViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var txtRedeemCode: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func backBtnAction(_ sender: Any) {
    
        _ = self.navigationController?.popViewController(animated: true)
    }
 
    @IBAction func submitButtonAction(_ sender: Any) {
        
        self.view.endEditing(true)
        
        let register = self.storyboard?.instantiateViewController(withIdentifier: "RegistrationViewController") as! RegistrationViewController
        
        self.navigationController?.pushViewController(register, animated: true)
        
    }

    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }
}
