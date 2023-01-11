//
//  ContentView.swift
//  SwiftUIComplexNavigation
//
//  Created by KamsQue on 11/01/2023.
//

import SwiftUI


struct ResultView : View {
  var choice : String
  var body : some View{
    Text("Choice : \(choice)")
  }
}

struct ContentView: View {
  @State private var selection : String? = nil
  
  
    var body: some View {
      NavigationView {
        
        VStack{
          Text("you are going to flip the Coin! do you want to choose head or tail")
          
          NavigationLink(destination: Text("First"), tag: "1", selection: $selection) {EmptyView()}
          NavigationLink(destination: Text("Second"), tag: "2", selection: $selection) {EmptyView()}
          
          Button("Tap to show Details"){
            selection = "1"
          }
          
          Button("Tap to show Details"){
            selection = "2"
          }
        }
        .navigationTitle("Navigation")
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
    }
}
