//
//  ContentView.swift
//  BigCart
//
//  Created by Yaroslav Orlov on 22.12.2022.
//

import SwiftUI

struct ContentView: View {
  @State var testToggle: Bool = false
  
  var body: some View {
    HStack {
      VStack(alignment: .leading) {
        Toggle("", isOn: $testToggle)
      }
      Spacer()
      Spacer()
      Spacer()
    }
  }
}
struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
