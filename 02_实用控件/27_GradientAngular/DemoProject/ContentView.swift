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
                AngularGradient(
                    gradient: Gradient(colors: [.orange, .red, .purple]),
                    center: UnitPoint(x: 0.5, y: 0.5),
                    startAngle: Angle.init(degrees: 0),
                    endAngle: Angle.init(degrees: 360))
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
