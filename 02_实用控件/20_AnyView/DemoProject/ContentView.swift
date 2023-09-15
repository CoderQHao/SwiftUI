//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    private var randomBool = Bool.random()
    
//    var body: some View {
//        Group {
//            if randomBool {
//                Image(systemName: "star.fill")
//            } else {
//                Text("Sorry, you miss the gift.")
//                    .font(.system(size: 32))
//            }
//        }
//    }
//    
//    var body: some View {
//        if randomBool {
//            return Text("Hi, you get the gift.")
//                .font(.system(size: 32))
//        } else {
//            return Text("Sorry, you miss the gift.")
//                .font(.system(size: 32))
//        }
//    }
    
    var body: AnyView {
        if randomBool {
            return AnyView(Image(systemName: "star.fill").font(.system(size: 72)))
        }
        else {
            return AnyView(Text("Sorry, you miss the gift.").font(.system(size: 32)))
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
