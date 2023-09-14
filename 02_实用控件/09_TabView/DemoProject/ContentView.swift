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
                    .tabItem({
                        Image(systemName: "house")
                        Text("Home") })
                Text("The settings page")
                    .font(.system(size: 36))
                    .tabItem({
                        Image(systemName: "gear")
                        Text("Settings")
                    })
            }
            .onAppear {
                let appearance = UITabBarAppearance()
                appearance.backgroundColor = UIColor(Color.gray.opacity(0.2))
                UITabBar.appearance().scrollEdgeAppearance = appearance
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
