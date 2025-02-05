//
//  Testing.swift
//  MasteringPropertyWrappers
//
//  Created by Tech Exactly iPhone 6 on 05/02/25.
//

//import SwiftUI
//
//class Something: ObservableObject{
//    @Published var helloWorldCounter = 0
//}
//
//
//struct Testing: View {
//    @StateObject  var count = Something()
//
//    var body: some View {
//        VStack(spacing: 50){
//            Text("<----Counter---->")
//                .font(.largeTitle)
//            Text("Count  =  \(count.helloWorldCounter) ")
//            //TestingView2(count: $count)
//            TestingView2(count: count)
//        }
//    }
//}
//
//struct TestingView2: View{
//    @ObservedObject var count: Something
//    var body: some View{
//        Button {
//            count.helloWorldCounter += 1
//        } label: {
//            Text("increment")
//        }
//    }
//}
//
//
//struct Testing_Previews: PreviewProvider {
//    static var previews: some View {
//        Testing()
//    }
//}
