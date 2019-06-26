//
//  DynamicListView.swift
//  listview
//
//  Created by RaidRaddaoui on 24/06/2019.
//  Copyright © 2019 RaidRaddaoui. All rights reserved.
//

import SwiftUI

struct post {
    let id: Int
    let username, text, imageName,date, feedImage: String
}


struct DynamicListView : View {
    
    let posts: [post] = [
        .init(id: 0, username: "Michael Jackson ", text: "the king of music", imageName: "mypic", date: "8 hours ago", feedImage: "capture"),
        .init(id: 1, username: "Hilary Clinton", text: "what is this, this is not acceptable", imageName: "kenny", date: "8 hours ago", feedImage: "ext-3")

    
    ]
    
    var body: some View {
            List{
                
                ScrollView{
                    HStack{
                        VStack(alignment: .leading){
                              Text("Trending")
                          HStack{
                            GroupView()
                            GroupView()
                            GroupView()
                            GroupView()
                            GroupView()
                            GroupView()

                            }
                        }
                    }
                 
                }.scaledToFit().padding(.bottom, -180)
                
                
                ForEach(posts.identified(by: \.id)){ post in
                    postView(mypost: post)
                }
                
                }.navigationBarTitle(Text("Groups"))
    }
}

struct GroupView: View{
    
    var body: some View {
        VStack(alignment: .leading){
            Image("apple")
                .renderingMode(.original) //hide color tint (it's treated as a btn, so we need to change the rendering mode to original to hide the bue tint color of the btn in navigationButton)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 55)
                .cornerRadius(12)
                //.clipShape(Circle())
            Text("Co-end Hikes Of colorado").lineLimit(nil).padding(.leading, 8)

            }.frame(width: 100, height: 130)
    }
}


struct postView: View{
    
    let mypost: post

    var body : some View {
        VStack(alignment: .leading){
            
            HStack{
                Image(mypost.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 70)
                .clipShape(Circle())
                
                VStack(alignment: .leading){
                    Text(mypost.username)
                    Text(mypost.date).font(.subheadline).fontWeight(.ultraLight)
                }.padding(.leading, 8)
                
                }.padding(.top, 16)
            
            
            Text(mypost.text).fontWeight(.light).lineLimit(nil).padding(.leading, 8).padding(.trailing, 32).padding(.bottom, 16)
            // hack remove separator of list
          
            Image(mypost.feedImage)
                .resizable()
                .frame(width: 340, height: 370)
                .scaledToFill()
            Spacer()

        }
    }
    
}

#if DEBUG
struct DynamicListView_Previews : PreviewProvider {
    static var previews: some View {
        DynamicListView()
    }
}
#endif
