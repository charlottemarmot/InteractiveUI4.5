//
//  ContentView.swift
//  InteractiveUI4.5
//
//  Created by Scholar on 8/6/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    @State private var camp = ""
    @State private var textTitle2 = "What camp are you in?"
    @State private var alert = ""
    var body: some View {
        VStack {
            Text(textTitle)
                .font(.title)
            TextField("Type your name here...", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray,width:1)
            Text(textTitle2)
                .font(.title)
            TextField("Type the camp you are in...", text: $camp)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray,width:1)
            Text("Thank you for submitting!")
            Button("Submit Name") {
                textTitle = "Welcome, \(name)!"
                name = ""
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
