//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    @State var color = Color.black
    
    var body: some View {
        VStack {
            Circle()
                .frame(width: 300, height: 300)
                .foregroundColor(color)
            
            Spacer()
                .frame(height: 20)
            
            HStack {
                ColorPicker("Pick color: ", selection: self.$color, supportsOpacity: true)
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
