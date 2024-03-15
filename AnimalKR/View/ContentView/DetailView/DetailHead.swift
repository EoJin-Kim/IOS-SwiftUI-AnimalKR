//
//  DetailHead.swift
//  AnimalKR
//
//  Created by kej on 3/15/24.
//

import SwiftUI

struct DetailHead: View {
    var headingImage: String
    var headingText: String
    
    var body: some View {
        HStack{
            Image(systemName: headingImage)
                .foregroundColor(.accentColor)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title)
                .fontWeight(.bold)
        }//: HStack
    }
}

#Preview {
    DetailHead(headingImage: "gear", headingText: "Head Title")
}
