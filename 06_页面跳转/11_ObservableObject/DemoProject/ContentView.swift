//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

class UserModel: ObservableObject {
    @Published var nickName: String = ""
}

struct ContentView : View {
    
    @ObservedObject var model = UserModel()
    @State var isPresented = false
    
    let dismiss = Alert.Button.default(Text("OK")) {}
    
    var alert: Alert {
        Alert(title: Text("Your nickname"),
              message: Text("\(self.model.nickName)"),
              dismissButton: dismiss)
    }
    
    var body: some View {
        VStack {
            TextField("Your nickname", text: $model.nickName)
                .padding()
            Button(action: {
                self.isPresented = true
            }, label: {
                Text("Show")
            })
            .alert(isPresented: $isPresented) { () -> Alert in
                alert
            }
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
