//
//  RegisterViewController.swift
//  MyInstagram
//
//  Created by leon on 2018/10/23.
//  Copyright © 2018年 leonlee. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class RegisterViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passWordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func registerButtonClicked(_ sender: UIButton) {
       
        if emailTextField.text != "" && passWordTextField.text != ""{
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passWordTextField.text!) { (user, error) in
            if error != nil {
                let alert = UIAlertController(title: "error", message: error?.localizedDescription, preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(action)
                self.present(alert, animated: true, completion: nil)
            }else{
                print("successful")
            }
        }
        }else{
            
            let alert = UIAlertController(title: "fill your data", message: "error", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            
        }
    }
    
    @IBAction func loginButtonClicked(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToLogin", sender: self)
        
    }
    

}
