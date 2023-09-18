//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {

    var body: some View {
        ScrollView(.horizontal, showsIndicators: true, content: {
            HStack {
                ForEach(1..<10) { i in
                    Image("banner_1")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 160)
                }
            }
        })
        .padding(20)
        .background(Color.black.opacity(0.1))
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
