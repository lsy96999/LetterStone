//
//  LetterStoneRowView.swift
//  letterStone
//
//  Created by N-312 on 2023/02/12.
//

import SwiftUI

struct LetterStoneRowView: View {
    var stone: LetterStone
    var body: some View {
        NavigationLink(destination: LetterStoneDetail(stone: stone)){
            HStack{
                Image(systemName: "circle")
                VStack(alignment: .leading){
                    Text(stone.title)
                    Text(stone.content)
                    Text("by: \(stone.author)")
                }
            }
        }
    }
}

struct LetterStoneRowView_Previews: PreviewProvider {
    static var previews: some View {
        let stone = LetterStone(author: "author", title: "title", content: "content", longitude: 1.2, latitude: 3.3, layout: LetterStone.getLayout())
        LetterStoneRowView(stone: stone)
    }
}
