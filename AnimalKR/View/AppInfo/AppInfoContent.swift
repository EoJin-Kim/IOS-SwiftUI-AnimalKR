//
//  AppInfoContent.swift
//  AnimalKR
//
//  Created by kej on 3/15/24.
//

import SwiftUI

struct AppInfoContent: View {
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack{
            Divider()
                .padding(.vertical, 5)
            
            HStack{
                Text(name)
                    .foregroundColor(.gray)
                
                if(content != nil){
                    Text(content ?? "값 없음")
                        .fontWeight(.bold)
                        .foregroundColor(.primary)
                        .hTrailing()
                }else if(linkLabel != nil && linkDestination != nil){
                    Link(
                        destination: URL(string: "https://\(linkDestination!)")!,
                        label: {
                            Spacer()
                            Text(linkLabel!)
                                .fontWeight(.bold)
                                .foregroundColor(.accentColor)
                            
                        }
                    )
                    Image(systemName: "arrow.up.right.square").foregroundColor(.accentColor)
                }else{
                    EmptyView()
                }
            }//: HStack
        }
    }
}

#Preview {
    Group{
        AppInfoContent(name: "Sample", content: "Eojin")
        AppInfoContent(name: "Sample2", linkLabel: "qerqr", linkDestination: "fasfd.info")
    }
    
}
