//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    @State var isPresented = false
    
    var body: some View {
        VStack {
            Image("couples")
                .scaleEffect(0.8)
            
            Image("couples")
                .scaleEffect(CGSize(width: 1.2, height: 1))
            
            Image("couples")
                .scaleEffect(x: 1.5, y: 1, anchor: UnitPoint.bottomLeading)
        }
        
        VStack {
            Image("couples")
                 .rotationEffect(Angle.init(degrees: 90))
             
            Image("couples")
                .rotationEffect(Angle.init(degrees: 30), anchor: UnitPoint(x: 0, y: 0))
            
            Image("couples")
                .rotation3DEffect(Angle.init(degrees: 30), axis: (x: CGFloat(0.1), y: CGFloat(0.1), z: CGFloat(0)))
        }
    }
}

struct MyDetailView : View {
    
    let message: String
    
    var body: some View {
        VStack {
            Text(message)
                .font(.largeTitle)
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
