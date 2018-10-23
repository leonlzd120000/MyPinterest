//
//  LoginViewController.swift
//  MyInstagram
//
//  Created by leon on 2018/10/23.
//  Copyright © 2018年 leonlee. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class LoginViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginButtonClicked(_ sender: UIButton) {
        
        if emailTextField.text != "" && passwordTextField.text != ""{
            
            Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
                if error != nil{
                    print("wrong!") 
                }else{
                    self.performSegue(withIdentifier: "goToBar", sender: self)
                }
            }
        }
    }
    
    @IBAction func registerButtonClicked(_ sender: UIButton) {
        
        performSegue(withIdentifier: "goToRegister", sender: self)

    }
    

}
