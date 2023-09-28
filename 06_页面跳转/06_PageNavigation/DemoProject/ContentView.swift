//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct InfoModel : Hashable {
    var description : String
    var pictureName : String
}

struct DetailView : View {
    var imageName : String
    var body: some View {
        Image(imageName)
    }
}


struct ContentView : View {
    
    var messages : [InfoModel]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(messages, id: \.self) { message in
                    NavigationLink {
                        DetailView(imageName: message.pictureName)
                    } label: {
                        Text(message.description)
                    }
                }
            }
            .navigationBarTitle("Pictures List")
        }
    }
}


#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        let model1 = InfoModel(description: "A lady with a horse", pictureName: "Picture1")
        let model2 = InfoModel(description: "An African animal with a very long neck", pictureName: "Picture2")
        
        return ContentView(messages: [model1, model2])
    }
}
#endif
