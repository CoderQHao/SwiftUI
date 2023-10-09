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

struct DetailView: View {
    @EnvironmentObject var model: UserModel
    var body: some View {
        Text("Your nickName is \(model.nickName)")
    }
}

struct ContentView : View {
    
    @EnvironmentObject var model: UserModel
    @State var isPresented = false
    
    var body: some View {
        NavigationView {
            VStack {
                TextField("Your nickname", text: $model.nickName)
                    .padding()
                NavigationLink {
                    DetailView()
                } label: {
                    Text("Show Detail")
                }

            }
        }
    }
}


#Preview {
    let model = UserModel()
    model.nickName = "Dong Qing"
    return ContentView().environmentObject(model)
}


