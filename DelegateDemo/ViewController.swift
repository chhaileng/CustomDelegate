//
//  ViewController.swift
//  DelegateDemo
//
//  Created by Chhaileng Peng on 11/8/18.
//  Copyright © 2018 Chhaileng Peng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var download: Download?

    @IBOutlet weak var statusLabel: UILabel!
    
    @IBAction func downloadTap(_ sender: UIButton) {
        
        statusLabel.text = "Status: Downloading..."
        
        // start download
        download?.startDownload()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        download = Download()
        download?.delegate = self
    }
}

extension ViewController: DownloadDelegate {
    func didFinishDownload(message: String) {
        statusLabel.text = "Status: \(message)"
    }
}

