//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    private let languages = ["Swift", "Objective-C"]
    @State private var selectedLanguage = 0
    @State private var workingYear: Double = 2
    @State private var enableNotification = false
    
    var body: some View {
        NavigationView {
            Form {
                Picker(selection: $selectedLanguage) {
                    ForEach(0..<languages.count, id: \.self) {
                        Text(self.languages[$0]).tag($0)
                    }
                } label: {
                    Text("Languages")
                }
                .pickerStyle(SegmentedPickerStyle())
                
                HStack {
                    Text("Working years")
                    Slider(value: $workingYear, in: 1...10, step: 1)
                }
                
                Toggle(isOn: $enableNotification, label: {
                    Text("Enable Notification")
                })
                
                Button(action: {
                    print("Your programming language: \(self.languages[self.selectedLanguage])")
                    print("Your working years: \(Int(self.workingYear))")
                    print("Enable notification: \(self.enableNotification)")
                }, label: {
                    Text("Submit")
                })
            }
            .navigationTitle(Text("Profiles"))
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
