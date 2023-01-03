//
//  FeaturedProductsPresenter.swift
//  BigCart
//
//  Created by Yaroslav Orlov on 02.01.2023.
//

import Foundation

protocol FeaturedProductsPresentationLogic {
  func presentProductsData(response: CreateProduct.LoadProduct.Response)
}

class FeaturedProductsPresenter {
  var view: FeaturedProductsDisplayLogic?
}

extension FeaturedProductsPresenter: FeaturedProductsPresentationLogic {
  func presentProductsData(response: CreateProduct.LoadProduct.Response) {
    let viewModel = CreateProduct.LoadProduct.ViewModel(vmData: response.data)
    view?.displayFeaturedProducts(viewModel: viewModel)
  }
}


