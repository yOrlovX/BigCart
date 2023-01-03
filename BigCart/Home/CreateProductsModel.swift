//
//  CreateProductsModel.swift
//  BigCart
//
//  Created by Yaroslav Orlov on 02.01.2023.
//

import Foundation

enum CreateProduct {
  enum LoadProduct {
    struct Request {}

    struct Response {
      var data: [Product]
    }

    struct ViewModel {
      var vmData: [Product]
    }
  }
}
