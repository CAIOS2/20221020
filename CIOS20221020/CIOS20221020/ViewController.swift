//
//  ViewController.swift
//  CIOS20221020
//
//  Created by Tadas Petrikas on 2022-10-20.
//

import UIKit


//class List {
//    let record: [(type: String, title: String, imageTitle: String)]
//
//    init(record: [(type: String, title: String, imageTitle: String)]) {
//        self.record = record
//    }
//
//
//
//    // grazinti turi iraso pavadinima pagal index
//     func returnTitle(_ index: Int) -> String {
//        return self.record[index].title
//    }
//
//
//    }



//let record0 = List(record: [("restaurant", "Restaurant Zero", "rest0")])
//let record1 = List(record: [("restaurant", "First Restaurant", "rest1")])
//let record2 = List(record: [("restaurant", "Second Restaurant", "rest2")])
//let record3 = List(record: [("restaurant", "Last Restaurant", "rest3")])
//let record4 = List(record: [("dish", "First Dish", "dish0")])
//let record5 = List(record: [("dish", "Second Dish", "dish1")])
//let record6 = List(record: [("dish", "Last Dish", "dish2")])
//
//
//let allRecords = (record0,
//                  record1,
//                  record2,
//                  record3,
//                  record4,
//                  record5,
//                  record6
//                )




// = section index
enum RecordType: Int, CaseIterable {
    case restaurant = 0
    case dish = 1
    
}



class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // fake structure [(type: String, title: String, imageTitle: String)]
    let listOfRecords = [
        ["restaurant", "Restaurant Zero", "rest0"],
        ["restaurant", "First Restaurant", "rest1"],
        ["dish", "First Dish", "dish0"],
        ["restaurant", "Second Restaurant", "rest2"],
        ["restaurant", "Last Restaurant", "rest3"],
        ["dish", "Second Dish", "dish1"],
        ["dish", "Last Dish", "dish2"]
    ]

    // suskaiciuojam pagal tipus kiek irasu
    func quantityByTypes(_ type: String) -> Int {
        var qnt = 0
        for i in 0..<self.listOfRecords.count {
            if self.listOfRecords[i][0] == type {
                qnt += 1
            }
        }
        return qnt
    }
    
    //pabandom pasidaryti duomenu masyva pagal tipus
    func dataByTypes(_ type: String) -> [[String]] {
        var typeData = [[String]]()
        for i in 0..<self.listOfRecords.count {
            if self.listOfRecords[i][0] == type {
                typeData.append(self.listOfRecords[i])
            }
        }
        
        return typeData
    }
    
    

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
    
    
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let label = UILabel()
        let type = String(describing:RecordType.allCases[section])
        label.text = "Section: \(type)"
        label.backgroundColor = .systemGray6
        return label
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        let countOfSections = RecordType.allCases.count
        return countOfSections
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let qnt = quantityByTypes(String(describing:RecordType.allCases[section]))
        return qnt
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        // let record = self.listOfRecords[indexPath.row][1]
        // let recordType = self.listOfRecords[indexPath.row][0]
        
        let recordsOfType = dataByTypes(String(describing:RecordType.allCases[indexPath.section]))
        let record = recordsOfType[indexPath.row][1]
        let recordType = recordsOfType[indexPath.row][0]
        
        cell.textLabel?.text = "\(recordType), \(record)"
        return cell
    }
    
    
    
    
    
}



