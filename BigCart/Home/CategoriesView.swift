//
//  CategoriesView.swift
//  BigCart
//
//  Created by Yaroslav Orlov on 30.12.2022.
//

import SwiftUI

struct CategoriesView: View {
  
  var categoriesData = CategoriesModel.dummyData
  let columns = [GridItem(.flexible(), spacing: 10),
                 GridItem(.flexible(), spacing: 10),
                 GridItem(.flexible(), spacing: 10)]
  
    var body: some View {
      VStack {
        Spacer()
        LazyVGrid(columns: columns) {
          ForEach(categoriesData, id: \.self) { data in
            VStack(spacing: 9) {
              Image(data.image)
                .resizable()
                .scaledToFit()
                .frame(width: 66, height: 66)
              
              Text(data.name)
                .font(.system(size: 10))
                .foregroundColor(.gray)
            }
            .padding(.horizontal, 27)
            .padding(.vertical, 15)
            .background(.white)
          }
        }
        .padding(.horizontal, 17)
        Spacer()
        Spacer()
        Spacer()
      }
      .background(Colors.backgroundGray)
      .navigationBarTitle("Categories")
      .navigationBarTitleDisplayMode(.inline)
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
