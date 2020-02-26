//
//  ViewController.swift
//  Chuparty
//
//  Created by Shahar Levi on 26/02/2020.
//  Copyright © 2020 Shahar Levi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func LoginRegisterButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Login", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "LoginViewController")
        self.present(controller, animated: true, completion: nil)
        
    }
}

