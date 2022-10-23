//
//  ViewController.swift
//  CIOS20221020
//
//  Created by Tadas Petrikas on 2022-10-20.
//

import UIKit
//class RestaurantsRecipes{
//    var restaurantNames: [String] = []
//    var recipeNames: [String] = []
//    func information (restaurant: [String], recipe: [String]) {
//        self.restaurantNames = restaurant
//        self.recipeNames = recipe
//    }

    class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
        
        
        @IBOutlet weak var tableView: UITableView!
        
//        var restaurantNames = ["Cili pica", "Katpedele", "Kebabine", "Kibinine", "Surio namai"]
//        var recipeNames = ["Surio pica", "Bulviniai blynai", "Astrus kebabas", "Kibinas su vistiena", "Surio pyragas"]
        
//        var restaurantRecipes = [RestaurantsRecipes]()
        override func viewDidLoad() {
            super.viewDidLoad()
            restaurantNames.append("Cili pica")
            restaurantNames.append("Katpedele")
            restaurantNames.append("Kebabine")
            restaurantNames.append("Kibinine")
            recipeNames.append("Surio pica")
            recipeNames.append("Bulviniai blynai")
            recipeNames.append("Astrus kebabas")
            recipeNames.append("Kibinas su vistiena")
        
            tableView.dataSource = self
            //        recipeTableView.dataSource = self
        }
        
        func numberOfSections(in tableView: UITableView) -> Int {
            return 2
        }
        

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return restaurantNames.count
        }

        var restaurantNames: [String] = []
        var recipeNames: [String] = []
        

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "cele", for: indexPath)
            cell.textLabel?.text = restaurantNames[indexPath.row]
            return cell
        }
//        func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//            if section == 0 {return
//                "Restaurants"}
//            return "Recipes"
//        }
//        func prototype( _tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            return recipeNames.count
//        }
//        func prototype(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//            let cele = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
//            cele.textLabel?.text = recipeNames[indexPath.row]
//            return cele
//        }
        
    }
    
