//
//  mood-ViewController.swift
//  first-App
//
//  Created by Macbook 2019 on 2022-10-01.
//

import UIKit

class mood_ViewController: UIViewController {
    @IBOutlet weak var switchOutlet: UISwitch!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var buttonOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func button(_ sender: Any) {
        if switchOutlet.isOn {
            view.backgroundColor = .red
            label.text = "If you like White color more, Switch Off and press button to change it"
            label.textColor = .white
            buttonOutlet.setTitle("Change color", for: UIControl.State.normal)
        } else {
            view.backgroundColor = .white
            label.text = "If you like Red color more, Switch On and press button to change it"
            label.textColor = .white
        }
        
    }
    
    @IBAction func mygtukasPaspaustas(_ sender: Any) {
        performSegue(withIdentifier: "perejimasKeturi", sender: self)
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
