//
//  ProgressBar.swift
//  Country Flag Game
//
//  Created by Leo Lai on 1/17/23.
//

import SwiftUI

struct ProgressBar: View {
    var progress: CGFloat
    var body: some View {
        ZStack(alignment: .leading) {
                   Rectangle()
                       .frame(maxWidth: 350, maxHeight: 4)
                       .foregroundColor(.gray)
                       .cornerRadius(10)
                       //possibly change this to be a proportion instead of harcoded pixel width?
                   Rectangle()
                       .frame(width: progress, height: 4)
                       .foregroundColor(.yellow)
                       .cornerRadius(10)
               }
    }
}

struct ProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBar(progress: 50)
    }
}
