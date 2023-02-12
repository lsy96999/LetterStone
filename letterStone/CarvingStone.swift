//
//  CarvingStone.swift
//  letterStone
//
//  Created by N-312 on 2023/02/12.
//

import SwiftUI
import CoreLocation

struct CarvingStone: View {
    @State private var isPresent = false;
    @ObservedObject var lsLocation: LSLocation
    @State var yetCarvingStones = yetCarvingStone;
//    @State var selectedYetCarvingStone: LetterStone?;
    @State var selectedIdx = 0
    var body: some View {
        VStack{
            HStack{
                ForEach($yetCarvingStones.indices, id: \.self) {ycs in
                    LetterStoneView(stone: $yetCarvingStones[ycs])
                        .onTapGesture {
                            print(ycs)
                            selectedIdx = ycs
                            isPresent = true
                        }
                }
            }
            Spacer()
            Button("plus stone"){
                
            }
            NavigationLink(destination: TestStone()){
                Text("test")
            }
        }
        .navigationTitle("CarvingStone")
        .sheet(isPresented: $isPresent){
            CarvingStoneModal(lsLocation: lsLocation, selectedIdx: $selectedIdx)
        }
    }
}

struct CarvingStoneModal: View {
    @Environment(\.presentationMode) private var presentationMode
    @ObservedObject var lsLocation: LSLocation
    @State private var title = ""
    @State private var content = ""
    @Binding var selectedIdx: Int;
    @State var yetCarvingStones = yetCarvingStone;
    var body: some View{
        NavigationView{
            VStack{
                LetterStoneView(stone: $yetCarvingStones[selectedIdx])
                Divider()
                VStack{
                    HStack{
                        Text("Title")
                        Spacer()
                    }
                    TextField("enter your stone title", text: $yetCarvingStones[selectedIdx].title)
                }
                
                VStack{
                    HStack{
                        Text("Content")
                        Spacer()
                    }
                    TextField("enter your stone content", text: $yetCarvingStones[selectedIdx].content)
                }
            }
            .navigationTitle("carving")
            .toolbar{
                ToolbarItem(placement: .primaryAction){
                    Button("Save"){
                        saveStone(title: title, content: content)
                    }
                }
                ToolbarItem(placement: .cancellationAction){
                    Button("Cancel"){
                        presentationMode.wrappedValue.dismiss()
                    }
                }
            }
        }
    }
    
    func saveStone(title: String, content: String){
        if let long = lsLocation.lsLoc?.coordinate.longitude,
           let lat = lsLocation.lsLoc?.coordinate.latitude{
//            lsData.append(LetterStone(author: "lsy", title: title, content: content, longitude: Float(long), latitude: Float(lat)))
            presentationMode.wrappedValue.dismiss()
        }
    }
}

struct CarvingStone_Previews: PreviewProvider {
    static var previews: some View {
        let lsLocation = LSLocation()
        CarvingStone(lsLocation: lsLocation)
    }
}
