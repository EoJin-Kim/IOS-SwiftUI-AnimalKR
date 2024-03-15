//
//  AppInfoLabel.swift
//  AnimalKR
//
//  Created by kej on 3/15/24.
//

import SwiftUI

struct AppInfoLabel: View {
    
    let labelText: String
    let labelImage: String
    
    var body: some View {
        HStack{
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Image(systemName: labelImage)
                .hTrailing()
        }//: HStack
    }
}

#Preview {
    AppInfoLabel(labelText: "AppInfoHead", labelImage: "gear")
}
