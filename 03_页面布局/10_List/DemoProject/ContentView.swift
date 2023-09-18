//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    let languages = ["Objective-C", "Swift", "SwiftUI"]

    var body: some View {
        List {
            ForEach(languages, id: \.self) {
                Text($0)
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
