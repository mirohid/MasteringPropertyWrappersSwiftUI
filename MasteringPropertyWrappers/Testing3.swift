//
//  Testing3.swift
//  MasteringPropertyWrappers
//
//  Created by Tech Exactly iPhone 6 on 05/02/25.
//

import SwiftUI


class something: ObservableObject{
    @Published var TechExactly = 0
}

struct Testing3: View {
    @StateObject  var count = something()
    
    var body: some View {
        VStack(spacing: 30){
            Text("---Counter---")
                .font(.largeTitle)
                .padding(.top,50)
            Spacer()
        
            
                .bold()
            Text("Count  =  \(count.TechExactly)")
                .font(.title2)
                .bold()
            //SecondView(count: $count)
            SecondView(count: count)
            Spacer()
        }
    }
}

struct SecondView: View{
    @ObservedObject var count: something
    var body: some View{
        
        Button {
            count.TechExactly += 1
        } label: {
            Text("Increment")
                .font(.title)
                .bold()
        }
        
    }
}

struct Testing3_Previews: PreviewProvider {
    static var previews: some View {
        Testing3()
    }
}
