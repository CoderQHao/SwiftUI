//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        ScrollView {
            ScrollViewReader { value in
                ForEach(0..<100) {
                    Text("\($0)")
                        .frame(width: 320, height: 100)
                        .background(Color(red: Double.random(in: 0.0...1.0), green: Double.random(in: 0.0...1.0), blue: Double.random(in: 0.0...1.0)))
                        .font(.title)
                        .padding()
                        .id($0)
                        .onTapGesture {
                            value.scrollTo(10, anchor: .top)
                        }
                }
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
