//
//  GroupView.swift
//  VK_SwiftUI_
//
//  Created by Василий on 09.02.2022.
//

import SwiftUI

// MARK: - ячейка группы

struct GroupView: View {
    var body: some View {
        HStack {
            ImageBuilderView {
                Image("9")
            }
            Text("Группа занятий альпинизмом")
                .padding(.leading, 10)
                .font(Font.system(size: 18))
        }
    }
}

struct GroupView_Previews: PreviewProvider {
    static var previews: some View {
        GroupView()
    }
}

// MARK: - custom modifier

struct CircleShadow: ViewModifier {
    let shadowColor: Color
    let shadowRadius: CGFloat

    func body(content: Content) -> some View {
        content
            .clipShape(Circle())
            .shadow(color: shadowColor, radius: shadowRadius)

    }
}

// MARK: - custom view builder

struct ImageBuilderView: View {

    var content: Image

    init(@ViewBuilder content: () -> Image) {
        self.content = content()
    }

    var body: some View {
        content
            .resizable()
            .frame(width: 80, height: 80)
            .modifier(CircleShadow(shadowColor: .black, shadowRadius: 5))
    }
}

