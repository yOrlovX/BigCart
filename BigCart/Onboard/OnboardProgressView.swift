//
//  OnboardProgressView.swift
//  BigCart
//
//  Created by Yaroslav Orlov on 22.12.2022.
//

import SwiftUI

struct OnboardProgressView: View {
  @Binding var onboardState: Int
    var body: some View {
      HStack(spacing: 6) {
        ForEach(1...4, id: \.self) { item in
          Rectangle()
            .foregroundColor(onboardState == item ? Colors.primaryDark : .gray.opacity(0.5))
            .frame(width: 8, height: 8)
            .cornerRadius(10)
        }
      }
    }
}

struct OnboardProgressView_Previews: PreviewProvider {
    static var previews: some View {
      OnboardProgressView(onboardState: .constant(1))
    }
}
