//
//  BindingPropertyWrapper.swift
//  MasteringPropertyWrappers
//
//  Created by Tech Exactly iPhone 6 on 04/02/25.
//

import SwiftUI

struct BindingPropertyWrapper: View {
    @State private var count = 0

    var body: some View {
        VStack {
            Text("Count: \(count)")
            ChildView(count: $count)
        }
    }
}

struct ChildView: View {
    @Binding var count: Int

    var body: some View {
        Button("Increment in Child") {
            count += 1
        }
    }
}


struct BindingPropertyWrapper_Previews: PreviewProvider {
    static var previews: some View {
        BindingPropertyWrapper()
    }
}
