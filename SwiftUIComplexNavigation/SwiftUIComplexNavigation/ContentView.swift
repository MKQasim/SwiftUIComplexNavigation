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
  @State private var isActive = false
  
  
    var body: some View {
      NavigationView {
        
        VStack{
          Text("you are going to flip the Coin! do you want to choose head or tail")
          
          NavigationLink(destination: Text("Choosed Heads"), isActive: $isActive) {EmptyView()}
          
          Button("Tap to show Details"){
           
            isActive = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
              isActive = false
            }
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
