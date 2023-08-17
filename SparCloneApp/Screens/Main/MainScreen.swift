//
//  MainScreen.swift
//  SparCloneApp
//
//  Created by Ilya on 13.08.2023.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
            VStack(alignment: .leading, spacing: 0){
                CustomFullNavBar()
                ScrollView {
                    VStack(spacing: 16) {
                        Stories(stories: Data.stories)
                        Discounts(discounts: Data.discounts)
                        QRCode()
                        Categories(categories: Data.categories)
                        Products(productSection: Data.productSectionRecommendations)
                    }
                }
            }
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
