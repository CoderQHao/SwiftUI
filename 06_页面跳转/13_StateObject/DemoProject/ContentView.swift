//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

class EggTartModel: ObservableObject {
    @Published var score: Int = 0
    
    init() {
        print("EggTartModel Created")
    }
}

struct FoodPicker: View {
    @StateObject var model = EggTartModel()
    var body: some View {
        HStack {
            Text("Egg tart: \(model.score)")
            
            Button(" + ") {
                model.score += 1
            }
        }
        .padding()
    }
}

struct ContentView : View {
    
    @State private var withCoupon = false
    
    var body: some View {
        VStack {
            FoodPicker()
            HStack {
                Text("User Coupon: \(withCoupon ? "YES": "NO")")
                Button("Coupon") {
                    withCoupon.toggle()
                }
            }
        }
    }
}


#Preview {
    ContentView()
}


