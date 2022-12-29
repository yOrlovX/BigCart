//
//  LoginView.swift
//  BigCart
//
//  Created by Yaroslav Orlov on 23.12.2022.
//

import SwiftUI

struct LoginView: View {
  @State private var email: String = ""
  @State private var password: String = ""
  @State private var isSecured: Bool = false
  @State private var isRemember: Bool = false
  
  var body: some View {
    ZStack {
      VStack(spacing: 0) {
        GeometryReader { _ in
          Image("auth2")
            .resizable()
            .scaledToFill()
        }
        bottomContainer
      }
    }
    .ignoresSafeArea()
  }
}

extension LoginView {
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
      
      textFieldsContainer
      buttonsContainer
    }
    .frame(maxWidth: .infinity)
    .background(Colors.backgroundGray)
    .cornerRadius(20)
  }
  
  private var textFieldsContainer: some View {
    VStack(spacing: 5) {
      HStack {
        Image(systemName: "mail")
          .resizable()
          .scaledToFit()
          .frame(width: 23, height: 17)
          .foregroundColor(.gray)
          .padding(.leading, 28)
        TextField("Email Address", text: $email)
          .padding()
      }
      .modifier(TextFieldViewModifiers())
      HStack {
        Image(systemName: "lock.fill")
          .resizable()
          .scaledToFit()
          .frame(width: 23, height: 17)
          .foregroundColor(.gray)
          .padding(.leading, 28)
        if isSecured {
          SecureField("", text: $password)
            .overlay(alignment: .trailing) {
              Button(action: { self.isSecured.toggle() }) {
                Image(systemName: self.isSecured ? "eye.slash" : "eye")
                  .foregroundColor(.gray)
              }
              .padding(.trailing, 16)
            }
            .modifier(TextFieldViewModifiers())
        } else {
          TextField("", text: $password)
            .padding()
            .overlay(alignment: .trailing) {
              Button(action: { self.isSecured.toggle() }) {
                Image(systemName: self.isSecured ? "eye.slash" : "eye")
                  .foregroundColor(.gray)
              }
              .padding(.trailing, 16)
            }
        }
      }
      .modifier(TextFieldViewModifiers())
    }
  }
  
  private var buttonsContainer: some View {
    VStack {
      HStack {
        Button(action: { self.isRemember.toggle() }) {
          HStack {
            Image(systemName: isRemember ? "checkmark.square" : "square")
              .foregroundColor(.gray)
            Text("Remember me")
              .font(.system(size: 15, weight: .medium))
              .foregroundColor(.gray)
          }
        }
        Spacer()
        Text("Forgot password")
          .font(.system(size: 15, weight: .medium))
          .foregroundColor(.blue)
      }
      .padding(.horizontal)
      .padding(.vertical, 15)
      
      Button(action: {}) {
        Text("Login")
          .font(.system(size: 15, weight: .semibold))
          .foregroundColor(.white)
      }
      .modifier(PrimaryButtonModifiers())
      HStack(spacing: 5) {
        Text("Already have an account ?")
          .font(.system(size: 15, weight: .light))
          .foregroundColor(.gray)
        Text("Login")
          .font(.system(size: 15, weight: .medium))
      }
      .padding(.bottom, 40)
      .padding(.top, 20)
    }
  }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
