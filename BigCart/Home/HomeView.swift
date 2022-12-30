//
//  HomeView.swift
//  BigCart
//
//  Created by Yaroslav Orlov on 30.12.2022.
//

import SwiftUI

struct HomeView: View {
  var categoriesData = CategoriesModel.dummyData
  
    var body: some View {
      VStack {
        Text("Searchbar here -<<<<<<<<<<<<<<<<")
        categoriesContainer
        
      }
    }
}


extension HomeView {
  private var categoriesContainer: some View {
    VStack(spacing: 17) {
      HStack {
        Text("Categories")
          .font(.system(size: 18, weight: .semibold))
        Spacer()
        Image(systemName: "chevron.right")
          .foregroundColor(.gray)
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
    .padding(.horizontal, 34)
  }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
