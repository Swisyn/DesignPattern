//
//  GUIBuilder.swift
//  AbstractFactory
//
//  Created by KAZI MAHBUBUR RAHMAN on 24/3/18.
//  Copyright © 2018 KAZI MAHBUBUR RAHMAN. All rights reserved.
//

import Foundation

class GUIBuilder {
    private var platform: String
    private var guiFactory: AbstractGUIFactory?
    
    init(platform: String) {
        self.platform = platform
    }
    
    func initGuiFactory() -> Void {
        if nil != guiFactory { return }
        if platform == "Windows" { guiFactory = WinFactory() }
        else { guiFactory = OSXFactory() }
    }
    
    func buildButton() -> Button {
        initGuiFactory()
        return guiFactory!.createButton()
    }
    
    func buildWindow() -> Window {
        initGuiFactory()
        return guiFactory!.createWindow()
    }

}
