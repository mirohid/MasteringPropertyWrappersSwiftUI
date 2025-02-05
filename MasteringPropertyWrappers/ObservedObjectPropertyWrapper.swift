//
//  ObservedObjectPropertyWrapper.swift
//  MasteringPropertyWrappers
//
//  Created by Tech Exactly iPhone 6 on 04/02/25.




//3. @ObservedObject (Manage Complex Data with Classes)
//Used for referencing external data models that conform to ObservableObject.

import SwiftUI

class CounterModel: ObservableObject {
    @Published var count = 0
}

struct ObservedObjectPropertyWrapper: View {
    
    @ObservedObject var counter = CounterModel()

    var body: some View {
        VStack {
            Text("Count: \(counter.count)")
            Button("Increment") {
                counter.count += 1
            }
        }
    }
}


struct ObservedObjectPropertyWrapper_Previews: PreviewProvider {
    static var previews: some View {
        ObservedObjectPropertyWrapper()
    }
}
