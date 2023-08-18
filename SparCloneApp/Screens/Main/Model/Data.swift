//
//  Data.swift
//  SparCloneApp
//
//  Created by Ilya on 17.08.2023.
//

import Foundation

struct Data {
    static let discounts = [DiscountItem(img: "Pizza"),
                     DiscountItem(img: "vine"),
                     DiscountItem(img: "posuda"),
                     DiscountItem(img: "utro")]
    
    static let categories = [CategoryItem(img: "cofee"),
                             CategoryItem(img: "sales"),
                             CategoryItem(img: "card"),
                             CategoryItem(img: "delivery"),
                             CategoryItem(img: "purchases"),]
    
    static let stories = [StoryItem(img: "spar", text: "Привилегии \"Мой Спар\"", isWatched: false),
                          StoryItem(img: "socialnetworks", text: "Мы в\nсоцсетях", isWatched: false),
                          StoryItem(img: "kokteil", text: "3 рецепта коктейлей", isWatched: true),
                          StoryItem(img: "new", text: "Новинки недели", isWatched: false),
                          StoryItem(img: "eat", text: "Дегустации в SPAR", isWatched: true)]
    
    static let products = [ProductItem(img: "lamber", mainPrice: 199, kopecks: 99, oldPrice: nil, offerLabel: nil),
                           ProductItem(img: "golubika", mainPrice: 99, kopecks: 00, oldPrice: nil, offerLabel: nil),
                           ProductItem(img: "klubnika", mainPrice: 1233, kopecks: 45, oldPrice: nil, offerLabel: nil),
                           ProductItem(img: "cheese", mainPrice: 345, kopecks: 64, oldPrice: 225.99, offerLabel: .struckPrice),
                           ProductItem(img: "ikra", mainPrice: 321, kopecks: 23, oldPrice: 1233, offerLabel: .superPrice),
                           ProductItem(img: "energetic", mainPrice: 567, kopecks: 87, oldPrice: nil, offerLabel: nil),
                           ProductItem(img: "naggetsi", mainPrice: 123, kopecks: 33, oldPrice: nil, offerLabel: nil)]
    
    static let productSectionRecommendations = ProductSection(title: "Рекомендуем", products: products)
    
    static let qrcode = QRCard(amountOfBonuses: 20)
}
