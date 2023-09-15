//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct MyCell : View {
    var cellIndex : Int
    
    init(cellIndex : Int) {
        self.cellIndex = cellIndex
        print("cell \(cellIndex) initialized.")
    }
    
    var body : some View {
        Text("Interactive tutorial #\(cellIndex)")
    }
}

struct HeaderView : View {
    var color: Color
    var body: some View {
        Text("Header View")
            .padding()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .background(color)
    }
}

struct ContentView : View {
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading, spacing: 20, pinnedViews: [.sectionHeaders]) {
                Section {
                    ForEach(1...40, id: \.self) { count in
                        MyCell(cellIndex: count)
                    }
                } header: {
                    HeaderView(color: .orange)
                }
                
                Section {
                    ForEach(1...40, id: \.self) { count in
                        MyCell(cellIndex: count)
                    }
                } header: {
                    HeaderView(color: .pink)
                }
            }.padding()
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
