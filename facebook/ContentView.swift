//
//  ContentView.swift
//  facebook
//
//  Created by Роман  Прокопов on 22.12.2020.
//

import SwiftUI

struct ContentView: View {
    
    @Binding var searchText: String
    
    var body: some View {
        VStack {
            HeaderView()
            
            SearchFieldView(text: $searchText)
            
            ZStack {
                Color(.secondarySystemBackground)
                
                ScrollView(.vertical) {
                    VStack {
                        StoriesView(stories: .constant([Color(.systemRed), Color(.systemBlue), Color(.systemPink), Color(.systemPurple), Color(.systemYellow)]))
                        
                        PostView(userName: .constant("User Name"), location: .constant("Vinnitsa"), postDate: .constant("3w"), likes: 3)
                        
                        PostView(userName: .constant("User Name"), location: .constant("Vinnitsa"), postDate: .constant("3w"), likes: 12, isLiked: true)
                        
                        PostView(userName: .constant("User Name"), location: .constant("Vinnitsa"), postDate: .constant("3w"), likes: 10)
                        
                        PostView(userName: .constant("User Name"), location: .constant("Vinnitsa"), postDate: .constant("3w"), likes: 5)
                    }
                    
                }
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(searchText: .constant(""))
            .previewDevice("iPhone 11 Pro")
    }
}
