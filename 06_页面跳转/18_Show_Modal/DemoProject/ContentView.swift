//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    @State var isPresented = false
    
    var modalView: some View {
        Text("The Modal View")
            .font(.system(size: 48))
            .bold()
    }
    
    var body: some View {
        Button("Show Modal View") {
            self.isPresented = true
        }.sheet(isPresented: $isPresented, content: {
            self.modalView
        })
    }
}

#Preview {
    ContentView()
}


