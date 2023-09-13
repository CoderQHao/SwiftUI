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
            Image("girlPicture") // 差值混合模式
                .blendMode(.difference)
            
            ZStack {
                Image("texture")
                Image("girlPicture")
                    .blendMode(.multiply)
            }
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
