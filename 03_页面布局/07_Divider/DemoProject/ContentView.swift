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
            Image(systemName: "clock")
                .font(.system(size: 36))
            
            Divider()
                .background(.pink)
                .scaleEffect(CGSize(width: 1, height: 20))
                .padding(Edge.Set(arrayLiteral: .top, .bottom), 20)
            
            Text("\(Date())")
            
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
