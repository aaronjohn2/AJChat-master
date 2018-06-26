//
//  LogInViewController.swift
//  AJChat
//
//  Created by Aaron John on 29/08/2017.
//  Copyright (c) 2017 aaronjohn. All rights reserved.
//  This is the view controller where users login


import UIKit
import Firebase
import SVProgressHUD

class LogInViewController: UIViewController {

    //Textfields pre-linked with IBOutlets
    @IBOutlet var emailTextfield: UITextField!
    @IBOutlet var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

   
    @IBAction func logInPressed(_ sender: AnyObject) {

        SVProgressHUD.show()
        
        FIRAuth.auth()?.signIn(withEmail: emailTextfield.text!, password: passwordTextfield.text!, completion: { (user, error) in
            
            if error != nil{
                print(error!)
            }
                
            else{
                //login success
                print("Login Successful!")
                
                SVProgressHUD.dismiss()
                
                self.performSegue(withIdentifier: "goToChat", sender: self)
            }
            
        })
        
        
    }
    


    
}  
