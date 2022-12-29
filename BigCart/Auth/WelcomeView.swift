//
//  WelcomeView.swift
//  BigCart
//
//  Created by Yaroslav Orlov on 23.12.2022.
//

import SwiftUI

struct WelcomeView: View {
  var body: some View {
    ZStack {
      VStack(spacing: 0) {
        GeometryReader { _ in
          Image("auth1")
            .resizable()
            .scaledToFill()
        }
        bottomContainer
      }
    }
    .ignoresSafeArea()
  }
}

extension WelcomeView {
  private var bottomContainer: some View {
    VStack {
      VStack(alignment: .leading, spacing: 2) {
        Text("Welcome")
          .font(.system(size: 25, weight: .semibold))
          .padding(.horizontal)
        Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy")
          .foregroundColor(Colors.grayText)
          .font(.system(size: 15))
          .padding(.horizontal)
      }
      .padding(.top, 30)
      
      containerButtons
    }
    .frame(maxWidth: .infinity)
    .background(Colors.backgroundGray)
    .cornerRadius(20)
  }
  
  private var containerButtons: some View {
    VStack(spacing: 12) {
      Button(action: {}) {
        HStack {
          Image("google")
            .resizable()
            .frame(width: 22, height: 22)
            .padding(.leading, 33)
          Spacer()
          Text("Continue with google")
            .font(.system(size: 15, weight: .medium))
            .foregroundColor(.black)
          Spacer()
          Spacer()
          
        }
        .frame(height: 60)
        .frame(maxWidth: UIScreen.main.bounds.width - 34)
        .background(.white) //change!
        .cornerRadius(20)
      }
      
      Button(action: {}) {
        HStack {
          Image(systemName: "person.circle")
            .resizable()
            .frame(width: 26, height: 26)
            .foregroundColor(.white)
            .padding(.leading, 33)
          Spacer()
          Text("Create an account")
            .font(.system(size: 15, weight: .medium))
            .foregroundColor(.white)
          Spacer()
          Spacer()
        }
        .frame(height: 60)
        .frame(maxWidth: UIScreen.main.bounds.width - 34)
        .background(LinearGradient(gradient: Gradient(colors: [Colors.primary, Colors.primaryDark]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(20)
      }
      HStack(spacing: 5) {
        Text("Already have an account ?")
          .font(.system(size: 15, weight: .light))
          .foregroundColor(.gray)
        Text("Login")
          .font(.system(size: 15, weight: .medium))
      }
      .padding(.bottom, 40)
    }
  }
}

struct WelcomeView_Previews: PreviewProvider {
  static var previews: some View {
    WelcomeView()
  }
}
