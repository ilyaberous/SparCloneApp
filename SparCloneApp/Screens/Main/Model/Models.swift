//
//  Models.swift
//  SparCloneApp
//
//  Created by Ilya on 16.08.2023.
//

import Foundation


struct StoryItem : Identifiable{
    let id  = UUID()
    let img: String
    let text: String
    var isWatched: Bool
    
    init(img: String, text: String, isWatched: Bool) {
        self.img = img
        self.text = text
        self.isWatched = isWatched
    }
}

struct DiscountItem : Identifiable {
    let id = UUID()
    let img: String
    
    init(img: String) {
        self.img = img
    }
}

struct QRCard {
    let amountOfBonuses: Int
    
    init(amountOfBonuses: Int) {
        self.amountOfBonuses = amountOfBonuses
    }
}

struct CategoryItem: Identifiable {
    let id = UUID()
    let img: String
    
    init(img: String) {
        self.img = img
    }
}

enum TypeOfOfferLabel {
    case struckPrice
    case superPrice
}

struct ProductItem: Identifiable {
    let id = UUID()
    let img: String
    let mainPrice: Int
    let kopecks: Int
    let oldPrice: Float?
    let offerLabel: TypeOfOfferLabel?
    
    init(img: String, mainPrice: Int,  kopecks: Int, oldPrice: Float?, offerLabel: TypeOfOfferLabel?) {
        self.img = img
        self.mainPrice = mainPrice
        self.kopecks = kopecks
        self.oldPrice = oldPrice
        self.offerLabel = offerLabel
    }
}


struct ProductSection {
    let title: String
    let products: [ProductItem]
    
    init(title: String, products: [ProductItem]) {
        self.title = title
        self.products = products
    }
}
