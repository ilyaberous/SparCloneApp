//
//  Discounts.swift
//  SparCloneApp
//
//  Created by Ilya on 16.08.2023.
//

import SwiftUI

struct Discounts: View {
    let discounts : [DiscountItem]
    var newNumberOfElements: Int {
        return discounts.count * 100
    }
    
    var body: some View {
        ScrollViewReader { sv in
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 8) {
                    ForEach(0..<newNumberOfElements, id: \.self) { index in
                        Image(discounts[index % discounts.count].img)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 345, height: 175)
                            .cornerRadius(18)
                            .id(index)
                    }
                }
                .padding(.horizontal)
            }
            .onAppear() {
                sv.scrollTo(newNumberOfElements / 2, anchor: .center)
            }
        }
    }
}

struct Discounts_Previews: PreviewProvider {
    static var previews: some View {
        Discounts(discounts: Data.discounts)
    }
}
