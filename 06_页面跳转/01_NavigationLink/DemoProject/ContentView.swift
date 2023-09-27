//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    var body: some View {
        NavigationView {
            NavigationLink {
                MyDetailView(message: "Detail Page #2")
            } label: {
                Text("Go Detail Page >")
                    .font(.system(size: 36))
            }
            .navigationTitle("Index Page")
            .tint(Color.pink)
        }
    }
}

struct MyDetailView : View {
    
    let message: String
    
    var body: some View {
        Text(message)
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
