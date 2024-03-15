//
//  HomeView.swift
//  AnimalKR
//
//  Created by kej on 3/15/24.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject
    var vm: AnimalViewModel = AnimalViewModel()
    
    var body: some View {
        TabView{
            ContentView(vm: vm)
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("홈")
                }
            VideoView(vm: vm)
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("비디오")
                }
            GallaryView(vm: vm)
                .tabItem {
                    Image(systemName: "photo")
                    Text("갤러리")
                }
            AppInfoView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("앱정보")
                }
        }
    }
}

#Preview {
    HomeView()
}
