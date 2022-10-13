//
//  button-ViewController.swift
//  first-App
//
//  Created by Macbook 2019 on 2022-09-29.
//

import UIKit

class button_ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    // spalvų masyvas
    let colors = [UIColor.white, UIColor.darkGray, UIColor.purple, UIColor.systemBlue, UIColor.cyan, UIColor.tintColor]
    // indekso kintamasis
    var index = 0
    // UI butono kintamasis
    @IBOutlet weak var button: UIButton!
    
    /// <#Description#>
    /// - Parameter sender: 1. Paspaudus and button siunčia komandą atprintinti tekstą consolėje. 2. Keičia backgroundo spalvą ir priskiria masyvo indekso nulinę reikšme spalvu counto reikšmei, nes masyve skaičiuojasi nuo 0, o countina nuo 1.
    @IBAction func button(_ sender: Any) {
        print("And it changes background color.")
        button.backgroundColor = .yellow
        self.view.backgroundColor = colors[index]
        if index == colors.count - 1 {
            index = 0
        } else {
            index += 1
        }
    }
    
    
    @IBAction func mygtukasPaspaustas(_ sender: Any) {
        performSegue(withIdentifier: "perejimasTrys", sender: self)
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
