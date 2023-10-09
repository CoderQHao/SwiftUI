//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct MyEnvironmentKey: EnvironmentKey {
    static let defaultValue: String = "Default Value"
}

extension EnvironmentValues {
    var myCustomValue: String {
        get { self[MyEnvironmentKey.self] }
        set { self[MyEnvironmentKey.self] = newValue }
    }
}


struct ContentView : View {
    
    @Environment(\.myCustomValue) var customValue: String
    
    var body: some View {
        VStack {
            Text(customValue)
        }
    }
}

#Preview {
    ContentView()
        .environment(\.myCustomValue, "My name is DongQing")
}


