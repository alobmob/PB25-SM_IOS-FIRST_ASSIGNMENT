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
    @State private var surname: String = ""

    private let myName = "Krystian"

    var body: some View {
        NavigationStack {
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

                if !surname.isEmpty {
                    Text("Your surname: \(surname)")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }

                NavigationLink("Go to second view") {
                    SecondView(surname: $surname)
                }
                .buttonStyle(.borderedProminent)
                .tint(.blue)

                Spacer()
            }
            .padding(.top, 40)
            .navigationTitle("First View")
        }
    }

    private func handleEnter() {
        let trimmed = inputName.trimmingCharacters(in: .whitespacesAndNewlines)
        let yourName = trimmed.isEmpty ? "World" : trimmed

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
