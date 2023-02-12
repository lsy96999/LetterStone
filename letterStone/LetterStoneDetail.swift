//
//  LetterStoneDetail.swift
//  letterStone
//
//  Created by N-312 on 2023/02/12.
//

import SwiftUI

struct LetterStoneDetail: View {
    var stone: LetterStone
    var body: some View {
        VStack{
            
        }
        .navigationTitle(stone.title)
    }
}

struct LetterStoneDetail_Previews: PreviewProvider {
    static var previews: some View {
        let stone = LetterStone(author: "author", title: "title", content: "content", longitude: 1.2, latitude: 3.3, layout: LetterStone.getLayout())
        LetterStoneDetail(stone: stone)
    }
}
