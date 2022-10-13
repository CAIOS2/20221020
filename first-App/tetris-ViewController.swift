//
//  tetris-ViewController.swift
//  first-App
//
//  Created by Macbook 2019 on 2022-09-29.
//

import UIKit

class tetris_ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func perejimasDu(_ sender: Any) {
        performSegue(withIdentifier: "perejimasDu", sender: self)
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
