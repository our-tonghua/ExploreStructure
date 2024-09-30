//
//  KeywordBubble.swift
//  ExploreStructure
//
//  Created by Administrator on 9/29/24.
//

import SwiftUI

struct KeywordBubble: View {
    let keyword: String
    let symbol: String
    @ScaledMetric(relativeTo: .title) var paddingWidth = 14.5
    
    var body: some View {
        Label(keyword, systemImage: symbol)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            .foregroundColor(.white)
            .padding()
            .background(.purple.opacity(0.75), in: Capsule())
    }
}

//#Preview {
//    KeywordBubble(keyword: "chives", symbol: "leaf")
//}

struct KeyordBubble_Previews: PreviewProvider {
    static let keywords = ["chives", "fern-leaf lavender"]
    static var previews: some View {
        VStack {
            ForEach(keywords, id: \.self) { word in
                    KeywordBubble(keyword: word, symbol: "leaf")
            }
        }
    }
}
