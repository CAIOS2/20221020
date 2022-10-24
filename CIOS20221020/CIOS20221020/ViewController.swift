//
//  ViewController.swift
//  CIOS20221020
//
//  Created by Tadas Petrikas on 2022-10-20.
//

import UIKit






class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    

    

    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource    = self
        tableView.delegate      = self
        tableView.register(UITableViewCell.self,
                           forCellReuseIdentifier: "cell")
        
        // neisivaizduoju kam
        view.addSubview(tableView)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "hi, \(indexPath.section)::\(indexPath.row)"
        return cell
    }
    
    
    
    
    
}



