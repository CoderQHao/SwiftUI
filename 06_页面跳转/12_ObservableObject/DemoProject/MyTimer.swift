//
//  MyTimer.swift
//  DemoProject
//
//  Created by DongQing on 2023/10/9.
//

import Foundation

class MyTimer: ObservableObject {
    @Published var coinNumber: Int = 0
    
    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.coinNumber += 1
        }
    }
}
