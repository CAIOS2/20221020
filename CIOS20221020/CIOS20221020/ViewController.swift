//
//  ViewController.swift
//  CIOS20221020
//
//  Created by Tadas Petrikas on 2022-10-20.
//

import UIKit





// = section index
enum RecordType: Int, CaseIterable {
    case restaurant = 0
    case dish = 1
    
}

//info perdavimui kitam view
var selectedRecordType: String = ""
var selectedRecordTitle: String = ""
var selectedRecordimageTitle: String = ""




class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // fake structure [(type: String, title: String, imageTitle: String)]
    var listOfRecords = [
        ["restaurant", "Restaurant Zero", "rest0"],
        ["restaurant", "First Restaurant", "rest1"],
        ["dish", "First Dish", "dish0"],
        ["restaurant", "Second Restaurant", "rest2"],
        ["restaurant", "Last Restaurant", "rest3"],
        ["dish", "Second Dish", "dish1"],
        ["dish", "Last Dish", "dish2"],
        ["dish", "One more desert", "dish3"]
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
        
        return typeData.sorted( by: {$0[1] < $1[1] })
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
        

        
        
        let recordsOfType = dataByTypes(String(describing:RecordType.allCases[indexPath.section]))
        
//        let cellView = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        
        // nevykes bandymas
//        let imageTitle = recordsOfType[indexPath.row][2]
//        let imageView = UIImageView(image: UIImage(named: imageTitle))
        
//        cellView.addSubview(imageView)
//        imageView.frame = CGRect(x: 5, y: 5, width: cellView.frame.size.height - 5, height: cellView.frame.size.height - 5)
        
        let record      = recordsOfType[indexPath.row][1]
        let recordType  = recordsOfType[indexPath.row][0]
        let recordImageTitle = recordsOfType[indexPath.row][2]
        
        selectedRecordType          = recordType
        selectedRecordTitle         = record
        selectedRecordimageTitle    = recordImageTitle
        
        cell.textLabel?.text = "\(recordType), \(record)"
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "goToDetails", sender: nil)
        
        let recordsOfType = dataByTypes(String(describing:RecordType.allCases[indexPath.section]))
        
        let record              = recordsOfType[indexPath.row][1]
        let recordType          = recordsOfType[indexPath.row][0]
        let recordImageTitle    = recordsOfType[indexPath.row][2]
        
        selectedRecordType          = recordType
        selectedRecordTitle         = record
        selectedRecordimageTitle    = recordImageTitle
        
       // print(recordsOfType)
        
    }
    

    
    
    
    
    
    
}



