//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    
    var body: some View {
        NavigationStack {
            NavigationLink("Show Name", value: "DongQing")
                .navigationDestination(for: String.self) { value in
                    DetailView(userName: value)
                }
        }
    }
}

struct DetailView : View {
    
    var userName: String
    
    var body: some View {
        Text("username is")
        Text(userName)
            .font(.system(size: 50))
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
