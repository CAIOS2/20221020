//
//  ViewController.swift
//  penktosSavaitesND
//
//  Created by reromac on 2022-10-20.
//

import UIKit

var restoranas: [String] = ["Kaukas", "Studio55", "Piccolo Italia", "Mon Ami"]
var receptas: [String] = ["Cepelinai", "Kijevo kotletas", "Pizza Tre Formaggi", "Cruasane a'la cheffe"]

enum TableViewSections: Int, CaseIterable {
    case restoranai
    case receptai
//    case restoranuSection = 0, Kaukas, Studija55, PiccoloItalia, MonAmi
//    case receptuSection = 8, Cepelinai, KijevoKotletas, PizzaTreFormaggi, CruasaneBordeux
        }
extension TableViewSections {
    var displayLabel: String {
        switch self {
        case .restoranai:
            return "Restoranas"
        case .receptai:
            return "Receptas"
        default: return ""
        }
    }
}
        
//
//    var numberOfRows: Int {
//        return 2
//    }
//func numberOfSections(in tableView: UITableView) -> Int {
//    return TableViewSections.allCases.count
//}


class ViewController: UIViewController {
           
    
    @IBOutlet weak var lentaPradine: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lentaPradine.delegate = self
        lentaPradine.dataSource = self
        lentaPradine.register(UINib(nibName: "navigacijosTableViewCell", bundle: nil), forCellReuseIdentifier: "cele")
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "restoranuSegas" {
//            performSegue(withIdentifier: "restoranuSegas", sender: nil)
    
//}
//        else {
//            performSegue(withIdentifier: "receptoSegas", sender: nil)
//        }
//    }


}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: navigacijosTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cele", for: indexPath) as! navigacijosTableViewCell
        
        let section = TableViewSections.allCases
        print("\(section)")
        
        
        
        cell.labelisCeleje?.text = TableViewSections.allCases.first?.displayLabel
            return cell
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 4
        
//        let section = TableViewSections(rawValue: section)
//        switch section {
//        case .restoranai:
//            return 4
//        case .receptai:
//            return 4
//        default:
//            return 0
        }
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return TableViewSections.allCases.count
            }
//    func getSection(_section :Int) -> TableViewSections {
//            return self.allCases[_section]
//        }
//

    }
//    func tableView(tableView: UITableView!, titleForHeaderInSection section: Int) -> String! {
////        return TableViewSections.receptuSection
//    }
//

    


        
//        let labelisCeleje = TableViewSections.allCases

//        switch labelisCeleje{
//        case .restoranai:
//            cell.labelisCeleje?.text = TableViewSections.allCases.first?.displayLabel
//        case .receptai:
//            cell.labelisCeleje?.text = TableViewSections.allCases.first?.displayLabel
//        default:
//            cell.labelisCeleje?.text = ""
//        }
//        switch labelisCeleje {
//        case .restoranai:
//            return cell.labelisCeleje?.text = "OOO"
//        }
//        let sekcija = TableViewSections[indexPath.row]
//        if indexPath.section == .restoran {
//            cell.labelisCeleje?.text = "Restoranas" }
//        if indexPath.section == 1 {
//            cell.labelisCeleje?.text = "RECEPTAS"


//        }
//    }
extension ViewController: UITableViewDelegate {
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print(restoranas[indexPath.row])
            self.performSegue(withIdentifier: "restoranoSegas", sender: nil)
                    }
                }


