//
//  ViewController.swift
//  RegExrGap
//
//  Created by jeswang on 15/2/26.
//  Copyright (c) 2015年 Rainy. All rights reserved.
//

import Cocoa
import WebKit

class ViewController: NSViewController {
    @IBOutlet weak var webView: WebView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSUserDefaults.standardUserDefaults().setBool(true, forKey: "WebKitDeveloperExtras")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        var mainBundle = NSBundle.mainBundle()
        var resourcesPath = mainBundle.bundlePath
        var htmlPath = "\(resourcesPath)/Contents/Resources/build/index.html"
        var request = NSURLRequest(URL: NSURL(fileURLWithPath: htmlPath)!)
        webView?.mainFrame.loadRequest(request)

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

