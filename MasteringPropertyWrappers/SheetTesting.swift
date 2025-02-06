import SwiftUI

struct SheetTesting: View {
    @State private var sheet = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello World")
                    .bold()
                    .font(.largeTitle)
            }
            VStack {
                Button {
                    sheet = true
                } label: {
                    Text("Click me")
                        .font(.title)
                        .bold()
                }.sheet(isPresented: $sheet) {
                    NavigationStack{
                        sheetView()
                    }.presentationDetents([.medium, .large])
            }
            }
        }
    }
}

struct sheetView: View{
    @Environment(\.dismiss) var dismiss
    var body: some View{
        VStack{
           Text("hello")
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            dismiss()
                        } label: {
                            Text("cancel")
                        }
                    

                    }
                }
            
            VStack{
                Image("image")
                    .frame(width: 200, height: 200)
                Spacer()
                Text("App Icon")
                    .font(.largeTitle)
                    .bold()
                
            }
        }
    }
}

struct SheetTesting_Previews: PreviewProvider {
    static var previews: some View {
        SheetTesting()
    }
}
