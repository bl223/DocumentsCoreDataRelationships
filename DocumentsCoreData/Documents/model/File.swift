//
//  File.swift
//  Documents
//
//  Created by BryceLigaya on 6/21/19.
//  Copyright © 2019 Bl223LabCPU. All rights reserved.
//

import Foundation

class Documents {
    
    class func delete(url: URL) {
        try? FileManager.default.removeItem(at: url)
    }
    
    class func save(name: String, content: String) {
        let documentsURL = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
        let url = documentsURL.appendingPathComponent(name)
        
        try? content.write(to: url, atomically: true, encoding: .utf8)
    }
}
