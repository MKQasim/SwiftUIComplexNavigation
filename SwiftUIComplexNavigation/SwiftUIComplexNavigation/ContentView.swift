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

class User : ObservableObject{
  @Published var score = 0
}

struct ChangeView: View {
  
  
  @EnvironmentObject var user : User
  
  
  var body : some View{
    VStack {
      Text("Score \(user.score)")
      Button("Increase ") {
        self.user.score += 1
      }
    }
  }
}

struct ContentView: View {
  @ObservedObject var user = User()
  
  
    var body: some View {
      NavigationView {
        
        VStack{
          Text("Score currently is \(user.score)")
          
          NavigationLink(destination: ChangeView()) {
            Text("Show Details")
          }
       
        }
        .navigationTitle("Navigation")
      }
      .environmentObject(user)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
      ContentView()
    }
}
