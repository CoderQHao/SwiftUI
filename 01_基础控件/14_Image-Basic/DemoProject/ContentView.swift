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
            Image("girlPicture")
            
            Image(systemName: "arkit")
                .foregroundColor(.orange)
                .font(.system(size: 48))
            
            Image("girlPicture")
                .resizable() // 使图像进行自动缩放，以适配其父视图
                .aspectRatio(contentMode: .fit)
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
