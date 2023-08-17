//
//  ProductCell.swift
//  SparCloneApp
//
//  Created by Ilya on 17.08.2023.
//

import SwiftUI

struct ProductCell: View {
    let img: String
    let mainPrice: Int
    let kopecks: Int
    let oldPrice: Float?
    let offerLabel: TypeOfOfferLabel?
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            VStack(alignment: .center, spacing: 5) {
                Image(img)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 119, height: 129)
                    .clipped()
                
                HStack(alignment: .center) {
                    
                    if let old = oldPrice {
                        VStack(alignment: .leading, spacing: 0){
                            HStack(spacing: 4) {
                                HStack(spacing: 0) {
                                    Text(String(mainPrice))
                                        .font(.system(size: 14, weight: .bold, design: .rounded))
                                    Text(".\(kopecks)")
                                        .font(.system(size: 12, weight: .bold, design: .rounded))
                                }
                                
                                Image("ruble_per_piece")
                            }
                            
                            Text(String(old))
                                .font(.system(size: 11, weight: .light, design: .rounded))
                                .foregroundColor(Color.gray)
                                .strikethrough()
                            
                        }
                    } else {
                        HStack(spacing: 4) {
                            HStack(spacing: 0) {
                                Text(String(mainPrice))
                                    .font(.system(size: 14, weight: .bold, design: .rounded))
                                Text(".\(kopecks)")
                                    .font(.system(size: 12, weight: .bold, design: .rounded))
                            }
                            
                            Image("ruble_per_piece")
                        }
                    }
                    
                    Spacer(minLength: 0)
                    
                    Image("korzina")
                        .resizable()
                        .frame(width: 38, height: 38)
                }
                .lineLimit(1)
                .truncationMode(.tail)
                
            }
            .frame(width: 126, height: 170)
            .padding(5)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: .black.opacity(0.11), radius: 3, x: 0, y: 0)
            
            if let label = offerLabel  {
                if (label == TypeOfOfferLabel.struckPrice) {
                    Image("struck_price")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 85, height: 16)
                    .cornerRadius(30, corners: [.topLeft, .topRight, .bottomRight])
                    .offset(x: 0)
                    .opacity(0.84)
                } else {
                    Image("super_price")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 85, height: 16)
                    .cornerRadius(30, corners: [.topLeft, .topRight, .bottomRight])
                    .offset(x: 0)
                    .opacity(0.84)
                }
            }
        }
    }
}

struct RublePerPiece : View {
    var body: some View {
        HStack(spacing: 0) {
            Text("₽")
                .font(.system(size: 10, weight: .bold, design: .rounded))
                .offset(x: 10, y: -6)
            Image("line")
                .resizable()
                .scaledToFill()
                .frame(width: 18, height: 19)
                .clipped()
            Text("шт")
                .font(.system(size: 10, weight: .bold, design: .rounded))
                .offset(x: -10.5, y: 6)
        }
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(img: "lamber", mainPrice: 999, kopecks: 99, oldPrice: nil, offerLabel: nil)
    }
}


// MARK: - Helpers

struct CornerRadiusStyle: ViewModifier {
    var radius: CGFloat
    var corners: UIRectCorner
    
    struct CornerRadiusShape: Shape {

        var radius = CGFloat.infinity
        var corners = UIRectCorner.allCorners

        func path(in rect: CGRect) -> Path {
            let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
            return Path(path.cgPath)
        }
    }

    func body(content: Content) -> some View {
        content
            .clipShape(CornerRadiusShape(radius: radius, corners: corners))
    }
}

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        ModifiedContent(content: self, modifier: CornerRadiusStyle(radius: radius, corners: corners))
    }
}
