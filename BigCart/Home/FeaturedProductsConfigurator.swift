//
//  FeaturedProductsConfigurator.swift
//  BigCart
//
//  Created by Yaroslav Orlov on 03.01.2023.
//

import SwiftUI

extension FeaturedProductsView {
  func configureView() -> some View {
    var view = self
    let interactor = FeaturedProductsInteractor()
    let presenter = FeaturedProductsPresenter()
    view.interactor = interactor
    interactor.presenter = presenter
    presenter.view = view
    
    return view
  }
}
