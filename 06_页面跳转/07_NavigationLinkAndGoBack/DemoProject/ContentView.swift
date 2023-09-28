//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct Car : Identifiable, Hashable {
    var id = UUID()
    var brand : String
    
    static var data: [Car] {
        return [
            .init(brand: "BYD"),
            .init(brand: "TSL"),
            .init(brand: "BMW")
        ]
    }
}

struct ContentView : View {
    
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack {
            NavigationLink {
                Text("Second screen.")
            } label: {
                Text("Goto second screen >")
            }
        }
        NavigationStack {
            NavigationLink(Car.data[0].brand, destination: DetailView(Car.data[0]))
        }
        NavigationStack(path: $path) {
            List(Car.data) { car in
                NavigationLink(car.brand, value: car)
            }
            .listStyle(.inset)
            .navigationDestination(for: Car.self) { car in
                DetailView(car)
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

struct DetailView: View {
    let car: Car
    
    init(_ car: Car) {
        self.car = car
    }
    
    var body: some View {
        Text("Your selected car is:")
        Text(car.brand)
            .bold()
            .shadow(radius: 2)
    }
}
