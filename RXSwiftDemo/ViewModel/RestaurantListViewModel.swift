//
//  RestaurantListViewModel.swift
//  RXSwiftDemo
//
//  Created by Mahesh on 01/08/21.
//

import Foundation
import RxSwift

final class RestaurantListViewModel {
    let title = "Restaurants"
    let restaurantService : RestaurantServiceProtocol
    
    init(restaurantService: RestaurantServiceProtocol = RestaurantService()) {
        self.restaurantService = restaurantService
    }
    
    func fetchRestaurantsViewModels() -> Observable<[RestaurantViewModel]> {
        restaurantService.fetchRestaurants().map{ $0.map { RestaurantViewModel(restaurant: $0) }}
    }
}
