//
//  EnvironmentObjectPropertyWrapper.swift
//  MasteringPropertyWrappers
//
//  Created by Tech Exactly iPhone 6 on 04/02/25.
//






import SwiftUI

class UserSettings: ObservableObject {
    @Published var username = "John"
}

struct EnvironmentObjectPropertyWrapper: View {
    @StateObject var settings = UserSettings()

    var body: some View {
        ChildView2().environmentObject(settings)
    }
}

struct ChildView2: View {
    @EnvironmentObject var settings: UserSettings

    var body: some View {
        Text("Hello, \(settings.username)")
    }
}


struct EnvironmentObjectPropertyWrapper_Previews: PreviewProvider {
    static var previews: some View {
        EnvironmentObjectPropertyWrapper()
    }
}
