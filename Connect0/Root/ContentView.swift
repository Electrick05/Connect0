//
//  ContentView.swift
//  Connect0
//
//
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(alignment: .leading) {
            Image("Waterval")
                .resizable()
                .frame(width: 60, height:60)
                .cornerRadius(100)
                .scaledToFit()
                .padding(.leading, 20.0)
                .padding(.top, 20.0)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
        TabView() {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                }
            ChatsView()
                .tabItem {
                    Image(systemName: "message")
                }
            DiscoverView()
            .tabItem {
                    Image(systemName: "safari")
                }
            CalanderView()
            .tabItem {
                    Image(systemName: "calendar")
                }
        }
        .accentColor(.accentColor)
    }
}

#Preview {
    ContentView()
}
