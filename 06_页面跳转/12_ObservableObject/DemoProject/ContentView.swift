//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    @ObservedObject var timer = MyTimer()
    
    
    var body: some View {
        Text("Coin number: \(self.timer.coinNumber)")
            .font(.largeTitle)
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
