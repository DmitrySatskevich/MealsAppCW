//
//  Meal.swift
//  MealsAppCW
//
//  Created by dzmitry on 14.12.22.
//

import UIKit

struct Meal {
    let name: String
    let price: Double
    let image: UIImage?
    
    var feedbacks: [Feedback] = []
    
    // Вычисляемые свойства
    
    var ratingBar: String {
        if let rating = rating {
            return String(repeating: "⭐️", count: Int(rating.rounded(.up))) // округленный к большему
        } else {
            return "There are no reviews yet"
        }
    }
    
    // MARK: Private
    
    private var rating: Double? {
        if feedbacks.isEmpty {
            return nil
        } else {
            var sum: Double = 0
            for review in feedbacks {
                sum += review.mark
            }
            return sum / Double(feedbacks.count)
        }
    }
}
