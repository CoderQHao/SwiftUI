//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    @State var languages = ["Objective-C", "Swift", "SwiftUI"]

    var body: some View {
        NavigationView {
            List {
                ForEach(languages, id: \.self) {
                    Text($0)
                }
                .onMove { fromOffsets, destination in
                    self.languages.move(fromOffsets: fromOffsets, toOffset: destination)
                }
            }
            .navigationBarTitle(Text("Edit Row"), displayMode: .large)
            .navigationBarItems(trailing: EditButton())
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
