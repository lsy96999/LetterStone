//
//  LetterStone.swift
//  letterStone
//
//  Created by N-312 on 2023/02/12.
//

import Foundation

struct LetterStone: Identifiable{
    var id = UUID()
    var author: String = ""
    var title: String = ""
    var content: String = ""
    var longitude: Float?
    var latitude: Float?
    var layout: Layout
    struct Layout: Hashable {
        var topXRan: CGFloat
        var topYRan: CGFloat
        var ltXRan: CGFloat
        var ltYRan: CGFloat
        var leftXRan: CGFloat
        var leftYRan: CGFloat
        var ldXRan: CGFloat
        var ldYRan: CGFloat
        var downXRan: CGFloat
        var downYRan: CGFloat
        var rdXRan: CGFloat
        var rdYRan: CGFloat
        var rightXRan: CGFloat
        var rightYRan: CGFloat
        var rtXRan: CGFloat
        var rtYRan: CGFloat
    }
    static func getLayout() -> Layout{
        Layout(topXRan: randomLayout(), topYRan: randomLayout(), ltXRan: randomLayout(), ltYRan: randomLayout(), leftXRan: randomLayout(), leftYRan: randomLayout(), ldXRan: randomLayout(), ldYRan: randomLayout(), downXRan: randomLayout(), downYRan: randomLayout(), rdXRan: randomLayout(), rdYRan: randomLayout(), rightXRan: randomLayout(), rightYRan: randomLayout(), rtXRan: randomLayout(), rtYRan: randomLayout())
    }
    private static func randomLayout()->CGFloat{
        CGFloat.random(in: 0...1)
    }
}

