//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct TrailingButtons : View {
    var body: some View {
        HStack {
            Button(action: {
                print("Download the data")
            }, label: {
                Image(systemName: "icloud.and.arrow.down.fill")
            })
            
            Button(action: {
                print("Edit the data")
            }) {
                Image(systemName: "pencil.tip.crop.circle")
            }
        }
    }
}

struct ContentView : View {
    
    var body: some View {
        NavigationView {
            Text("SwiftUI's NavigationView")
                .navigationTitle(Text("SwiftUI"))
                .toolbar(content: {
                    ToolbarItem(placement: .topBarLeading) {
                        Button("Leading") {
                            print("Leading-----")
                        }
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        TrailingButtons()
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
