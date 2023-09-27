//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ToolbarButtons : View {
    
    @State var isPresented = false
    
    var body: some View {
        HStack(spacing: 50) {
            Button(action: {
                self.isPresented.toggle()
            }, label: {
                Image(systemName: "plus.circle")
            })
            .alert(isPresented: $isPresented, content: {
                Alert(title: Text("Operation"),
                      message: Text("Create a new file."))
            })
            Button(action: {
                
            }) {
                Image(systemName: "square.and.pencil")
            }
            Button(action: {
                
            }) {
                Image(systemName:"trash")
            }
        }
    }
}

struct ContentView : View {
    
    var body: some View {
        NavigationView {
            Text("SwiftUI's NavigationView")
                .navigationTitle(Text("SwiftUI"))
                .navigationBarTitleDisplayMode(.inline)
                .toolbar(content: {
                    ToolbarItem(placement: .bottomBar) {
                        ToolbarButtons()
                    }
                })
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
