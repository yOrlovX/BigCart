//
//  HomeView.swift
//  BigCart
//
//  Created by Yaroslav Orlov on 30.12.2022.
//

import SwiftUI

struct HomeView: View {
  var categoriesData = CategoriesModel.dummyData
  var productsData = ProductModel.dummyData
  var columns = [GridItem(.flexible(), spacing: 10),
                 GridItem(.flexible(), spacing: 10)]
  
    var body: some View {
      VStack {
//        Text("Searchbar here -<<<<<<<<<<<<<<<<")
        
        ScrollView(.vertical, showsIndicators: false) {
          discountContainer
          categoriesContainer
            .padding(.top, 20)
          featuredProductsContainer
            .padding(.top, 20)
        }
      }
      .navigationTitle("")
      .background(Colors.backgroundGray)
    }
}

extension HomeView {
  private var categoriesContainer: some View {
    VStack(spacing: 17) {
      HStack {
        Text("Categories")
          .font(.system(size: 18, weight: .semibold))
        Spacer()
        NavigationLink(destination: CategoriesView()) {
          Image(systemName: "chevron.right")
            .foregroundColor(.gray)
        }
      }
      
      ScrollView(.horizontal, showsIndicators: false) {
        HStack(spacing: 18) {
          ForEach(categoriesData, id: \.self) { data in
            VStack {
              Image(data.image)
                .resizable()
                .scaledToFit()
                .frame(width: 52, height: 52)
              
              Text(data.name)
                .font(.system(size: 10))
                .foregroundColor(.gray)
            }
          }
        }
      }
    }
    .padding(.horizontal, 17)
  }
  
  private var discountContainer: some View {
    ZStack {
      Image("homeDiscount")
        .resizable()
        .scaledToFit()
    }
    .padding(.horizontal, 17)
  }
  
  private var featuredProductsContainer: some View {
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
        ForEach(productsData, id: \.self) { data in
          ProductCell(image: data.image, price: data.price, name: data.name, weight: data.weight, isFavorite: data.isFavorite)
        }
      }
    }
    .padding(.horizontal, 17)
  }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
