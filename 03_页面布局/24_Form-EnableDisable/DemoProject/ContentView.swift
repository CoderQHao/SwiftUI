//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    @State private var disabledForm = false
    @State private var enableNotification = false
    @State private var userName = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            Form {
                Toggle(isOn: $disabledForm, label: {
                    Text("Disable Form")
                })
                
                Section {
                    TextField("Username", text: $userName)
                    SecureField("Password", text: $password)
                    Toggle(isOn: $enableNotification) {
                        Text("Enable Notification")
                    }
                } header: {
                    Text("Please enter your information:")
                }
                .disabled(disabledForm)
            }
            .navigationTitle(Text("Profiles"))
        }
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
