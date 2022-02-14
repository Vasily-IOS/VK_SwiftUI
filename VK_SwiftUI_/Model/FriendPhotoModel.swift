//
//  FriendPhotoModel.swift
//  VK_SwiftUI_
//
//  Created by Василий on 14.02.2022.
//

import SwiftUI

class FriendPhotoModel: Identifiable {

    let uuId: UUID = UUID()
    let imageName: String

    internal init(imageName: String) {
        self.imageName = imageName
    }
}
