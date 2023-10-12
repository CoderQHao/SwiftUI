//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ModalView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("Modal")
            Button("Close") {
                self.presentationMode.wrappedValue.dismiss()
            }
        }
    }
}

struct ContentView : View {
    
    @State var isPresented = false
    
    var body: some View {
        Button("Show Modal View") {
            self.isPresented = true
        }.sheet(isPresented: $isPresented, content: {
            ModalView()
        })
    }
}

#Preview {
    ContentView()
}


