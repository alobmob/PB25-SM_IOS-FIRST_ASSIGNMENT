//
//  ContentView.swift
//  first-assignment
//
//  Created by Krystian Bombola on 11/11/2025.
//

import SwiftUI

struct ContentView: View {

    @State private var inputName: String = ""
    @State private var message: String = ""

    private let myName = "Krystian"

    var body: some View {
        VStack(spacing: 16) {
            TextField("Type your name", text: $inputName)
                .textFieldStyle(.roundedBorder)
                .textInputAutocapitalization(.words)
                .padding(.horizontal)

            Button("Enter") {
                handleEnter()
            }

            Text(message)
                .padding(.horizontal)

            Spacer()
        }
        .padding(.top, 40)
    }

    private func handleEnter() {
        let trimmed = inputName.trimmingCharacters(in: .whitespacesAndNewlines)

        let yourName: String
        if trimmed.isEmpty {
            yourName = "World"
        } else {
            yourName = trimmed
        }

        if yourName == myName {
            message = "Hello \(yourName)! We have the same name :)"
        } else {
            message = "Hello \(yourName)!"
        }
    }
}

#Preview {
    ContentView()
}
