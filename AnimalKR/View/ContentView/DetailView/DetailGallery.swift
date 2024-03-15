//
//  DetailGallery.swift
//  AnimalKR
//
//  Created by kej on 3/15/24.
//

import SwiftUI

struct DetailGallery: View {
    
    let animal: Animal
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 15){
                ForEach(animal.gallery, id: \.self){ item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }//: ForEach
            }//: HStack
        }
    }
}

#Preview {
    DetailGallery(animal: Animal.sampleAnimal)
}
