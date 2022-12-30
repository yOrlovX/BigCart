//
//  CategoriesModel.swift
//  BigCart
//
//  Created by Yaroslav Orlov on 30.12.2022.
//

import Foundation

struct CategoriesModel: Identifiable, Hashable {
  let id = UUID()
  let image: String
  let name: String
  
  static var dummyData: [CategoriesModel] = [CategoriesModel(image: "vegetables", name: "Vegetables"),
                                             CategoriesModel(image: "fruits", name: "Fruits"),
                                             CategoriesModel(image: "beverages", name: "Beverages"),
                                             CategoriesModel(image: "grocery", name: "Grocery"),
                                             CategoriesModel(image: "edibleOil", name: "Edible oil"),
                                             CategoriesModel(image: "household", name: "Household"),
                                             CategoriesModel(image: "babycare", name: "Babycare")]
}
