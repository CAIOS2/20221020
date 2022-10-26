//
//  ViewController.swift
//  CIOS20221020
//
//  Created by Tadas Petrikas on 2022-10-20.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var selectedRow = 0
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       tableView.dataSource = self
        tableView.delegate = self
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let vc = segue.destination as? restVC{
            vc.indexRow = selectedRow
        }
        
        if let vc = segue.destination as? recipesVC{
            vc.indexRow = selectedRow
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.section{
            
        case 0:
            selectedRow = indexPath.row
            performSegue(withIdentifier: "seg1", sender: nil)
            
        case 1:
            selectedRow = indexPath.row
            performSegue(withIdentifier: "seg2", sender: nil)
        
        default:
            break
        }
        
        
    }

}

