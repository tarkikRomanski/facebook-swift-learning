//
//  SearchFieldView.swift
//  facebook
//
//  Created by Роман  Прокопов on 23.12.2020.
//

import SwiftUI

struct SearchFieldView: View {
    @Binding var text: String
    
    var body: some View {
        TextField("Search...", text: $text)
            .padding(10)
            .background(Color(.systemGray5))
            .cornerRadius(15)
            .padding(.horizontal, 15)
    }
}

struct SearchFieldView_Previews: PreviewProvider {
    static var previews: some View {
        SearchFieldView(text: .constant(""))
    }
}
