//
//  Extension.swift
//  Chuparty
//
//  Created by Shahar Levi on 26/02/2020.
//  Copyright © 2020 Shahar Levi. All rights reserved.
//

import Foundation
import Firebase

extension String {
    var inNotNull : Bool {
        return !isEmpty
    }
    
}

extension UIViewController {
    
    func handleFireAuthError(_ error: Error) {
        if let errorCode = AuthErrorCode(rawValue: error._code) {
            let alert = UIAlertController(title: "Error", message: errorCode.errorMassage, preferredStyle: .alert)
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(okAction)
            self.present(alert, animated: true, completion: nil)
    }
  }
}

extension AuthErrorCode {
    var errorMassage: String {
        switch self  {
            
        case .emailAlreadyInUse:
            return "The Email is Already in Use with another Acount!"
           
        case .userNotFound:
            return "The User Not Found for the specified user, Please Check and Try Again!"
            
        case .invalidEmail, .invalidSender, .invalidRecipientEmail:
            return "Please Enter a Valid Email!"
            
        case .networkError:
            return "Network Error, Please Check and Try Again!"
    
        case .weakPassword:
            return "Your Password is too Weak, The Password Must Conatin 6 Characters long or More!"
            
        case .wrongPassword:
                   return "Your Password ior Email is Incorrect!"
                    
            
        default:
            return "Sorry, Somthing went Wrong, Please Try Again!"
        }
    }
    
}
