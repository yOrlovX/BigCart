//
//  OnboardView.swift
//  BigCart
//
//  Created by Yaroslav Orlov on 23.12.2022.
//

import SwiftUI

struct OnboardView: View {
  @State private var onboardState: Int = 1
  
  var body: some View {
    NavigationView {
      ZStack {
        switch onboardState {
        case 1 :
          firstOnboardView
        case 2 :
          secondOnboardView
        case 3 :
          thirdOnboardView
        case 4 :
          fourthOnboardView
        default:
          EmptyView()
        }
      }
      .navigationTitle("")
    }
    .accentColor(Colors.primaryDark)
    .navigationViewStyle(StackNavigationViewStyle())
  }
}

extension OnboardView {
  private var firstOnboardView: some View {
    VStack {
      VStack(spacing: 6) {
        Text("Welcome to")
          .font(.system(size: 30))
        Text("Big Cart")
          .foregroundColor(Colors.primaryDark)
          .font(.system(size: 30))
        Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy")
          .foregroundColor(Colors.grayText)
          .font(.system(size: 15))
          .multilineTextAlignment(.center)
          .padding(.horizontal)
        Spacer()
        VStack(spacing: 32) {
          OnboardProgressView(onboardState: $onboardState)
          Button(action: { self.onboardState += 1}) {
            Text("Get started")
              .modifier(PrimaryButtonModifiers())
          }
        }
      }
      .padding(EdgeInsets(top: 50, leading: 0, bottom: 50, trailing: 0))
    }
    .background(Image("splash1")
                  .ignoresSafeArea(edges: .top)
    )
  }
  
  private var secondOnboardView: some View {
    VStack {
      VStack(spacing: 6) {
        Text("Buy Quality")
          .font(.system(size: 30))
        Text("Dairy Products")
          .foregroundColor(Colors.primaryDark)
          .font(.system(size: 30))
        Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy")
          .foregroundColor(Colors.grayText)
          .font(.system(size: 15))
          .multilineTextAlignment(.center)
          .padding(.horizontal)
        Spacer()
        VStack(spacing: 32) {
          OnboardProgressView(onboardState: $onboardState)
          Button(action: { self.onboardState += 1 }) {
            Text("Get started")
              .modifier(PrimaryButtonModifiers())
          }
        }
      }
      .padding(EdgeInsets(top: 50, leading: 0, bottom: 50, trailing: 0))
    }
    .background(Image("splash2")
                  .ignoresSafeArea(edges: .top)
    )
  }
  
  private var thirdOnboardView: some View {
    VStack {
      VStack(spacing: 6) {
        Text("Buy Premium")
          .font(.system(size: 30))
        Text("Quality Fruits")
          .foregroundColor(Colors.primaryDark)
          .font(.system(size: 30))
        Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy")
          .foregroundColor(Colors.grayText)
          .font(.system(size: 15))
          .multilineTextAlignment(.center)
          .padding(.horizontal)
        Spacer()
        VStack(spacing: 32) {
          OnboardProgressView(onboardState: $onboardState)
          Button(action: {self.onboardState += 1}) {
            Text("Get started")
              .modifier(PrimaryButtonModifiers())
          }
        }
      }
      .padding(EdgeInsets(top: 50, leading: 0, bottom: 50, trailing: 0))
    }
    .background(Image("splash3")
                  .ignoresSafeArea(edges: .top)
    )
  }
  
  private var fourthOnboardView: some View {
    VStack {
      VStack(spacing: 6) {
        Text("Get Discounts")
          .font(.system(size: 30))
        Text("On All Products")
          .foregroundColor(Colors.primaryDark)
          .font(.system(size: 30))
        Text("Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy")
          .foregroundColor(Colors.grayText)
          .font(.system(size: 15))
          .multilineTextAlignment(.center)
          .padding(.horizontal)
        Spacer()
        VStack(spacing: 32) {
          OnboardProgressView(onboardState: $onboardState)
          NavigationLink(destination: WelcomeView()) {
              Text("Get started")
              .modifier(PrimaryButtonModifiers())
          }
        }
      }
      .padding(EdgeInsets(top: 50, leading: 0, bottom: 50, trailing: 0))
    }
    .background(Image("splash4")
                  .ignoresSafeArea(edges: .top)
    )
  }
}

struct OnboardView_Previews: PreviewProvider {
  static var previews: some View {
    OnboardView()
  }
}

