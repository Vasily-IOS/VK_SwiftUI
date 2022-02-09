//
//  View.swift
//  VK_SwiftUI_
//
//  Created by Василий on 09.02.2022.
//

import SwiftUI

extension View {
    func debug() -> Self {
        print(Mirror(reflecting: self).subjectType)
        return self
    }
}
