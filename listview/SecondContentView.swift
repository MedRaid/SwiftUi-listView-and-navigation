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
        Text(usr.username)
        //Text(usr)
    }
}

//#if DEBUG
//struct SecondContentView_Previews : PreviewProvider {
//    static var previews: some View {
//        SecondContentView(usr: User)
//    }
//}
//#endif
