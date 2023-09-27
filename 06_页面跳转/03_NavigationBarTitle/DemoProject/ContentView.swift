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
            Text("SwiftUI's NavigationView")
                .navigationTitle(Text("SwiftUI"))
        }
        
        NavigationView {
            Text("SwiftUI's NavigationView")
                .navigationTitle(Text("SwiftUI"))
                .navigationBarTitleDisplayMode(.inline)
        }
        
        NavigationView {
            Text("SwiftUI's NavigationView")
                .navigationTitle(Text("SwiftUI"))
                .navigationBarTitleDisplayMode(.large)
                .toolbar(.hidden, for: .navigationBar)
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
