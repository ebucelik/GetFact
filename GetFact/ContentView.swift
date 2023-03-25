//
//  ContentView.swift
//  GetFact
//
//  Created by Ing. Ebu Celik, BSc on 25.03.23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            Task {
                do {
                    let factService = FactService()

                    let fact = try await factService.getRandomFact()

                    print("RESPONSE: \(fact)")
                } catch {
                    print("ERROR: \(error.localizedDescription)")
                }
            }
        }
    }
}
