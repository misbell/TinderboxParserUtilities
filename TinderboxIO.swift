//
//  TinderboxIO.swift
//  TinderboxParser
//
//  Created by michael isbell on 8/5/19.
//  Copyright © 2019 michael isbell. All rights reserved.
//

import Foundation
import Cocoa

struct TinderboxIO {
    
    var tbxfileURL: URL?
    
    mutating func loadTinderboxXmlDocument() {
        
       // print("well done tb")
        
        let openFileTypes = ["tbx"]
        
        let openPanel = NSOpenPanel()
        openPanel.allowsMultipleSelection = false
        openPanel.canChooseDirectories = true
        openPanel.canCreateDirectories = false
        openPanel.canChooseFiles = true
        openPanel.allowedFileTypes = openFileTypes
        
            openPanel.directoryURL = NSURL(fileURLWithPath: "/Users/michaelisbell/Dropbox/___tbx/",isDirectory: false) as URL
            let _ = openPanel.urls
        let _ = openPanel.runModal()
        
            if let fileurl  = openPanel.url {
            
                self.tbxfileURL = fileurl
            
//            if let xmlParserTbx = XMLParserTbx(contentPath: fileurl  ) {
//                xmlParserTbx.parse()
//
//            }
//            else {
//
//            }
            
        }
        
    }
}
