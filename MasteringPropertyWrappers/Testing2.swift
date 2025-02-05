//
//  Testing2.swift
//  MasteringPropertyWrappers
//
//  Created by Tech Exactly iPhone 6 on 05/02/25.
//

//import SwiftUI
//
//class something: ObservableObject{
//    @Published var techExactly = 0
//}
//
//struct Testing2: View {
//    @StateObject  var count = something()
//    
//    var body: some View {
//        VStack(spacing:30){
//            Text("--Counter--")
//                .font(.largeTitle)
//                .bold()
//            
//            Text("Count   =  \(count.techExactly)")
//                .font(.title2)
//            
//            childView(count: count)
//            
//        }
//    }
//}
//
//
//struct childView: View{
//    
//    @ObservedObject var count: something
//    
//    var body: some View{
//        Button {
//            count.techExactly += 1
//        } label: {
//            Text("Increment")
//                .font(.title)
//        }
//
//    }
//}
//
//
//
//struct Testing2_Previews: PreviewProvider {
//    static var previews: some View {
//        Testing2()
//    }
//}
