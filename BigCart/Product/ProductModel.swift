//
//  ProductModel.swift
//  BigCart
//
//  Created by Yaroslav Orlov on 30.12.2022.
//

import Foundation

struct Product: Identifiable, Hashable {
  let id = UUID()
  var image: String
  var price: Double
  var name: String
  var weight: Double
  var isFavorite: Bool
  
  static var dummyData: [Product] = [
    Product(image: "avocado", price: 5.55, name: "avocado", weight: 1.5, isFavorite: false),
    Product(image: "peach", price: 5.55, name: "peach", weight: 1.5, isFavorite: false),
    Product(image: "broccoli", price: 5.55, name: "broccoli", weight: 1.5, isFavorite: false),
    Product(image: "pineapple", price: 5.55, name: "pineapple", weight: 1.5, isFavorite: false)]
}
