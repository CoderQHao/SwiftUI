//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    
    var body: some View {
        NavigationLink {
            SecondPage()
        } label: {
            Text("This is index page.\nGo to the second page.")
                .font(.largeTitle)
        }

    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
#endif
