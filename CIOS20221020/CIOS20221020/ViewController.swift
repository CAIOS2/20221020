//
//  ViewController.swift
//  CIOS20221020
//
//  Created by Tadas Petrikas on 2022-10-20.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.section{
            
        case 0:
            performSegue(withIdentifier: "seg1", sender: nil)
            
        case 1:
            performSegue(withIdentifier: "seg2", sender: nil)
        
        default:
            break
        }
        
        
    }

}

