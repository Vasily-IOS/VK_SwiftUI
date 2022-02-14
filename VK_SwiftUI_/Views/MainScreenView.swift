//
//  ProfileView.swift
//  VK_SwiftUI_
//
//  Created by Василий on 14.02.2022.
//

import SwiftUI

struct MainScreenView: View {

    var body: some View {
        VStack {
            Image("10")
                .resizable()
                .clipShape(Circle())
                .shadow(radius: 5)
                .aspectRatio(contentMode: .fill)
                .frame(width: 250.0, height: 250.0, alignment: .top)
                .scaledToFit()
                .shadow(color: .black, radius: 10, x: 5, y: 5)
                .padding(.top, 40)
            Text("Василий Иванов")
                .padding(.top, 70)
                .font(Font.system(size: 35))
                .frame(alignment: .bottom)
                Spacer(minLength: 50)
            }
    }

}
