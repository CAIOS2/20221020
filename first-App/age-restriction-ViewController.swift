//
//  age-restriction-ViewController.swift
//  first-App
//
//  Created by Macbook 2019 on 2022-10-01.
//

import UIKit

class age_restriction_ViewController: UIViewController, UITextFieldDelegate {

    @IBAction func mygtukasPaspaustas(_ sender: Any) {
        performSegue(withIdentifier: "perejimasSesi", sender: self)
    }
    
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var ageTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        ageTextField.placeholder = placeHolder
//        ageTextField.delegate = self
    }
    let placeHolder = "Enter you Age"
    @IBOutlet weak var centerText: UILabel!
    @IBOutlet weak var greetingLabel: UILabel!
    @IBAction func submit(_ sender: Any) {
        centerText.isHidden = true
        
        let age: Int = Int(ageTextField.text!) ?? 0
        
        if age >= 20 {
            greetingLabel.text = ("You are good to go")
            submitButton.isHidden = true
            ageTextField.isHidden = true
        } else if age == 0 {
            greetingLabel.text = ("Please enter your Age")
        } else {
            greetingLabel.text = ("Not yet")
        }
        
        
        /// <#Description#>
        /// - Parameters:
        ///   - textField: teksto įvedimo laukelis
        ///   - range: unknown
        ///   - string: tekstas
        /// - Returns: reikšmę, kuri nėra prilyginta nil, o nil prilygintas tekstas, todėl leidžia rašyti tik skaičių. Klausimas, neleidžia naudotis 'delete' mygtuku.
        func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
            
                    return false
                }

        
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
        
    }
}
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        <#code#>
//    }




