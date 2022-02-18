//
//  ContainerView.swift
//  VK_SwiftUI_
//
//  Created by Василий on 13.02.2022.
//

import SwiftUI

struct ContainerView: View {

    @State private var shouldShowMainView: Bool = false

    var body: some View {
        NavigationView {
            HStack {
                LoginView(isUserLoggedIn: $shouldShowMainView)
                NavigationLink(
                    destination: TabBarView(),
                    isActive: $shouldShowMainView) {
                    EmptyView()
                }
            }
        }
    }

}
