//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI

struct ContentView : View {
    @State private var remoteImage : UIImage? = nil
    let placeholderOne = UIImage(named: "PlaceholderPicture")
    
    var body: some View {
        Image(uiImage: self.remoteImage ?? placeholderOne!)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .onAppear(perform: fetchRemoteImage)
    }
    
    func fetchRemoteImage() {
        guard let url = URL(string: "https://coderqhao.github.io/images/%E6%B7%B1%E5%BA%A6%E5%B7%A5%E4%BD%9C%EF%BC%9A%E6%95%88%E7%8E%87%E8%B6%8A%E9%AB%98%E7%9A%84%E4%BA%BA%EF%BC%8C%E8%B6%8A%E6%87%82%E5%BE%97%E8%BF%99%E4%BA%94%E7%A7%8D%E6%8A%80%E5%B7%A7/%E6%B7%B1%E5%BA%A6%E5%B7%A5%E4%BD%9C.jpg") else { return }
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let image = UIImage(data: data!) {
                self.remoteImage = image
            } else {
                print(error ?? "")
            }
        }
        .resume()
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        return ContentView()
    }
}
#endif
