//
//  ExternalWebLink.swift
//  AnimalKR
//
//  Created by kej on 3/15/24.
//

import SwiftUI

struct ExternalWebLink: View {
    let animal: Animal
    var body: some View {
        GroupBox{
            HStack{
                Image(systemName: "globe")
                Text("멸종 위기 야생생물 포털")
                Spacer()
                
                Group{
                    Image(systemName: "arrow.up.right.square")
                    Link(destination: URL(string: animal.link)!) {
                        Text(animal.name)
                    }.foregroundColor(.accentColor)
                }
            }//: HStack
        }//: GroupBox
    }
}

#Preview {
    ExternalWebLink(animal: Animal.sampleAnimal)
}
