//
//  SobreViewController.swift
//  Carros
//
//  Created by LuizRamos on 01/09/16.
//  Copyright © 2016 LuizRamos. All rights reserved.
//

import UIKit

class SobreViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet var webView: UIWebView!
    @IBOutlet var progress: UIActivityIndicatorView!
    
    let site = "http://www.livroiphone.com.br/carros/sobre.htm"
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Define the title
        self .title = "Sobre"
    
        //Start the animation of UIActivityIndicatorView
        self.progress.startAnimating()
        
        //Open web page into WebView
        
        if let url = NSURL(string: site){
        let request = NSURLRequest(URL: url)
            self.webView.loadRequest(request)
        } else {
            
        }
        
        //Build a delegate for WebView as itself
        //self.webView.delegate = self
        
        
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        self.viewDidLoad()
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        //Stop the UIActivityIndicatorView (progress)
        progress.stopAnimating()
    }

}
