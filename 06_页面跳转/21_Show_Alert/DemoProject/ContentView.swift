//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    @State var isAlert = false
    
    let primaryButton = Alert.Button.default(Text("Yes")) {
        print("Yes, I'm a student")
    }
    
    let secondaryButton = Alert.Button.default(Text("No")) {
        print("No, I'm not a student")
    }
    
    var alert: Alert {
        Alert(title: Text("Question"),
              message: Text("Are you a student"),
              primaryButton: primaryButton,
              secondaryButton: secondaryButton)
    }
    
    
    var body: some View {
        Button("Alert Sheet") {
            self.isAlert = true
        }.alert(isPresented: $isAlert, content: {
            alert
        })
    }
}

#Preview {
    ContentView()
}


