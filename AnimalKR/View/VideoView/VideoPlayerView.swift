//
//  VideoPlayerView.swift
//  AnimalKR
//
//  Created by kej on 3/15/24.
//

import SwiftUI

struct VideoPlayerView: View {
    let video: Video
    var body: some View {
        NavigationView{
            YoutubeView(videoId: video.videoid)
        }//: NavigationView
        .navigationBarTitle("\(video.name)", displayMode: .inline)
    }
}

#Preview {
    VideoPlayerView(video: Video.sampleVideoData)
}
