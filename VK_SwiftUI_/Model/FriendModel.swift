//
//  Friends.swift
//  VK_SwiftUI_
//
//  Created by Василий on 14.02.2022.
//

import SwiftUI

class FriendModel: Identifiable {

    let uuId: UUID = UUID()
    let name: String
    let imageName: String

    internal init(name: String, imageName: String){
        self.name = name
        self.imageName = imageName
    }

}
