//
//  ViewController.swift
//  DemoApp
//
//  Created by DongQing on 2023/9/15.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let popup = UIButton(type: .system)
        popup.setTitle("Popup SwiftUI View", for: .normal)
        popup.setTitleColor(.orange, for: .normal)
        popup.titleLabel?.font = UIFont.systemFont(ofSize: 36)
        popup.sizeToFit()
        popup.center = self.view.center
        popup.addTarget(self, action: #selector(popupController), for: .touchUpInside)
        
        self.view.addSubview(popup)
    }
    
    @objc func popupController() {
        let vc = UIHostingController(rootView: ContentView())
        self.present(vc, animated: true, completion: nil)
    }
}

