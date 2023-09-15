//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    @State var value  = 20.0
    
    var body: some View {
        VStack {
            ZStack {
                Image("halfFace")
                Image("halfFace")
                    .rotation3DEffect(.degrees(180), axis: (x: 1, y: 0, z: 0))
                    .rotationEffect(.degrees(180), anchor: .center)
                    .offset(x: 125, y: 0)
            }
            .offset(x: -70, y: 0)
        }
        .padding()
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
