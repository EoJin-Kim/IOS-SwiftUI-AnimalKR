//
//  VideoView.swift
//  AnimalKR
//
//  Created by kej on 3/15/24.
//

import SwiftUI

struct VideoView: View {
    
    @ObservedObject
    var vm: AnimalViewModel
    
    var body: some View {
        NavigationView{
            List{
                ForEach(vm.videos){video in
                    NavigationLink {
                        VideoPlayerView(video: video)
                    } label: {
                        VideoListItem(video: video)
                    }

                }//: ForEach
            }//: List
            .listStyle(.plain)
            .navigationBarTitle("비디오", displayMode: .inline)
        }//: NavigationView
    }
}

#Preview {
    VideoView(vm: AnimalViewModel())
}
