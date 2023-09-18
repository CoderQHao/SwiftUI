//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {

    var body: some View {
        ScrollView(.vertical, showsIndicators: true, content: {
            Text("Overview")
                .font(.system(size: 48))
                .padding(10)
            
            Image("iPhone")
                .resizable()
                .frame(width: 300, height: 556, alignment: .center)
        })
        .background(.pink)
        .padding(10)
        .onAppear {
            print("-----")
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
