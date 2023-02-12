//
//  ContentView.swift
//  letterStone
//
//  Created by N-312 on 2023/02/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            DetectingView()
                .tabItem{
                    Label("Detecting", systemImage: "magnifyingglass")
                }
            SettingView()
                .tabItem{
                    Label("Setting", systemImage: "gear")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
