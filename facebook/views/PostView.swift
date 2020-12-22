//
//  PostView.swift
//  facebook
//
//  Created by Роман  Прокопов on 23.12.2020.
//

import SwiftUI

struct PostView: View {
    @Binding var userName: String
    
    @Binding var location: String
    
    @Binding var postDate: String
    
    @State var likes: Int = 0
    
    @State var isLiked: Bool = false
    
    var body: some View {
        VStack {
            Color(.systemBackground)
            
            HStack {
                Image("")
                    .frame(width: 30, height: 30, alignment: .center)
                    .background(Color(.systemYellow))
                    .cornerRadius(15)
                    .padding(2)
                    .background(Color(.systemBackground))
                    .cornerRadius(16)
                    .padding(2)
                    .background(Color(.systemBlue))
                    .cornerRadius(17)
                
                VStack(alignment: .leading) {
                    Text(userName)
                        .font(.system(size: 17, weight: .bold, design: .rounded))
                    Text("\(postDate) \u{b7} \(location)")
                        .font(.system(size: 13, weight: .light, design: .monospaced))
                        .foregroundColor(.gray)
                }
                
                Spacer()
            }
            .padding()
            
            HStack {
                Text("Some very importent things about some very important staff")
                    .font(.title)
            }
            .padding(.horizontal)
            
            HStack {
                Button(isLiked ? "Liked \(likes)" : "Like \(likes)") {
                    if isLiked {
                        return
                    }
                    
                    likes += 1
                    isLiked = true
                }
                .disabled(isLiked)
                
                Spacer()
                
                Button("Comments") {
                    
                }
                
                Spacer()
                
                Button("Share") {
                    
                }
            }
            .padding()
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(userName: .constant("User Name"), location: .constant("Vinnitsa"), postDate: .constant("3w"), likes: 3)
    }
}
