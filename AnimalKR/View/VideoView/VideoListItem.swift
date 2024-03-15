//
//  VideoListItem.swift
//  AnimalKR
//
//  Created by kej on 3/15/24.
//

import SwiftUI

struct VideoListItem: View {
    let video: Video
    var body: some View {
        HStack (spacing: 10){
            ZStack{
                Image(video.id)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 120, height: 90)
                    .cornerRadius(10)
                
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 32)
                    .shadow(radius: 5)
            }//: ZStack
            
            VStack{
                Text(video.name)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                    .hLeading()
                
                Text(video.headline)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            }//: VStack
        }//: HStack
    }
}

#Preview {
    VideoListItem(video: Video.sampleVideoData)
}
