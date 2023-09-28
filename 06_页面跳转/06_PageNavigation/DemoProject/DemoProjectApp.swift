//
//  DemoProjectApp.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

@main
struct DemoProjectApp: App {
    var body: some Scene {
        WindowGroup {
            let model1 = InfoModel(description: "A lady with a horse", pictureName: "Picture1")
            let model2 = InfoModel(description: "An African animal with a very long neck", pictureName: "Picture2")
            ContentView(messages: [model1, model2])
        }
    }
}
