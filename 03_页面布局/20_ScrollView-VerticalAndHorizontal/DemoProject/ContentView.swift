//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: HorizontalAlignment.leading, spacing: 10) {
                Text("Overview")
                    .font(.system(size: 48))
                    .padding(20)
                
                Text("SwiftUI is an innovative, exceptionally simple way to build user interfaces across all Apple platforms with the power of Swift. Build user interfaces for any Apple device using just one set of tools and APIs. \n\nWith the power of Xcode, the ease of Swift, and the revolutionary features of cutting-edge Apple technologies, you have the freedom to create your most innovative apps ever.\n\nSwiftUI provides views, controls, and layout structures for declaring your app's user interface. The framework provides event handlers for delivering taps, gestures, and other types of input to your app, and tools to manage the flow of data from your app's models down to the views and controls that users will see and interact with.")
                    .frame(width: 300, height: 490, alignment: .topLeading)
                    .padding(20)
                
                ScrollView(.horizontal, showsIndicators: true) {
                    HStack(alignment:.center, spacing: 20) {
                        Image("iPhone")
                            .resizable()
                            .frame(width: 189, height: 350, alignment: .center)

                        Image("iPhoneSerial")
                            .resizable()
                            .frame(width: 518, height: 350, alignment: .center)

                        Image("iPhone")
                            .resizable()
                            .frame(width: 189, height: 350, alignment: .center)
                    }
                }
                .background(Color.orange)
                .padding(10)
            }
        }
        .padding(10)
        .background(Color.orange)
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
