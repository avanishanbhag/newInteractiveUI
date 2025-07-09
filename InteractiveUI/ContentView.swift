//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 7/9/25.
//

import SwiftUI

struct ContentView: View {
   @State private var name = ""
    @State private var textTitle = "What is you name?"
    var body: some View {
        VStack {
            Text("What is your name?")
                .font(.title)
            TextField("Type your name here!" , text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray,
                        width:4)
            Button("Submit Name") {
                textTitle = "Welcome, \(name)"
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.blue)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
