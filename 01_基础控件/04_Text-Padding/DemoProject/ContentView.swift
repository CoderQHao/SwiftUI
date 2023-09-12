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
            Text("CoderQHao冬青")
                .background(.black)
                .foregroundColor(.white)
                .padding(20)
            
            Text("CoderQHao冬青")
                .padding(20)
                .background(.black)
                .foregroundColor(.white)
            
            Text("CoderQHao冬青")
                .font(.largeTitle)
                .padding(15)
                .background(.yellow)
                .padding(15)
                .background(.pink)
                .padding(10)
                .background(.blue)
                            
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
