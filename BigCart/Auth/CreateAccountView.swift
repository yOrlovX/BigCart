//
//  LoginView.swift
//  BigCart
//
//  Created by Yaroslav Orlov on 25.12.2022.
//

import SwiftUI

struct CreateAccountView: View {
  @State private var email: String = ""
  @State private var password: String = ""
  @State private var isSecured: Bool = false
  @State private var isRemember: Bool = false
  
  var body: some View {
    VStack(spacing: 0) {
      Image("auth3")
        .resizable()
        .scaledToFill()
        .ignoresSafeArea(edges: .top)
      VStack(spacing: 25) {
        bottomContainer
        textFieldsContainer
        buttonsContainer
      }
      .frame(maxWidth: .infinity)
      .background(Colors.backgroundGray)
      .cornerRadius(20)
      .ignoresSafeArea(edges: .bottom)
    }
  }
}

extension CreateAccountView {
  private var bottomContainer: some View {
    HStack {
      VStack(alignment: .leading, spacing: 2) {
        Text("Create account")
          .font(.system(size: 25, weight: .semibold))
          .padding(.horizontal)
        
        Text("Quickly create account")
          .foregroundColor(Colors.grayText)
          .font(.system(size: 15))
          .padding(.horizontal)
      }
      .padding(.top, 30)
      Spacer()
    }
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
      Button(action: {}) {
        Text("Signup")
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

struct CreateAccountView_Previews: PreviewProvider {
    static var previews: some View {
      CreateAccountView()
    }
}
