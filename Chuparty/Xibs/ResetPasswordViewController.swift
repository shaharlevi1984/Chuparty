//
//  ResetPasswordViewController.swift
//  Chuparty
//
//  Created by Shahar Levi on 26/02/2020.
//  Copyright © 2020 Shahar Levi. All rights reserved.
//

import UIKit
import Firebase

class ResetPasswordViewController: UIViewController {
    
    // Outlets
    
    @IBOutlet weak var EmailText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }


    @IBAction func ResetPasswordButton(_ sender: Any) {
        guard let email = EmailText.text else { return }
        Auth.auth().sendPasswordReset(withEmail: email) { (error) in
            if let error = error{
                //handler
            }
            
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    
    @IBAction func CancelButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
