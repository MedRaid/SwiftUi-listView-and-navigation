//
//  SecondContentView.swift
//  listview
//
//  Created by RaidRaddaoui on 20/06/2019.
//  Copyright © 2019 RaidRaddaoui. All rights reserved.
//

import SwiftUI

struct SecondContentView : View {
    let usr: User
    var body: some View {
       
        VStack(alignment: .center, spacing: UIScreen.main.bounds.height - 200){
            HStack{
                Text(usr.username)
            }.shadow(color: Color.red, radius: 2, x: 2, y: 2)
            
            
            HStack{
                NavigationButton(destination: ThirdContentView(text:"my third view text \(usr.message)")){
                    Text("Btn")
                }
            }
            }
    }
}
