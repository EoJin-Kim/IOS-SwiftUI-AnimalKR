//
//  AnimalListView.swift
//  AnimalKR
//
//  Created by kej on 3/15/24.
//

import SwiftUI

struct AnimalListView: View {
    
    let aniaml: Animal
    
    var body: some View {
        HStack (spacing: 20){
            Image(aniaml.image)
                .resizable()
                .scaledToFit()
                .frame(width: 90, height: 90)
                .clipShape(RoundedRectangle(cornerRadius: 12))
            
            VStack (spacing: 10){
                Text(aniaml.name)
                    .hLeading()
                    .font(.title)
                    .foregroundColor(.accentColor)
                Text(aniaml.headline)
                    .font(.footnote)
                    .lineLimit(2)
                    .padding(.trailing, 10)
            }//: VStack
        }//: HStack
    }
}

#Preview {
    AnimalListView(aniaml: Animal.sampleAnimal)
}
