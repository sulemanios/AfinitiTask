//
//  DownloadTaskModel.swift
//  AfinitiTask
//
//  Created by Muhammad Suleman on 6/12/21.
//  Copyright © 2021 Muhammad Suleman. All rights reserved.
//

import UIKit
import Foundation

class DownloadTaskModel: NSObject {
    
    var name: String = ""
    var progress: Double = 0.0
    var downloadTask: URLSessionDownloadTask!
    var url: URL!
}
