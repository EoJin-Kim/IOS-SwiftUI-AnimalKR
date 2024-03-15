//
//  DetailFact.swift
//  AnimalKR
//
//  Created by kej on 3/15/24.
//

import SwiftUI

struct DetailFact: View {
    
    let animal: Animal
    var body: some View {
        GroupBox{
            TabView{
                ForEach(animal.fact, id: \.self){ item in
                    Text(item)
                }//: ForEach
            }//: TabView
            .tabViewStyle(.page)
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//: GroupBox
    }
}

#Preview {
    DetailFact(animal: Animal.sampleAnimal)
}
