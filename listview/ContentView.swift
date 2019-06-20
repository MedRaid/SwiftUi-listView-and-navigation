//
//  ContentView.swift
//  listview
//
//  Created by RaidRaddaoui on 19/06/2019.
//  Copyright © 2019 RaidRaddaoui. All rights reserved.
//

import SwiftUI

struct User: Identifiable {
    var id: Int
    
    let username, message, imageName: String
}

struct ContentView : View {
   var users: [User] = [
        .init(id: 0, username: "Mohamed Raid raddaoui", message: "Junior iOS developer", imageName: "kenny"),
        .init(id: 1, username: "Maher gafsi", message: "Junior Android developer", imageName: "kenny"),
        .init(id: 2, username: "Othman gafsi", message: "Senior Web developer Senior Web developer Senior Web developer Senior Web developer Senior Web developer Senior Web developer Senior Web developer", imageName: "kenny") ]
    
    var body: some View {
        NavigationView{
            List(users){ usr in
                    NavigationButton(destination:
                    SecondContentView(usr: usr)){
                    usersCell(user: usr)
                }
                }
            }.navigationBarTitle(Text("Dynamic list"))
        }
}

struct usersCell: View {
    let user: User
    
    var body: some View{
        
    
    HStack{
        Image(user.imageName)
        .resizable()
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.black, lineWidth: 4))
        .frame(width: 80, height: 50)
    
        VStack(alignment: .leading, spacing: 2){
            Text(user.username).font(.headline)
            Text(user.message).font(.subheadline).color(Color.gray).lineLimit(nil)
        }
    }.padding(.init(top: 12, leading: 0, bottom: 12, trailing: 0))
    }
}
