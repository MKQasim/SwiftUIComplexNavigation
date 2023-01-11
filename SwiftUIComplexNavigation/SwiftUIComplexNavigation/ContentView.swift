  //
  //  ContentView.swift
  //  SwiftUIComplexNavigation
  //
  //  Created by KamsQue on 11/01/2023.
  //

import SwiftUI




struct ContentView: View {
  @State private var fullScreen = false
  
  
  var body: some View {
    NavigationView {
      
      Button("Toogle full Screen"){
        self.fullScreen.toggle()
      }
      .navigationTitle("Full screen")
      .navigationBarHidden(fullScreen)
    }
    .statusBarHidden(fullScreen)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
