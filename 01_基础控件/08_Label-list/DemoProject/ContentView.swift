//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    var body: some View {
//        Label {
//            Text("Progress")
//        } icon: {
//            Image(systemName: "book.circle")
//        }
        List {
            Label("Intruduction to SwiftUI", systemImage: "hand.wave")
            Label("Interactive tutorials for SwiftUI Essentials from scratch", systemImage: "hand.point.right")
            Label("Data Essentials to SwiftUI", systemImage: "flowchart")
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
            .environment(\.sizeCategory, .extraExtraExtraLarge)
    }
}
#endif
