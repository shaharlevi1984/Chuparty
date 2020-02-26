//
//  RegisterViewController.swift
//  Chuparty
//
//  Created by Shahar Levi on 26/02/2020.
//  Copyright © 2020 Shahar Levi. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    //IBOutlets
    
    @IBOutlet weak var FullNameText: UITextField!
    @IBOutlet weak var EmailText: UITextField!
    @IBOutlet weak var PasswordText: UITextField!
    @IBOutlet weak var ConfirmPasswordText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barTintColor = #colorLiteral(red: 0.8352941176, green: 0.3921568627, blue: 0.3137254902, alpha: 1)

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func SubmitButton(_ sender: Any) {
        
    }
    


}
