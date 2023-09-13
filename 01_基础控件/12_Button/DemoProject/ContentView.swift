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
            Button("First Button") {
                print("---First Button")
            }
            
            Button {
                print("---Second Button")
            } label: {
                Text("Second Button")
            }
            
            Button {
                print("---Third Button")
            } label: {
                Image(systemName: "clock")
                Text("Third Button")
            }
            .foregroundColor(.white)
            .background(.orange)
            
            Button {
                print("---Padding Button")
            } label: {
                Image(systemName: "clock")
                Text("Default padding")
            }
            .padding(30)
            .background(.yellow)
           

            Button {
                print("---Padding for label")
            } label: {
                Text("Default padding")
                    .padding(30)
                    .background(.orange)
            }
            
            Button {
                print("---Button with image")
            } label: {
                VStack {
                    Image(systemName: "star")
                    Text("Button with Image")
                }
                .padding()
                .background(.yellow)
            }
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
