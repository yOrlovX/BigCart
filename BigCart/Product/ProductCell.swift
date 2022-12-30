//
//  ProductCell.swift
//  BigCart
//
//  Created by Yaroslav Orlov on 30.12.2022.
//

import SwiftUI

struct ProductCell: View {
  
  @State var stepperCount: Int = 1
  private var image: String
  private var price: Double
  private var name: String
  private var weight: Double
  private var isFavorite: Bool
  
  init(image: String, price: Double, name: String, weight: Double, isFavorite: Bool) {
    self.image = image
    self.price = price
    self.name = name
    self.weight = weight
    self.isFavorite = isFavorite
  }
  
    var body: some View {
      VStack {
        HStack {
          Spacer()
          Image(systemName: "heart")
            .resizable()
            .scaledToFit()
            .frame(width: 16, height: 16)
        }
        .padding(.top, 9)
        .padding(.trailing, 9)
        Image(image)
          .resizable()
          .scaledToFit()
          .frame(width: 84, height: 84)
        
        Text("$\(price)")
          .font(.system(size: 12, weight: .medium))
          .foregroundColor(Colors.primaryDark)
        
        Text(name)
          .font(.system(size: 15, weight: .semibold))
        
        Text("\(weight) lbs")
          .font(.system(size: 12))
          .foregroundColor(.gray)
        
        Divider()
        
        Stepper("\(stepperCount)", value: $stepperCount)
          .frame(width: 50)
          .padding(.top, 10)
        Text("\(stepperCount)")
        
        Divider()
        
        Button(action: {}) {
          HStack(spacing: 9) {
            Image(systemName: "cart")
              .resizable()
              .scaledToFit()
              .frame(width: 15, height: 15)
              .foregroundColor(Colors.primaryDark)
            
            Text("Add to cart")
              .foregroundColor(.black)
          }
        }
        .padding(.vertical, 10)
      }
      .background(.white)
      .cornerRadius(20)
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
      ProductCell(image: "peach", price: 5.55, name: "peach", weight: 1.5, isFavorite: false)
        .previewLayout(.sizeThatFits)
    }
}
