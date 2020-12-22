//
//  HeaderView.swift
//  facebook
//
//  Created by Роман  Прокопов on 23.12.2020.
//

import SwiftUI

struct HeaderView: View {
    let facebookColor = UIColor(red: 23/2555.0, green: 120/255.0, blue: 242/255.0, alpha: 1)
    
    var body: some View {
        HStack() {
            Text("facebook")
                .font(.system(size: 48, weight: .bold, design: .default))
                .foregroundColor(Color(facebookColor))
            
            Spacer()
            
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 38, height: 38, alignment: .center)
                .foregroundColor(Color(.secondaryLabel))
        }
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
