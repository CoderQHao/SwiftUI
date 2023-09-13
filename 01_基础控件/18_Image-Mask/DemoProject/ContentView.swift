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
                .clipShape(Circle())
            
            Image("girlPicture")
                .mask(Circle())
            
            Image("gradientImage")
                .resizable()
                .frame(width: 300, height: 300)
                .mask(
                    Text("SWIFT UI!").font(Font.system(size: 64).bold()
                ))
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
