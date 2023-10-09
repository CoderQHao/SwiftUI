//
//  DemoProjectApp.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

@main
struct DemoProjectApp: App {
    
    var model: UserModel {
        let model = UserModel()
        model.nickName = "Dong Qing"
        return model
    }
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(model)
        }
    }
}
