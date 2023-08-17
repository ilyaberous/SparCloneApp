//
//  CustomFullNavBar.swift
//  SparCloneApp
//
//  Created by Ilya on 15.08.2023.
//

import SwiftUI

struct CustomFullNavBar: View {
    var body: some View {
        VStack(spacing: 4) {
            NavBarButtons()
            Divider()
        }
        .padding(.top, 4)
    }
}

struct CustomToolbar_Previews: PreviewProvider {
    static var previews: some View {
        CustomFullNavBar()
    }
}
