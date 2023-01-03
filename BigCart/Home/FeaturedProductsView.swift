//
//  FeaturedProductsView.swift
//  BigCart
//
//  Created by Yaroslav Orlov on 02.01.2023.
//

import SwiftUI

protocol FeaturedProductsDisplayLogic {
  func displayFeaturedProducts(viewModel: CreateProduct.LoadProduct.ViewModel)
}

extension FeaturedProductsView: FeaturedProductsDisplayLogic {
  func displayFeaturedProducts(viewModel: CreateProduct.LoadProduct.ViewModel) {
    products.data = viewModel.vmData
  }
  
  func fetchFeaturedProducts() {
    let request = CreateProduct.LoadProduct.Request()
    interactor?.getProductsData(request: request)
  }
}

struct FeaturedProductsView: View {
  var interactor: FeaturedProductsBusinessLogic?
  @ObservedObject var products = FeaturedProductsDataStore()
  var columns = [GridItem(.flexible(), spacing: 10),
                 GridItem(.flexible(), spacing: 10)]
  
    var body: some View {
      VStack(spacing: 17) {
        HStack {
          Text("Featured products")
            .font(.system(size: 18, weight: .semibold))
          Spacer()
          NavigationLink(destination: CategoriesView()) {
            Image(systemName: "chevron.right")
              .foregroundColor(.gray)
          }
        }
        
        LazyVGrid(columns: columns) {
          ForEach(products.data, id: \.self) { product in
            ProductCell(image: product.image, price: product.price, name: product.name, weight: product.weight, isFavorite: product.isFavorite)
          }
        }
      }
      .padding(.horizontal, 17)
      .onAppear {
        fetchFeaturedProducts()
        print(products.data.count)
      }
    }
}


struct FeaturedProductsView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedProductsView()
    }
}
