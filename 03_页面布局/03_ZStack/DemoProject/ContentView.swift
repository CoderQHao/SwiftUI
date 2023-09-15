//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    var body: some View {
        ZStack(alignment: .center) {
            Image("beach")
                .clipShape(Circle())
            
            Text("Sea beach")
                .font(.system(size: 48))
                .foregroundColor(.white)
            
            Text("Hawaii - USA")
                .font(.system(size: 18))
                .foregroundColor(.white)
                .offset(x: 0, y: 36)
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
