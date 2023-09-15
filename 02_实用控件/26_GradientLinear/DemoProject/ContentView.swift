//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    var body: some View {
        Text("SwifUI Gradient")
            .font(.system(size: 36))
            .padding()
            .foregroundColor(.white)
            .background(
                LinearGradient(gradient: Gradient(colors: [.orange, .red, .purple]), startPoint: .topLeading, endPoint: .bottomLeading)
            )
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
