//
//  StoriesCell.swift
//  SparCloneApp
//
//  Created by Ilya on 15.08.2023.
//

import SwiftUI

struct StoriesCell: View {
    let img: String
    let title:String
    let isWatched: Bool
    
    var body: some View {
        VStack(alignment: .center, spacing: 8){
            ZStack {
                Image(img)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 55, height: 55)
                    .clipShape(Circle())
                if (isWatched) {
                    Circle()
                        .trim(from: 0, to: 1)
                        .stroke(Color.gray.opacity(0.5), lineWidth: 2)
                        .frame(width: 60, height: 60)
                } else {
                    Circle()
                        .trim(from: 0, to: 1)
                        .stroke(Color.green, lineWidth: 2)
                        .frame(width: 60, height: 60)
                }
            }
            
            Text(title)
                .font(.system(size: 11))
                .frame(width: 80)
                .lineLimit(2)
                .multilineTextAlignment(.center)
        }
    }
}

struct StoriesCell_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(Data.stories) { story in
            StoriesCell(img: story.img, title: story.text, isWatched: story.isWatched)
        }
    }
}
