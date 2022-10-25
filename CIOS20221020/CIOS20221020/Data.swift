//
//  Data.swift
//  CIOS20221020
//
//  Created by Dmitrij Aneicik on 2022-10-23.
//

import Foundation

enum Sections: CaseIterable {
    case restaurants
    case recipes
}

struct item {
    
    let name:String
    let section:Sections
    let pic:String
}

let items = [item]()



let restaurants = [
   "Pot Au Feu",
    "The Aviary",
    "Brass Tacks",
    "Cibo Matto",
    "Catch 35",
    "Parallel 37"
]

let recipes = [
    "Turkey-Shrimp Jambalaya",
    "Chicken-Pasta Salad",
    "Beef and Red Onion Bake",
    "Beef-Olive Turnovers",
    "Artichoke and Dried Tomato Pesto"
]


