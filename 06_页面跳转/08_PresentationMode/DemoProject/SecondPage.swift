//
//  SecondPage.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/28.
//

import SwiftUI

struct SecondPage: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            Spacer()
            Button("< Go back") {
                self.presentationMode.wrappedValue.dismiss()
            }
            Spacer()
            NavigationLink {
                ThirdPage()
            } label: {
                Text("Next >")
            }
            Spacer()
        }
    }
}

#Preview {
    SecondPage()
}
