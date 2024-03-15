//
//  GallaryView.swift
//  AnimalKR
//
//  Created by kej on 3/15/24.
//

import SwiftUI

struct GallaryView: View {
    
    @ObservedObject
    var vm: AnimalViewModel
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack (spacing: 20){
                    Image(vm.selectedAnimal)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 250, height: 250)
                        .clipShape(Circle())
                        .overlay(
                            Circle().stroke(Color.accentColor, lineWidth: 5)
                        )
                    
                    Slider(value: $vm.gridColumn, in: 2...4, step: 1)
                        .padding(0)
                        .onChange(of: vm.gridColumn) { value in
                            withAnimation(Animation.easeInOut(duration: 1.0)){
                                vm.gridSwitch()
                            }
                            
                        }
                    
                    LazyVGrid(columns: vm.gridLayout, spacing: 20){
                        ForEach(vm.animals){ animal in
                            Image(animal.image)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .overlay(Circle().stroke(Color.white, lineWidth: 1))
                                .onTapGesture {
                                    
                                    withAnimation(Animation.spring()){
                                        vm.selectedAnimal = animal.image
                                    }
                                    
                                }
                        }
                    }// Grid
                }//: VStack
                .padding()
            }//: ScrollView
            .navigationBarTitle("갤러리", displayMode: .inline)
        }//: NavigationView
    }
}

#Preview {
    GallaryView(vm: AnimalViewModel())
}
