//
//  ViewController.swift
//  CIOS20221020
//
//  Created by Tadas Petrikas on 2022-10-20.
//

import UIKit

enum TableViewSections: Int, CaseIterable {
    case oneSection
    case anotherSection
    case thirdSection
    
    var numberOfRows: Int {
        return 3
    }
}

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let section = TableViewSections(rawValue: section)
        switch section {
        case .oneSection:
            return 10
        default:
            return 20
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return TableViewSections.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "", for: indexPath) as! CellsTableViewCell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tableView = UITableView()
        tableView.delegate = self
        tableView.dataSource = self
    }


}

