//
//  Download.swift
//  DelegateDemo
//
//  Created by Chhaileng Peng on 11/8/18.
//  Copyright © 2018 Chhaileng Peng. All rights reserved.
//

import Foundation

class Download {
    
    var delegate: DownloadDelegate?
    
    func startDownload() {
        // downlaod process goes here
        
        Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(downloadAfterDelay), userInfo: nil, repeats: false)
    }
    
    @objc func downloadAfterDelay() {
        // download is finished
        // notify to delegate
        delegate?.didFinishDownload(message: "Completed")
    }
    
    
}















