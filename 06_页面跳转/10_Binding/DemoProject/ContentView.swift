//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    @State var isPresented: Bool = false
    
    var body: some View {
        PopView(show: $isPresented)
            .sheet(isPresented: $isPresented, content: {
                Button(action: {
                    self.isPresented.toggle()
                }, label: {
                    Text("Dismiss")
                        .font(.largeTitle)
                })
            })
    }
}

struct PopView : View {
    @Binding var show: Bool
    var body: some View {
        Button(action: {
            self.show.toggle()
        }, label: {
            Image(systemName: "person.crop.circle")
                .font(.system(size: 32))
                .frame(width: 32, height: 32)
                .foregroundStyle(.black)
                .background(Color.white)
                .cornerRadius(30)
                .shadow(color: .orange, radius: 10.0, x: 0.0, y: 10.0)
        })
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
