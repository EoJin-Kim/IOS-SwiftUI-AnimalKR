//
//  YoutubeView.swift
//  AnimalKR
//
//  Created by kej on 3/15/24.
//

import SwiftUI
import WebKit

struct YoutubeView: UIViewRepresentable{
    let videoId: String
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        //https://www.youtube.com/embed/B7mZNcdsU2U?si=4dp0VGn1QXl_m2Ds
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoId)") else { return }
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: youtubeURL))
    }
}
