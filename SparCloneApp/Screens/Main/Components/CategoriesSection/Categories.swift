//
//  Categories.swift
//  SparCloneApp
//
//  Created by Ilya on 17.08.2023.
//

import SwiftUI

struct Categories: View {
    let categories: [CategoryItem]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(categories, id: \.id) { category in
                    Image(category.img)
                        .cornerRadius(16)
                        .shadow(color: .black.opacity(0.09), radius: 3, x: 1, y: 2)
                }
            }
            .padding()
        }
    }
}

struct Categories_Previews: PreviewProvider {
    static var previews: some View {
        Categories(categories: Data.categories)
    }
}
