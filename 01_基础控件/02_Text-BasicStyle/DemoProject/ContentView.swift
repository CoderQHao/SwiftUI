//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    var body: some View {
        
        VStack{
            Text(verbatim: "CoderQHao冬青")
                .foregroundColor(Color.red)
            
            Text("CoderQHao冬青")
                .italic()
            
            Text("CoderQHao冬青")
                .underline()
            
            Text("CoderQHao冬青")
                .underline(true, color: .orange)
            
            Text("CoderQHao冬青")
                .strikethrough()
            
            Text("CoderQHao冬青")
                .strikethrough(true, color: .orange)
            
            Text("CoderQHao冬青")
                .foregroundColor(Color.red)
            
            Text("CoderQHao冬青")
                .baselineOffset(CGFloat(5.0))
                .background(Color.orange)

            Text("CoderQHao冬青")
                 .background(Image("Picture"), alignment: .bottom)
            
            VStack{
                Text("CoderQHao冬青")
                    .font(.footnote)
                
                Text("CoderQHao冬青")
                    .font(.system(size: 36))
                
                Text("CoderQHao冬青")
                    .font(.system(.title, design: .monospaced))
                
                Text("CoderQHao冬青")
                    .font(.custom("BradleyHandITCTT-Bold", size: 36))
                
                Text("CoderQHao冬青")
                    .fontWeight(Font.Weight.heavy)
                
                Text("CoderQHao冬青")
                    .fontWeight(Font.Weight.ultraLight)
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
