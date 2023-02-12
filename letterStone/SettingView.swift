//
//  SettingView.swift
//  letterStone
//
//  Created by N-312 on 2023/02/12.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("avatar")
                Text("my stones")
            }
            .navigationTitle("Settings")
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
