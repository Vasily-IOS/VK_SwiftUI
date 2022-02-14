//
//  Name.swift
//  VK_SwiftUI_
//
//  Created by Василий on 09.02.2022.
//

import SwiftUI

// MARK: - result view для того, чтобы отобразить обе ячейки на экране.
// Содержит NameView & GroupView

struct ResultView: View {
    var body: some View {
        VStack {
            Spacer()
            HStack {
                NameView()
            }
            Spacer()
            HStack {
                GroupView()
            }
            Spacer()
        }
    }
}

// MARK: - ячейка имени

struct NameView: View {
    var body: some View {
        VStack {
            Text("Василий Иванов")
                .padding()
                .font(Font.system(size: 25))
                .foregroundColor(.green)
        }
    }
}

struct NameView_Previews: PreviewProvider {
    static var previews: some View {
        NameView()
    }
}
