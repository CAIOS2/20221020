//
//  ViewController.swift
//  CIOS20221020
//
//  Created by Tadas Petrikas on 2022-10-20.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    

    @IBOutlet weak var tableView: UITableView!
    let restaurantNames = ["Cili pica", "Katpedele", "Kebabine", "Kibinine", "Surio namai"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "UITableView"
        tableView.dataSource = self
        tableView.delegate = self
        let nibName = UINib(nibName: "restaurantTableViewCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "cele")
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNames.count
    
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cele", for: indexPath) as! restaurantTableViewCell
        cell.commonInit("Got_\(indexPath.item)", restaurantName: restaurantNames[indexPath.item])
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 86
    }
    
    
}
