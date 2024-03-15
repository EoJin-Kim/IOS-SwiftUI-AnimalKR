//
//  AppInfoView.swift
//  AnimalKR
//
//  Created by kej on 3/15/24.
//

import SwiftUI

struct AppInfoView: View {
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack (spacing: 20){
                    
                    GroupBox {
                        AppInfoContent(name: "Developer", content: "EJ KIM")
                        AppInfoContent(name: "Compatibility", content: "IOS 14.0")
                        AppInfoContent(name: "Version", content: "1.0.0")
                        AppInfoContent(name: "Website", linkLabel: "Ej Kim", linkDestination: "Ej.Info")
                        AppInfoContent(name: "Github", linkLabel: "Go To Rpository", linkDestination: "Ej.Info")
                    } label: {
                        AppInfoLabel(labelText: "Application", labelImage: "apps.iphone")
                    }//: GroupBox
                    .padding(.vertical)
                    
                    GroupBox {
                        Divider().padding(.vertical, 5)
                        HStack (spacing: 10){
                            Image("copyright")
                                .resizable()
                                .scaledToFit()
                                .frame(width: CGFloat.screenWidth * 0.3)
                            Text("asfasdfasfasdfasfadsfasdfasdfadsfasdfasdfasfadsfdas")
                                .font(.footnote)
                                .hTrailing()
                        }//: HStack
                        HStack (spacing: 10){
                            Image("copyright")
                                .resizable()
                                .scaledToFit()
                                .frame(width: CGFloat.screenWidth * 0.3)
                            Text("asfasdfasfasdfasfadsfasdfasdfadsfasdfasdfasfadsfdas")
                                .font(.footnote)
                                .hTrailing()
                        }//: HStack
                    } label: {
                        AppInfoLabel(labelText: "Copyright", labelImage: "apps.iphone")
                    }


                }//: VStack
                .padding()
            }//: ScrollView
            .navigationBarTitle("앱 정보")
        }//: NavigationView
    }
}

#Preview {
    AppInfoView()
}
