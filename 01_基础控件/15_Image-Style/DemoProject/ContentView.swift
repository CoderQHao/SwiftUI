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
            Image("couples")
                .border(Color.orange)
            
            Image("couples")
                .border(Color.orange, width: 10)
            
            Image("couples")
                .opacity(0.5)
        }
        
        VStack {
            Image("couples")
                .shadow(radius: 10)
            
            Image("couples")
                .shadow(color: .purple, radius: 20, x: 20, y: 20)
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
