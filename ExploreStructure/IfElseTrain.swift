//
//  IfElseTrain.swift
//  ExploreStructure
//
//  Created by Administrator on 9/30/24.
//

import SwiftUI

struct IfElseTrain: View {
    var  longerTrain: Bool
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "train.side.rear.car")
                if longerTrain {
                    Image(systemName: "train.side.middle.car")
                }
                Image(systemName: "train.side.middle.car")
                    .opacity(longerTrain ? 1 : 0)
                Image(systemName: "train.side.front.car")
            }
            Divider()
        }
    }
}

#Preview {
    IfElseTrain(longerTrain: true)
}
