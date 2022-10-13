//
//  delegacijuViewViewController.swift
//  first-App
//
//  Created by Macbook 2019 on 2022-10-02.
//

import UIKit

class delegacijuViewViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    //    var manoSeguai: [String] = ["seg1", "seg2", "seg3", "seg4", "seg5", "seg6"]
    @IBOutlet weak var manoTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        8
        //        manoSeguai.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cele", for: indexPath)
        
        cell.textLabel?.text = "Uzduotis \(indexPath.row+1)"
        //        cell.textLabel?.text = manoSeguai[indexPath.row]
        cell.textLabel?.textColor = .white
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "seg\(indexPath.row+1)", sender: nil)
        //        performSegue(withIdentifier: manoSeguai[indexPath.row], sender: nil)    }
        
        
        
        
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
