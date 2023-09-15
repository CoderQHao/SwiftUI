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
                RadialGradient(gradient: Gradient(colors: [.orange, .red, .purple]),
                    center: .init(x: 0, y: 0),
                    startRadius: CGFloat(50),
                    endRadius: CGFloat(250))
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
