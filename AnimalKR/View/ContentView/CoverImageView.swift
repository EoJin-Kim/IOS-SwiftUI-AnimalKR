//
//  CoverImageView.swift
//  AnimalKR
//
//  Created by kej on 3/15/24.
//

import SwiftUI

struct CoverImageView: View {
    
    @ObservedObject
    var vm: AnimalViewModel
    
    var body: some View {
        TabView{
            ForEach(vm.coverImages){ cover in
                Image(cover.name)
                    .resizable()
                    .scaledToFit()
            }//: ForEach
            
        }//: TabView
        .tabViewStyle(.page)
    }
}

#Preview {
    CoverImageView(vm: AnimalViewModel())
}
