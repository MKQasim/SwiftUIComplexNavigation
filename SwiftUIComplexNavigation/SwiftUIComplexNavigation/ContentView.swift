  //
  //  ContentView.swift
  //  SwiftUIComplexNavigation
  //
  //  Created by KamsQue on 11/01/2023.
  //

import SwiftUI


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
      }
      .navigationTitle("Navigation")
      .navigationBarItems(leading:
                            HStack(
                              spacing: 0, content: {
                                Button("Multiply 1") {
                                  self.user.score  *= 1
                                }
                                Button("Devide 1") {
                                  self.user.score  /= 1
                                }
                              }), trailing:
                            HStack(   
                              spacing: 0, content: {
                                Button("Add 1") {
                                  self.user.score  += 1
                                }
                                Button("minus 1") {
                                  self.user.score  -= 1
                                }
                              })
                          
      )
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
