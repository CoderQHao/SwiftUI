//
//  ContentView.swift
//  DemoProject
//
//  Created by DongQing on 2023/9/11.
//

import SwiftUI
import Combine

class GlobalData : ObservableObject {
    @Published var isActive = false
    var cancelableSubscriber : AnyCancellable? = nil
    
    init() {
        cancelableSubscriber = $isActive
            .delay(for: 3, scheduler: RunLoop.main)
            .map {val in false}
            .assign(to: \.isActive, on: self)
    }
}

struct ContentView : View {
    
    @EnvironmentObject var globalData : GlobalData
    
    var body: some View {
        LoadingView(isActive:  $globalData.isActive)
    }
}

struct ActivityIndicator: UIViewRepresentable {
    @Binding var isActive: Bool

    func makeUIView(context: UIViewRepresentableContext<ActivityIndicator>) -> UIActivityIndicatorView {
        return UIActivityIndicatorView(style: UIActivityIndicatorView.Style.large)
    }

    func updateUIView(_ uiView: UIActivityIndicatorView, context: UIViewRepresentableContext<ActivityIndicator>) {
        isActive ? uiView.startAnimating() : uiView.stopAnimating()
    }
}

struct LoadingView: View {
    @Binding var isActive: Bool
    var body: some View {
        VStack {
            Text("Waiting...")
            ActivityIndicator(isActive: self.$isActive)
        }
        .frame(width: UIScreen.main.bounds.width / 2,
               height: UIScreen.main.bounds.height / 5)
        .background(Color.orange)
        .foregroundColor(Color.primary)
        .cornerRadius(20)
        .opacity(self.isActive ? 1 : 0)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        let globalData = GlobalData()
        globalData.isActive = true
        
        return ContentView().environmentObject(globalData)
    }
}
#endif
