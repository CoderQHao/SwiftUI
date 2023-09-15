//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    var items : [GridItem] = [GridItem(GridItem.Size.flexible(), spacing: 10),
                              GridItem(GridItem.Size.flexible(), spacing: 10),
                              GridItem(GridItem.Size.flexible(), spacing: 10),
                              GridItem(GridItem.Size.flexible(), spacing: 10)]
    
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: items) {
                ForEach(1...10, id: \.self) { index in
                    Image("Avarta-\(index)")
                        .resizable()
                        .frame(height: 100)
                }
            }
            .padding()
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
