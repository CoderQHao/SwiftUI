//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    var body: some View {
        VStack {
            Circle()
                .fill(.orange)
                .frame(width: 200, height: 200)
            
            ZStack {
                Circle()
                    .fill(.purple)
                Circle()
                    .fill(.yellow).scaleEffect(0.8)
                Circle()
                    .fill(.orange).scaleEffect(0.6)
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
