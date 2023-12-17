//
//  ContentView.swift
//  StyleSample
//
//  https://github.com/RyoDeveloper/StyleSample
//  Copyright © 2023 RyoDeveloper. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @FocusState var isFocused: Bool
    @State var isOn = true

    var body: some View {
        ScrollView {
            VStack {
                // MARK: Button

                Section {
                    Button {} label: {
                        Text(".customButton")
                            .frame(maxWidth: .infinity) // 横幅いっぱいまで広げる
                    }
                    .buttonStyle(.customButton)
                    .disabled(false)
                } header: {
                    Text("Button")
                        .foregroundStyle(Color.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }

                // MARK: Label

                Section {
                    Label {
                        Text(".titleAndImage")
                            .frame(maxWidth: .infinity, alignment: .leading) // 横幅いっぱいまで広げる
                    } icon: {
                        Image(.ryoDeveloperIcon)
                            .resizable()
                    }
                    .labelStyle(.titleAndImage)
                    .font(.largeTitle)
                } header: {
                    Text("Label")
                        .foregroundStyle(Color.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }

                // MARK: ProgressView

                Section {
                    ProgressView(value: 0.5)
                        .progressViewStyle(.customProgressView)
                } header: {
                    Text("ProgressView")
                        .foregroundStyle(Color.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }

                // MARK: TextField

                Section {
                    TextField(".customTextField", text: .constant(""))
                        .textFieldStyle(.customTextField(isFocused: _isFocused))
                        .focused($isFocused)
                } header: {
                    Text("TextField")
                        .foregroundStyle(Color.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }

                // MARK: Toggle

                Section {
                    Toggle(isOn: $isOn) {
                        Text(".customToggle")
                    }
                    .toggleStyle(.customToggle)
                } header: {
                    Text("Toggle")
                        .foregroundStyle(Color.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }

                // MARK: Font

                Section {
                    Text(".systemDynamic")
                        .font(.systemDynamic)

                    Text(".systemFixed")
                        .font(.systemFixed)

                    Text(".customDynamic")
                        .font(.customDynamic)

                    Text(".customFixed")
                        .font(.customFixed)
                } header: {
                    Text("Font")
                        .foregroundStyle(Color.gray)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
