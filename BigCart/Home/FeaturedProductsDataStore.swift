//
//  FeaturedProductsDataStore.swift
//  BigCart
//
//  Created by Yaroslav Orlov on 02.01.2023.
//

import Foundation

class FeaturedProductsDataStore: ObservableObject {
  @Published var data: [Product] = []
}
