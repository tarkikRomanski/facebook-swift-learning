//
//  StoriesView.swift
//  facebook
//
//  Created by Роман  Прокопов on 23.12.2020.
//

import SwiftUI

struct StoriesView: View {
    @Binding var stories: [Color]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 3) {
                ForEach(stories, id: \.self) { story in
                    Image("")
                        .frame(width: 140, height: 200, alignment: .center)
                        .background(story)
                }
            }
        }
    }
}

struct StoriesView_Previews: PreviewProvider {
    static var previews: some View {
        StoriesView(stories: .constant([.red, .blue, .yellow]))
    }
}
