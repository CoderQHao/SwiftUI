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
                Spacer()
                Text("SwiftUI Tutorials")
                    .font(.largeTitle)
                    .padding()
                    .background(.red)
                Spacer()
                Text("SwiftUI Tutorials")
                    .font(.largeTitle)
                    .padding()
                    .background(Image("iPhoneSerial").resizable())
                Spacer()
                Text("SwiftUI Tutorials")
                    .font(.largeTitle)
                    .padding()
                    .background(LinearGradient(gradient: Gradient.init(colors: [.orange, .purple]), startPoint: .topLeading, endPoint: .bottomTrailing))
                Spacer()
                Text("SwiftUI Tutorials")
                    .font(.largeTitle)
                    .padding()
                    .background(
                        Circle().fill(Color.orange).frame(width: 280, height: 280)
                    )
                Spacer()
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
