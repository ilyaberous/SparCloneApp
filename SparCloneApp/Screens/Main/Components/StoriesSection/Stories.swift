//
//  Stories.swift
//  SparCloneApp
//
//  Created by Ilya on 15.08.2023.
//

import SwiftUI

struct Stories: View {
    let stories: [StoryItem]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 6) {
                ForEach(stories, id: \.id) { story in
                    StoriesCell(img: story.img, title: story.text, isWatched: story.isWatched)
                }
            }
            .padding()
        }
    }
}

struct Stories_Previews: PreviewProvider {
    static var previews: some View {
        Stories(stories: Data.stories)
    }
}
