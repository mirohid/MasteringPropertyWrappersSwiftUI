//
//  Testing4.swift
//  MasteringPropertyWrappers
//
//  Created by Tech Exactly iPhone 6 on 05/02/25.
//

import SwiftUI


class TechExactly: ObservableObject{
    
    @Published var text:String = "Hello Tech Exactly"
}

struct RedView: View {
    
    @StateObject var data = TechExactly()
    
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            BlueView()
                .environmentObject(data)
        }
    }
}

struct BlueView: View {
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            YellowView()
        }.padding()
    }
}


struct YellowView: View {
    @EnvironmentObject var data: TechExactly
    var body: some View {
        ZStack{
            Color.yellow.ignoresSafeArea()
            Text(data.text)
        }.padding()
    }
}

struct Testing4_Previews: PreviewProvider {
    static var previews: some View {
        RedView()
    }
}
