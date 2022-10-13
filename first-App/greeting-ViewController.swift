//
//  greeting-ViewController.swift
//  first-App
//
//  Created by Macbook 2019 on 2022-10-01.
//

import UIKit

class greeting_ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        firstNameOutlet.placeholder = placeHolderName
        lastNameOutlet.placeholder = placeHolderSurname
        
        // Do any additional setup after loading the view.
    }
    let placeHolderName = "First Name"
    let placeHolderSurname = "Last Name"
    @IBAction func mygtukasPaspaustas(_ sender: Any) {
        performSegue(withIdentifier: "perejimasPenki", sender: self)
    }
    
    
    @IBOutlet weak var firstNameOutlet: UITextField!
    @IBOutlet weak var lastNameOutlet: UITextField!
    @IBAction func SignIn(_ sender: Any) {
        
        if ((firstNameOutlet.text?.isEmpty) == true) && ((lastNameOutlet.text?.isEmpty) == false) {
            LabelOutlet2.text! = ("Enter your First Name")
      
        } else if ((lastNameOutlet.text?.isEmpty) == true) && ((firstNameOutlet.text?.isEmpty) == false) {
            LabelOutlet2.text! = ("Enter your Last Name")
        }
        else if (
            ((firstNameOutlet.text?.isEmpty) == false) && ((lastNameOutlet.text?.isEmpty) == false)) {
                LabelOutlet.text! = ("Hello")
                LabelOutlet2.text! = ("\(firstNameOutlet.text!) \(lastNameOutlet.text!).")
                LabelOutlet3.text! = ("Good to see you!")
                firstNameOutlet.isHidden = true
                lastNameOutlet.isHidden = true
                buttonOutlet.isHidden = true
    
            } else {
                LabelOutlet2.text! = ("Enter your First Name and Last Name")
            }
    }
    @IBOutlet weak var LabelOutlet: UILabel!
    @IBOutlet weak var LabelOutlet2: UILabel!
    @IBOutlet weak var LabelOutlet3: UILabel!
    @IBOutlet weak var LabelOutlet4: UILabel!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override funtexc prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
