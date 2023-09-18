//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct Book : Identifiable {
    let id = UUID()
    let title : String
    var referenceBook : [Book]?
}

struct ContentView : View {
    
    static let book1 = Book(title: "iOS programming from scratch")
    static let book2 = Book(title: "SwiftUI Essentials")
    static let book3 = Book(title: "Beginning iOS 14 & Swift 5")
    static let master1 = Book(title: "iOS Programming for Beginners", referenceBook: [book1, book2, book3])
    static let master2 = Book(title: "iOS Game Development", referenceBook: [book1, book2, book3])
    static let master3 = Book(title: "Beginning iOS Development with Swift", referenceBook: [book1, book2, book3])
    let masters = [master1, master2, master3]

    var body: some View {
        List(masters, children: \.referenceBook) { item in
            HStack {
                Image(systemName: "book")
                Text(item.title)
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
