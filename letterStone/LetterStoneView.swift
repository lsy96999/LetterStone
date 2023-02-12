//
//  LetterStoneView.swift
//  letterStone
//
//  Created by N-312 on 2023/02/12.
//

import SwiftUI

struct LetterStoneView: View {
    @Binding var stone: LetterStone
    var body: some View {
        GeometryReader{ geomotry in
            ZStack{
                Path{ path in
                    let width: CGFloat = geomotry.size.width / 2
                    let height =  geomotry.size.height / 2
                    let ref = min(width, height) / 2
                    
                    let topXMax = width;
                    let topXMin = width;
                    let topYMax = height - ref - ref;
                    let topYMin = height - ref;
                    let topXRan = stone.layout.topXRan
                    let topYRan = stone.layout.topYRan
                    let topX = (topXMax - topXMin) * topXRan
                    let topY = (topYMax - topYMin) * topYRan
                    
                    let ltXMax = width + ref + ref;
                    let ltXMin = width + ref;
                    let ltYMax = height - ref - ref;
                    let ltYMin = height - ref;
                    let ltXRan = stone.layout.ltXRan
                    let ltYRan = stone.layout.ltYRan
                    let ltX = (ltXMax - ltXMin) * ltXRan
                    let ltY = (ltYMax - ltYMin) * ltYRan
                    
                    let leftXMax = width - ref - ref;
                    let leftXMin = width - ref;
                    let leftYMax = height;
                    let leftYMin = height;
                    let leftXRan = stone.layout.leftXRan
                    let leftYRan = stone.layout.leftYRan
                    let leftX = (leftXMax - leftXMin) * leftXRan
                    let leftY = (leftYMax - leftYMin) * leftYRan
                    
                    let ldXMax = width - ref - ref;
                    let ldXMin = width - ref;
                    let ldYMax = height + ref + ref;
                    let ldYMin = height + ref;
                    let ldXRan = stone.layout.ldXRan
                    let ldYRan = stone.layout.ldYRan
                    let ldX = (ldXMax - ldXMin) * ldXRan
                    let ldY = (ldYMax - ldYMin) * ldYRan
                    
                    let downXMax = width;
                    let downXMin = width;
                    let downYMax = height + ref + ref;
                    let downYMin = height + ref;
                    let downXRan = stone.layout.downXRan
                    let downYRan = stone.layout.downYRan
                    let downX = (downXMax - downXMin) * downXRan
                    let downY = (downYMax - downYMin) * downYRan
                    
                    let rdXMax = width + ref + ref;
                    let rdXMin = width + ref;
                    let rdYMax = height + ref + ref;
                    let rdYMin = height + ref;
                    let rdXRan = stone.layout.rdXRan
                    let rdYRan = stone.layout.rdYRan
                    let rdX = (rdXMax - rdXMin) * rdXRan
                    let rdY = (rdYMax - rdYMin) * rdYRan
                    
                    let rightXMax = width + ref + ref;
                    let rightXMin = width + ref;
                    let rightYMax = height;
                    let rightYMin = height;
                    let rightXRan = stone.layout.rightXRan
                    let rightYRan = stone.layout.rightYRan
                    let rightX = (rightXMax - rightXMin) * rightXRan
                    let rightY = (rightYMax - rightYMin) * rightYRan
                    
                    let rtXMax = width + ref + ref;
                    let rtXMin = width + ref;
                    let rtYMax = height - ref - ref;
                    let rtYMin = height - ref;
                    let rtXRan = stone.layout.rtXRan
                    let rtYRan = stone.layout.rtYRan
                    let rtX = (rtXMax - rtXMin) * rtXRan
                    let rtY = (rtYMax - rtYMin) * rtYRan
                    
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
                .overlay{
                    let width: CGFloat = geomotry.size.width / 2
                    let height =  geomotry.size.height / 2
                    let ref = min(width, height) / 2
                    ZStack{
                        Path{ path in
                            path.addLines([
                            /*lt*/CGPoint(x: width - ref, y: height - ref),
                            /*ld*/CGPoint(x: width - ref, y: height + ref),
                            /*rd*/CGPoint(x: width + ref, y: height + ref),
                            /*rt*/CGPoint(x: width + ref, y: height - ref),
                            ])
                           
                        }
//                        .fill(.red)
                        VStack{
                            Text("\(stone.title)")
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                            Spacer()
                            Text("\(stone.content)")
                                .foregroundColor(.white)
                            Spacer()
                        }.frame(width: ref*2, height: ref*2)
                    }
                }
            }
        }
    }
}

struct LetterStoneView_Previews: PreviewProvider {
    static var previews: some View {
        LetterStoneView(stone: .constant(LetterStone(layout: LetterStone.getLayout())))
    }
}
