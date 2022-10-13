//
//  loginFormViewController.swift
//  first-App
//
//  Created by Macbook 2019 on 2022-10-02.
//

import UIKit

class loginFormViewController: UIViewController {
let userNamePlaceHolder = "Username"
let passwordPlaceHolder = "Password"
let confirmPasswordPlaceHolder = "Confirm Password"
let passwordText = ""
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var confirmPassword: UITextField!
    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var firstName: UITextField!


    override func viewDidLoad() {
        super.viewDidLoad()
        confirmPassword.placeholder = confirmPasswordPlaceHolder
        password.placeholder = passwordPlaceHolder
        firstName.placeholder = userNamePlaceHolder
        // Do any additional setup after loading the view.
    }
    
    @IBAction func login(_ sender: Any) {
        if  (confirmPassword.text == password.text) {
            performSegue(withIdentifier: "perejimasSeptyni", sender: nil)
            loginLabel.text = ("Correct credentials")
            print("correct")
        } else {
            loginLabel.text = ("Incorrect credentials")
            print("incorrect")
        } 
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "perejimasSeptyni" {
            (segue.destination as? partyViewController)?.naujasUseris = firstName.text!
        }
    }

    
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

