//
//  Products.swift
//  SparCloneApp
//
//  Created by Ilya on 17.08.2023.
//

import SwiftUI

struct Products: View {
    let productSection: ProductSection
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(productSection.title)
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .padding(.horizontal)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 12) {
                    ForEach(productSection.products) { product in
                        ProductCell(img: product.img, mainPrice: product.mainPrice, kopecks: product.kopecks, oldPrice: product.oldPrice, offerLabel: product.offerLabel)
                    }
                }
                .padding()
            }
        }
    }
}

struct Products_Previews: PreviewProvider {
    static var previews: some View {
        Products(productSection: Data.productSectionRecommendations)
    }
}
