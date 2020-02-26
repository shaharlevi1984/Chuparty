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
        guard let email = EmailText.text else { return }
        Auth.auth().sendPasswordReset(withEmail: email) { (error) in
            if let error = error{
                //handler
          }
        
        
        let alert = UIAlertController(title: "Check your Email", message: "", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
      }
    }
    
    @IBAction func LoginButton(_ sender: Any) {
        guard let email = EmailText.text, email.inNotNull,
              let password = PasswordText.text, password.inNotNull else { return }
        
        Auth.auth().signIn(withEmail: email, password: password) { (user, error) in
            if let error = error {
                debugPrint(error.localizedDescription)
            }
                        
             self.dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func RegisterButton(_ sender: Any) {
        performSegue(withIdentifier: "toRegister", sender: self)
    }
}
