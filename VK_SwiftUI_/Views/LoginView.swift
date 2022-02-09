//
//  ContentView.swift
//  VK_SwiftUI_
//
//  Created by Василий on 06.02.2022.
//

import SwiftUI
import Combine

struct LoginView: View {

    @State private var login = ""
    @State private var password = ""
    @State private var shouldShowLogo: Bool = true

    private let keyboardIsOnPublisher = Publishers.Merge(
           NotificationCenter.default.publisher(for: UIResponder.keyboardWillChangeFrameNotification)
               .map { _ in true },
           NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
               .map { _ in false }
       )
           .removeDuplicates()


    var body: some View {
        ZStack {
            GeometryReader { geometry in
                Image("9")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: geometry.size.width, maxHeight: geometry.size.height)
            }
            ScrollView(showsIndicators: false) {
                VStack {
                    if shouldShowLogo {
                        Text("В КОНТАКТЕ")
                            .padding(.top, 32)
                            .foregroundColor(.blue)
                            .font(.largeTitle)
                    }
                    HStack {
                        Text("Вход")
                            .padding(.top, 30)
                            .foregroundColor(.blue)
                            .padding(.bottom, 30)
                    }
                    HStack {
                        TextField("Login", text: $login)
                            .frame(maxWidth: 300)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    HStack {
                        SecureField("Password", text: $password)
                            .frame(maxWidth: 300)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                }.frame(maxWidth: 300)

                Button(action: {print("Hello")}, label: {
                    Text("Log in")
                })
                .padding(.top, 50)
                .padding(.bottom, 50)
                .foregroundColor(.black)
                .disabled(login.isEmpty || password.isEmpty)
            }.onReceive(keyboardIsOnPublisher) { isKeyboardOn in
                withAnimation(Animation.easeInOut(duration: 0.5)) {
                    self.shouldShowLogo = !isKeyboardOn
                }
            }
        }.onTapGesture {
            UIApplication.shared.endEditing()
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

extension UIApplication {
   func endEditing() {
       sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
   }
}
