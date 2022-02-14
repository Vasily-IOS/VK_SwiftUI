//
//  FriendsView.swift
//  VK_SwiftUI_
//
//  Created by Василий on 14.02.2022.
//

import SwiftUI

struct FriendView: View {

    @State private var friends: [FriendModel] = [
        FriendModel(name: "Виктор", imageName: "13"),
        FriendModel(name: "Никита", imageName: "14"),
        FriendModel(name: "Алена", imageName: "15"),
        FriendModel(name: "Родион", imageName: "16"),
        FriendModel(name: "Ярослав", imageName: "17"),
        FriendModel(name: "Василий", imageName: "10")
    ]

    var body: some View {
        List(friends.sorted(by: { $0.name < $1.name })) { friends in
            NavigationLink(destination: GalleryView(friends: friends)) {
                FriendsView(friend: friends)
            }
        }
    }

}

// аналог UITableViewCell

struct FriendsView: View {

    let friend: FriendModel

    var body: some View {
        HStack {
            ImageBuilderView {
                Image(friend.imageName)
            }
            Text(friend.name)
                .font(Font.system(size: 20))
        }
    }
}

