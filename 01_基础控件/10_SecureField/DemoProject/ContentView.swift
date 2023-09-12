//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    @State var password: String
    
    var body: some View {
        VStack {
            Text("Your password is \(password)!")
            
            SecureField("Your password", text: $password) {
                print("Your password is \(self.password)")
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
        }.padding()
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(password: "")
    }
}
#endif
