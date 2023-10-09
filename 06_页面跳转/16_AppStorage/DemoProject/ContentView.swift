//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    @AppStorage("nickname") var nickname: String = "DongQing"
    
    var body: some View {
        VStack(spacing: 20, content: {
            Text(nickname)
            
            Button(action: {
                self.nickname = "CoderQHao"
            }, label: {
                Text("Change nickname")
            })
        })
        .padding()
    }
}

#Preview {
    ContentView()
}


