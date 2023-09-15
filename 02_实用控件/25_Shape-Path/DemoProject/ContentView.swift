//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    var body: some View {
        
        Path { path in
            path.move(to: CGPoint(x: 30, y: 0))
            path.addLine(to: CGPoint(x: 30, y: 200))
            path.addLine(to: CGPoint(x: 230, y: 200))
            path.addLine(to: CGPoint(x: 230, y: 0))

            path.move(to: CGPoint(x: 30, y: 300))
            path.addQuadCurve(to: CGPoint(x: 230, y: 300), control: CGPoint(x: 130, y: 450))
            path.addQuadCurve(to: CGPoint(x: 330, y: 300), control: CGPoint(x: 280, y: 220))
        }
        .stroke(lineWidth: 8)
        
        Path { path in
            path.addEllipse(in: CGRect(x: 100, y: 30, width: 200, height: 200))

            path.addRoundedRect(in: CGRect(x: 100, y: 120, width: 200, height: 200), cornerSize: CGSize(width: 10, height: 10))

            path.addEllipse(in: CGRect(x: 100, y: 210, width: 200, height: 200))
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
