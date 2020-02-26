//
//  LoginViewController.swift
//  Chuparty
//
//  Created by Shahar Levi on 26/02/2020.
//  Copyright © 2020 Shahar Levi. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    // IBOutlets
    
    @IBOutlet weak var EmailText: UITextField!
    @IBOutlet weak var PasswordText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Buttons
    
    @IBAction func ForgotPasswordButton(_ sender: UIButton) {
    }
    
    @IBAction func LoginButton(_ sender: UIButton) {
    }
    
    @IBAction func RegisterButton(_ sender: UIButton) {
        perform(withIdentifier: "toRegister", sender: self)
    }
}
