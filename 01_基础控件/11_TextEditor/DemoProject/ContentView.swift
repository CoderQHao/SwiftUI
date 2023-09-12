//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    @State var content: String = ""
    @State var isAlert = false
    
    var body: some View {
        VStack {
            TextEditor(text: self.$content)
                .background(Color.gray.opacity(0.3))
                .scrollContentBackground(.hidden) // 隐藏滚动背景内容，才能添加背景色
                .frame(height: 200)
            
            Button("Sumbit") {
                self.isAlert = true
            }
            .alert(isPresented: $isAlert) {
                Alert(title: Text("Content"), message: Text(content))
            }
        }.padding()
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
