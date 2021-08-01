//
//  Restaurant.swift
//  RXSwiftDemo
//
//  Created by Mahesh on 01/08/21.
//

import Foundation

struct Restaurant : Decodable {
    let name : String
    let cuisine: Cuisine
}

enum Cuisine : String, Decodable {
    case european
    case indian
    case maxican
    case french
    case english
}
