//
//  ViewController.swift
//  AntibioticEssential
//
//  Created by Mac on 25/05/17.
//  Copyright © 2017 Mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewetaVersion: UIView!
    
    @IBOutlet weak var btnRedeem: UIButton!
    @IBOutlet weak var btnSingIn: UIButton!
    @IBOutlet weak var btnPrintBook: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        self.viewetaVersion.layer.cornerRadius = self.viewetaVersion.frame.height / 2
        
        self.btnRedeem.layer.cornerRadius = 5
        self.btnSingIn.layer.cornerRadius = 5
        self.btnPrintBook.layer.cornerRadius = 5
        
    }

    @IBAction func redeemCodeBtnAction(_ sender: Any) {
        
        let redeemCodeView = self.storyboard?.instantiateViewController(withIdentifier: "RedeemCodeViewController") as! RedeemCodeViewController
        
        self.navigationController?.pushViewController(redeemCodeView, animated: true)
    }
    @IBAction func loginButtonAction(_ sender: Any) {
        
        let loginView = self.storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
        self.navigationController?.pushViewController(loginView, animated: true)
        
    }

}


