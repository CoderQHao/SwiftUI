//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    @State private var isVisible = false
    @State private var userName = ""
    @State private var password = ""
    
    var body: some View {
        NavigationView {
            Form {
                Toggle(isOn: $isVisible.animation(), label: {
                    if isVisible {
                        Text("Hide Form")
                    } else {
                        Text("Show Form")
                    }
                })
                if isVisible {
                    Section {
                        TextField("Username", text: $userName)
                        SecureField("Password", text: $password)
                    } header: {
                        Text("Please enter your information:")
                    }
                }
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
