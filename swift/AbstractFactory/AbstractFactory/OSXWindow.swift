//
//  OSXWindow.swift
//  AbstractFactory
//
//  Created by KAZI MAHBUBUR RAHMAN on 24/3/18.
//  Copyright © 2018 KAZI MAHBUBUR RAHMAN. All rights reserved.
//

import Foundation

class OSXWindow : Window {
    var title: String?
    
    func setTitle(_ title: String) {
        self.title = title
    }

    func show() {
        print("Showing OSX style window [Title: \(self.title!)]")
    }
}
