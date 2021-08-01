//
//  RestaurantViewModel.swift
//  RXSwiftDemo
//
//  Created by Mahesh on 01/08/21.
//

import Foundation
struct RestaurantViewModel {
    private let restaurant: Restaurant
    var displayText : String {
        return restaurant.name + " - " + restaurant.cuisine.rawValue.capitalized
    }
    init(restaurant : Restaurant) {
        self.restaurant = restaurant
    }
}
