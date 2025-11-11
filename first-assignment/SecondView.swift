//
//  SecondView.swift
//  first-assignment
//
//  Created by Krystian Bombola on 11/11/2025.
//

import SwiftUI

struct SecondView: View {

    @Binding var surname: String
    @State private var modifiedSurname: String = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("Second View")
                .font(.title)

            TextField("Type your surname", text: $modifiedSurname)
                .textFieldStyle(.roundedBorder)
                .textInputAutocapitalization(.words)
                .padding(.horizontal)

            Button("Confirm and go back") {
                surname = modifiedSurname
            }

            Text("Current surname: \(surname)")
                .padding(.horizontal)

            Spacer()
        }
        .padding(.top, 40)
        .navigationTitle("Second View")
    }
}

#Preview {
    SecondView(surname: .constant(""))
}
