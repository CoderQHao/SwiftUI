//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    var body: some View {
        ZStack {
            NewCapsule(color: .red, degree: 0)
            NewCapsule(color: .red, degree: 45)
            
            NewCapsule(color: .yellow, degree: 90)
            NewCapsule(color: .yellow, degree: 135)
            
            NewCapsule(color: .blue, degree: 180)
            NewCapsule(color: .blue, degree: 225)
            
            NewCapsule(color: .green, degree: 270)
            NewCapsule(color: .green, degree: 314)
        }
    }
}

struct NewCapsule: View {
    var color : Color
    var degree : Double
    
    var body: some View {
        Capsule()
            .foregroundColor(color)
            .frame(width : 60, height: 90)
            .offset(x: 0, y: 60)
            .rotationEffect(.degrees(degree))
            .opacity(0.75)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
