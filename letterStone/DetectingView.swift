//
//  DetectingView.swift
//  letterStone
//
//  Created by N-312 on 2023/02/12.
//

import SwiftUI

struct DetectingView: View {
    @StateObject var lsLocation = LSLocation()
    @State var data = lsData
    var body: some View {
        NavigationView{
            List{
                ForEach(data, id: \.id){ d in
                    LetterStoneRowView(stone: d)
                }
            }
            
            .refreshable {
                print("ref")
                data = lsData
            }
            .navigationTitle("letterStones")
            .onAppear{
                lsLocation.requestPermission();
                print(lsData)
                data = lsData
            }
            .toolbar{
                NavigationLink(destination: CarvingStone(lsLocation: lsLocation)){
                    Text("Carving")
                }
            }
        }
    }
}

struct DetectingView_Previews: PreviewProvider {
    static var previews: some View {
        DetectingView()
    }
}
