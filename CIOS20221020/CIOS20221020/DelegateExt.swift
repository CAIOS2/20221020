import UIKit

extension ViewController: UITableViewDataSource, UITableViewDelegate{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {return restaurants.count}
        return recipes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if indexPath.section == 0 {
            
            cell.textLabel?.text = restaurants[indexPath.row]
            cell.imageView?.image = UIImage(named: "rest\(indexPath.row+1)")
        } else {
            
            cell.textLabel?.text = recipes[indexPath.row]
            cell.imageView?.image = UIImage(named: "rec\(indexPath.row+1)")
        }
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {return "Restaurants"}
        return "Recipes"
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        70
    }
}

