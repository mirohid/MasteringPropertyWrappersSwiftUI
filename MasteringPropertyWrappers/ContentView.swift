//
//  ContentView.swift
//  MasteringPropertyWrappers
//
//  Created by Tech Exactly iPhone 6 on 04/02/25.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0

    var body: some View {
        VStack {
            Text("Count: \(count)")
            Button("Increment") {
                count += 1
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
