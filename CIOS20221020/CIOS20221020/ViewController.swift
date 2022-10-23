//
//  ViewController.swift
//  CIOS20221020
//
//  Created by Tadas Petrikas on 2022-10-20.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
//        recipeTableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let restaurantNames = ["Cili pica", "Katpedele", "Kebabine", "Kibinine", "Surio namai"]
        let cell = tableView.dequeueReusableCell(withIdentifier: "cele", for: indexPath)
        cell.textLabel?.text = restaurantNames[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {return
            "Restaurants"}
        return "Recipes"
    }
    
    
}
    

