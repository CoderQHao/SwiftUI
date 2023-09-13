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
            
            Image("couples")
                .blur(radius: 2, opaque: true)
        }
        
        VStack {
            Image("couples")
                .brightness(0.5)
            
            Image("couples")
                .colorInvert()
            
            Image("couples")
                .colorMultiply(.yellow)
        }
        
        VStack {
            Image("couples") // 对比度
                .contrast(1.5)
            
            Image("couples") // 对比度
                .contrast(-1.5)
            
            Image("couples") // 色调旋转
                .hueRotation(Angle.degrees(180))
            
            Image("couples") // 饱和度
                .saturation(0)
        }
        
        VStack {
            Image("couples")
                .grayscale(0.9)
            
            Image("couples")
                .luminanceToAlpha()
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
