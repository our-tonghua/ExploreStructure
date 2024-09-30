//
//  CaptionedPhoto.swift
//  ExploreStructure
//
//  Created by Administrator on 9/30/24.
//

import SwiftUI

struct CaptionedPhoto: View {
    let assetName: String
    let captionText: String
    
    var body: some View {
        Image(assetName)
            .resizable()
            .scaledToFit()
            .overlay(alignment: .bottom) {
                Caption(text: captionText)            }
            .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
            .padding()
    }
}

struct Caption: View {
    let text: String
    
    var body: some View {
        Text(text)
            .padding()
            .background(Color(.white).opacity(0.75),
                        in: RoundedRectangle(cornerRadius: 10.0, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/))
            .padding()
    }
}

struct CaptionedPhoto_Previews: PreviewProvider {
    static let landscapeName = "Landscape"
    static let landscapeCaption = "This photo is wider than it is tall"
    static let portraitName = "Portrait"
    static let portraitcaption = "This photo is taller than it is wide"
    
    static var previews: some View {
        CaptionedPhoto(assetName: portraitName, captionText: portraitcaption)
        CaptionedPhoto(assetName: landscapeName, captionText: landscapeCaption)
            .preferredColorScheme(.dark)
        CaptionedPhoto(assetName: landscapeName, captionText: landscapeCaption)
            .preferredColorScheme(.light)
    }
}
