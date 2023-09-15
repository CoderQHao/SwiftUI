//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    var body: some View {
        VStack(spacing: 40) {
            Image("avarta1")
                .modifier(myImageStyle())
    
            Image("avarta2")
                .modifier(myImageStyle())

            Image("avarta3")
                .modifier(myImageStyle())
        }
    }
}

struct myImageStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 200, height: 200, alignment: .trailing)
            .cornerRadius(100)
            .saturation(0.0)
            .brightness(0.1)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
