//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {

    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
            VStack {
                HStack(spacing: 10) {
                    Text("CoderQHao")
                        .padding()
                        .background(.white)
                    
                    Spacer()
                        .frame(height: 20)
                        .background(.pink)
                }
                
                Spacer()
                    .frame(width: 20)
                    .background(.pink)
                
                HStack(spacing: 10) {
                    Spacer()
                        .frame(height: 20)
                        .background(.pink)
                    Text("CoderQHao")
                        .padding()
                        .background(.white)
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
