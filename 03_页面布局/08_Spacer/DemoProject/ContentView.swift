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
            HStack {
                Spacer()
                Image(systemName: "clock")
            }
            Spacer()
                .frame(height: 60)
            HStack {
                Image(systemName: "clock")
                Spacer()
                    .frame(width: 20)
                Text("\(Date())")
            }
        }
        .padding()
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
