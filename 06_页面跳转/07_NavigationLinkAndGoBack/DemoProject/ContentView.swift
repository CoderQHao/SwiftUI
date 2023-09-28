//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    @State private var isPresented = false
    
    var body: some View {
        NavigationView {
            VStack {
                Image("couples")
                    .onTapGesture {
                        self.isPresented.toggle()
                    }
                NavigationLink(destination: Text("< Go back").onTapGesture {
                    self.isPresented.toggle()
                }, isActive: $isPresented) {
                    Text("Next page")
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
