//
//  WelcomeVC.swift
//  Lyon
//
//  Created by Trevor Rose on 12/21/17.
//  Copyright © 2017 Trevor Rose. All rights reserved.
//

import UIKit
import Firebase

class WelcomeVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func signUpTapped(_ sender: Any) {
        let signUpVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignUpVC")
        self.present(signUpVC, animated: true, completion: nil)
    }
    @IBAction func signInTapped(_ sender: Any) {
        PhoneAuthProvider.provider().verifyPhoneNumber("+16125328955")  { (verificationID, error) in
            if error != nil {
                print(String(describing: error))
            } else {
                print("Success")
            }
        }
    }
}
