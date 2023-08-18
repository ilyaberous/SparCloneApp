//
//  QRCode.swift
//  SparCloneApp
//
//  Created by Ilya on 16.08.2023.
//

import SwiftUI

struct QRCode: View {
    let amountOfBonuses: Int
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Image("qr")
                .resizable()
                .scaledToFit()
                .cornerRadius(18)
                .shadow(color: .black.opacity(0.09), radius: 3, x: 1, y: 2)
                .padding(.horizontal)
            
            HStack(alignment: .bottom) {
                Text(String(amountOfBonuses))
                    .font(.system(size: 32, weight: .heavy, design: .rounded))
                    
                Text("бонусов")
                    .font(.system(size: 16, weight: .bold, design: .rounded))
                    .offset(y: -4.3)
            }
            .padding(.leading, 32)
            .padding(.top, 8)
        }
    }
}

struct QRCode_Previews: PreviewProvider {
    static var previews: some View {
        QRCode(amountOfBonuses: Data.qrcode.amountOfBonuses)
    }
}
