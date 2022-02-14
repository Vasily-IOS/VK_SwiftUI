//
//  TabBarView.swift
//  VK_SwiftUI_
//
//  Created by Василий on 14.02.2022.
//

import SwiftUI

struct TabBarView: View {

    var body: some View {

        TabView {
            MainScreenView()
                .tabItem {
                    Text("Главная")
                    Image(systemName: "house.fill")
                }
            FriendView()
                .tabItem {
                    Text("Друзья")
                    Image(systemName: "person.crop.circle")
                }
            Text("Нет данных")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Text("Группы")
                    Image(systemName: "bookmark.circle.fill")
                }
            Text("Нет данных")
                .font(.system(size: 30, weight: .bold, design: .rounded))
                .tabItem {
                    Text("Новости")
                    Image(systemName: "square.and.arrow.up")
                }
        }.accentColor(.yellow)
    }
    
}
