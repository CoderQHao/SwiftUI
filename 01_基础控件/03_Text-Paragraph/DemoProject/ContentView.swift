//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    var body: some View {
        
        VStack{
            Text("Interactive tutorials.")
            Text("CoderQHao冬青")
                .tracking(10)
            Text("CoderQHao冬青")
                .kerning(10)
            Text("CoderQHao冬青")
                .blur(radius: 1)
            Text("SwiftUI is an innovative, exceptionally simple way to build user interfaces across all Apple platforms with the power of Swift.SwiftUI is an innovative, exceptionally simple way to build user interfaces across all Apple platforms with the power of Swift.")
                .lineSpacing(20)
                .lineLimit(nil)
            Text("CoderQHao冬青")
                .offset(x: 40, y: 0)
            Text("CoderQHao冬青")
                .frame(width: 200, height: 80, alignment: .center)
                .background(Color.yellow)
            Text("CoderQHao冬青")
                .position(x: 50, y: 50) // 该方法会是对齐属性失效，因此文字不在位于文本视图的右下角，而是从文本视图的左上角，向右和向下各偏移50点的位置
                .frame(width: 300, height: 100, alignment: .bottomTrailing)
                .background(Color.yellow)
            Text("Interactive\ntutorials\nfor\nXcode!")
                .lineLimit(4)
                .frame(width: 200, height: 100)
                .multilineTextAlignment(.center)
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
