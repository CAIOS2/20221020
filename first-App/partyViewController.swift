
//  partyViewController.swift
//  first-App
//
//  Created by Macbook 2019 on 2022-10-02.


import UIKit

class partyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet var manoTableView: UITableView!
    var naujasUseris: String = ""
    var invitees = ["Jonas", "Petras", "Maryte", "Ieva", "Juozas", "Marija", "Mantas", "Renata", "Aurelija", "Lukas"]
    var invited: [Bool] = [true, false, false, true, true, true, false, true, true, false]
    var invitation: Bool = false
    override func viewDidLoad() {
//        invitees[10] = "\(naujasUseris)"
        invitees.append(naujasUseris)
        invited.append(true)
        super.viewDidLoad()
        manoTableView.register(UINib(nibName: "partyTableViewCell", bundle: nil), forCellReuseIdentifier: "xibCele")

        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        invitees.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "xibCele", for: indexPath) as! partyTableViewCell
        cell.invitee.text = invitees[indexPath.row]
        if invited[indexPath.row] == false {
            cell.color.backgroundColor = UIColor.red
        } else {
            cell.color.backgroundColor = .green
        }

        return cell

        
        
        
        
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
