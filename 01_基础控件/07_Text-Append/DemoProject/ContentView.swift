//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    var body: some View {
        Text("CoderQHao")
            .foregroundColor(.yellow)
            .fontWeight(.heavy)
        
        + Text("冬青")
            .foregroundColor(.orange)
            .strikethrough()
        
        + Text("DongQing")
            .foregroundColor(.red)
            .italic()
        
        + Text("SwiftUI")
            .foregroundColor(.pink)
            .underline()
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
