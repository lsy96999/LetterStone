//
//  TestStone.swift
//  letterStone
//
//  Created by N-312 on 2023/02/12.
//

import SwiftUI

struct TestStone: View {
    var body: some View {
        GeometryReader{ geomotry in
            Path{ path in
                var width: CGFloat = geomotry.size.width / 2
                var height =  geomotry.size.height / 2
                print("width: \(width), height: \(height)")
                path.move(to: CGPoint(
                    x: width,
                    y: height))
                
                let ref = min(width, height) / 2
                
                let topXMax = width;
                let topXMin = width;
                let topYMax = height - ref - ref;
                let topYMin = height - ref;
                let topXRan = CGFloat.random(in: 0...1)
                let topYRan = CGFloat.random(in: 0...1)
                let topX = (topXMax - topXMin) * topXRan
                let topY = (topYMax - topYMin) * topYRan
                
                let ltXMax = width + ref + ref;
                let ltXMin = width + ref;
                let ltYMax = height - ref - ref;
                let ltYMin = height - ref;
                let ltXRan = CGFloat.random(in: 0...1)
                let ltYRan = CGFloat.random(in: 0...1)
                let ltX = (ltXMax - ltXMin) * ltXRan
                let ltY = (ltYMax - ltYMin) * ltYRan
                
                let leftXMax = width - ref - ref;
                let leftXMin = width - ref;
                let leftYMax = height;
                let leftYMin = height;
                let leftXRan = CGFloat.random(in: 0...1)
                let leftYRan = CGFloat.random(in: 0...1)
                let leftX = (leftXMax - leftXMin) * leftXRan
                let leftY = (leftYMax - leftYMin) * leftYRan
                
                let ldXMax = width - ref - ref;
                let ldXMin = width - ref;
                let ldYMax = height + ref + ref;
                let ldYMin = height + ref;
                let ldXRan = CGFloat.random(in: 0...1)
                let ldYRan = CGFloat.random(in: 0...1)
                let ldX = (ldXMax - ldXMin) * ldXRan
                let ldY = (ldYMax - ldYMin) * ldYRan
                
                let downXMax = width;
                let downXMin = width;
                let downYMax = height + ref + ref;
                let downYMin = height + ref;
                let downXRan = CGFloat.random(in: 0...1)
                let downYRan = CGFloat.random(in: 0...1)
                let downX = (downXMax - downXMin) * downXRan
                let downY = (downYMax - downYMin) * downYRan
                
                let rdXMax = width + ref + ref;
                let rdXMin = width + ref;
                let rdYMax = height + ref + ref;
                let rdYMin = height + ref;
                let rdXRan = CGFloat.random(in: 0...1)
                let rdYRan = CGFloat.random(in: 0...1)
                let rdX = (rdXMax - rdXMin) * rdXRan
                let rdY = (rdYMax - rdYMin) * rdYRan
                
                let rightXMax = width + ref + ref;
                let rightXMin = width + ref;
                let rightYMax = height;
                let rightYMin = height;
                let rightXRan = CGFloat.random(in: 0...1)
                let rightYRan = CGFloat.random(in: 0...1)
                let rightX = (rightXMax - rightXMin) * rightXRan
                let rightY = (rightYMax - rightYMin) * rightYRan
                
                let rtXMax = width + ref + ref;
                let rtXMin = width + ref;
                let rtYMax = height - ref - ref;
                let rtYMin = height - ref;
                let rtXRan = CGFloat.random(in: 0...1)
                let rtYRan = CGFloat.random(in: 0...1)
                let rtX = (rtXMax - rtXMin) * rtXRan
                let rtY = (rtYMax - rtYMin) * rtYRan
                
                
                
//                path.addLines([
//                /*t*/ CGPoint(x: width, y: height - 10),
//                /*lt*/CGPoint(x: width-10, y: height - 10),
//                /*l*/ CGPoint(x: width-10, y: height ),
//                /*ld*/CGPoint(x: width-10, y: height + 10),
//                /*d*/ CGPoint(x: width, y: height + 10),
//                /*rd*/CGPoint(x: width + 10, y: height + 10),
//                /*r*/ CGPoint(x: width + 10, y: height),
//                /*rt*/CGPoint(x: width + 10 , y: height - 10),
//                ])
                
                path.addLines([
                /*t*/ CGPoint(x: width, y: height - ref + topY),
                /*lt*/CGPoint(x: width - ref - ltX, y: height - ref + ltY),
                /*l*/ CGPoint(x: width - ref + leftX, y: height),
                /*ld*/CGPoint(x: width - ref + ldX, y: height + ref + ldY),
                /*d*/ CGPoint(x: width, y: height + ref + downY),
                /*rd*/CGPoint(x: width + ref + rdX, y: height + ref + rdY),
                /*r*/ CGPoint(x: width + ref + rightX, y: height),
                /*rt*/CGPoint(x: width + ref + rtX , y: height - ref + rtY),
                ])
            }
        }
    }
}

struct TestStone_Previews: PreviewProvider {
    static var previews: some View {
        TestStone()
    }
}
