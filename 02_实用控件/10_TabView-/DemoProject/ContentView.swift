//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    
    @State var showNotification = true
    
    var body: some View {
        VStack {
            TabView {
                Text("The home page.")
                    .font(.system(size: 36))
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .background(Color.orange)
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
                Text("The settings page")
                    .font(.system(size: 36))
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                    .background(Color.pink)
                    .tabItem {
                        Image(systemName: "gear")
                        Text("Settings")
                    }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        }
        .edgesIgnoringSafeArea(.all)
    }
}
#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
