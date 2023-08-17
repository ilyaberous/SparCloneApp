//
//  ContentView.swift
//  SparCloneApp
//
//  Created by Ilya on 13.08.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainScreen()
                .tabItem {
                    Text("Главная")
                    Image("main_icon")
                        .foregroundColor(Color.gray)
                }
                
            Text("Экран каталога")
                .tabItem {
                    Text("Каталог")
                    Image("catalog_icon")
                }
            
            Text("Экран корзины")
                .tabItem {
                    Text("Корзина")
                    Image("cart_icon")
                }
            
            Text("Экран профиля")
                .tabItem {
                    Text("Профиль")
                    Image("user_icon")
                }
        }
        .accentColor(Color.green)
    }
}


extension UITabBarController {
    override open func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        tabBar.standardAppearance = appearance
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
