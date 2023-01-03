//
//  FeaturedProductsInteractor.swift
//  BigCart
//
//  Created by Yaroslav Orlov on 02.01.2023.
//

import Foundation

protocol FeaturedProductsBusinessLogic {
  func getProductsData(request: CreateProduct.LoadProduct.Request)
}

class FeaturedProductsInteractor {
  var presenter: FeaturedProductsPresentationLogic?
}

extension FeaturedProductsInteractor: FeaturedProductsBusinessLogic {
  func getProductsData(request: CreateProduct.LoadProduct.Request) {
    let data = Product.dummyData
    let response = CreateProduct.LoadProduct.Response(data: data)
    presenter?.presentProductsData(response: response)
    }
  }
