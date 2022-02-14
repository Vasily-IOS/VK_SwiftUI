//
//  GalleryView.swift
//  VK_SwiftUI_
//
//  Created by Василий on 14.02.2022.
//

import SwiftUI
import QGrid

struct GalleryView: View {

    @State private var photos: [FriendPhotoModel] = [
        FriendPhotoModel(imageName: "1"),
        FriendPhotoModel(imageName: "2"),
        FriendPhotoModel(imageName: "3"),
        FriendPhotoModel(imageName: "4")
    ]

    let friends: FriendModel

    var body: some View {
        QGrid(photos, columns: 1) {
            GalleryFriendView(photo: $0)
        }.navigationTitle(friends.name)
    }
}

struct GalleryFriendView: View {

    let photo: FriendPhotoModel

    var body: some View {
        VStack {
                Image(photo.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 250, alignment: .leading)
                    .padding()

        }
    }

}
