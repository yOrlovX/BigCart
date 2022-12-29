//
//  ViewModifiers.swift
//  BigCart
//
//  Created by Yaroslav Orlov on 23.12.2022.
//

import Foundation
import SwiftUI

struct TextFieldViewModifiers: ViewModifier {
  func body(content: Content) -> some View {
    content
      .frame(height: 60)
      .frame(maxWidth: UIScreen.main.bounds.width - 34)
      .background(.white)
      .cornerRadius(10)
  }
}

struct PrimaryButtonModifiers: ViewModifier {
  func body(content: Content) -> some View {
    content
      .frame(height: 60)
      .frame(maxWidth: UIScreen.main.bounds.width - 34)
      .background(LinearGradient(gradient: Gradient(colors: [Colors.primary, Colors.primaryDark]), startPoint: .leading, endPoint: .trailing))
      .cornerRadius(20)
  }
}
