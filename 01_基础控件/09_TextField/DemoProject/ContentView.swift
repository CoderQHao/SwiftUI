//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    @State var username: String
    @State var nickname: String
    
    var body: some View {
        VStack {
            Text("Your username is \(username)!")
            Text("Your nickname is \(nickname)!")
            
            TextField("User Name", text: $username) { value in
                print("onEditingChanged: \(self.username)")
            } onCommit: {
                print("onCommit: \(self.username)")
            }
            .textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("Nick Name", text: $nickname)
                .textFieldStyle(RoundedBorderTextFieldStyle())
        }
        .padding()
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(username: "", nickname: "")
    }
}
#endif
