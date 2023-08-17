//
//  NavBarButtons.swift
//  SparCloneApp
//
//  Created by Ilya on 15.08.2023.
//

import SwiftUI

struct NavBarButtons: View {
    var body: some View {
        HStack {
            Button(action: {}, label: {
                Label {
                    Text("Санкт-Петербург, Санкт-Петербург и Ленинградская")
                        .font(.system(size: 14))
                        .truncationMode(.tail)
                        .lineLimit(1)
                        .foregroundColor(.black)
                }
                icon: {
                    Image("map_marker")
                        .resizable()
                        .frame(width: 14, height: 14)
                        .foregroundColor(.red)
                }
            })
            .padding(.all, 8)
            .background(RoundedRectangle(cornerRadius: 20).stroke(Color(white: 0.8), lineWidth: 1))
            .padding(.leading)
            
            Spacer()
            
            Button(action: {}) {
                Image("menu")
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.green)
            }
            .padding(.trailing)
        }
    }
}

struct locationToolbarItem_Previews: PreviewProvider {
    static var previews: some View {
        NavBarButtons()
    }
}
