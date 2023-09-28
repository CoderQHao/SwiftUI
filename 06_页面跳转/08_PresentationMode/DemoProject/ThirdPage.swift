//
//  ThirdPage.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/28.
//

import SwiftUI

struct ThirdPage: View {
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    var body: some View {
        Button("< Go back") {
            self.presentationMode.wrappedValue.dismiss()
        }
    }
}

#Preview {
    ThirdPage()
}
