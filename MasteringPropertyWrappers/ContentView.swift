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
        VStack (spacing:50){
            Text("Count: \(count)")
            Button("Increment") {
                count += 1
            }
        }
    }
}

//
//struct ContentView: View {
//@State private var tapCount = 0
//
//var body: some View{
//Button("Tap Count : \(tapCount)" ) {
//     tapCount += 1
//    }
//  }
//}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
