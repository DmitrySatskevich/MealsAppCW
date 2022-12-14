//
//  MealsData.swift
//  MealsAppCW
//
//  Created by dzmitry on 14.12.22.
//

import Foundation

class MealsData {
    
    static let shared = MealsData()

    var meals: [Meal]

    private init() {
        meals = [Meal(name: "Картошка", price: 5.0, image: #imageLiteral(resourceName: "FrenchFriesMiddle.png")),
                 Meal(name: "Сок", price: 3.0, image: #imageLiteral(resourceName: "orange_juice_03_450.png")),
                 Meal(name: "Бургер", price: 4.0, image: #imageLiteral(resourceName: "big_tejstyi_new.png"))]
    }
}
