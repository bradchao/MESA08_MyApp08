//
//  ViewController.swift
//  MyApp08
//
//  Created by user22 on 2017/9/19.
//  Copyright © 2017年 Brad Big Company. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {
    @IBOutlet weak var webView: UIWebView!

    @IBOutlet weak var imgView: UIImageView!
    
    @IBAction func changeValue(_ sender: UISlider) {
        
        let degree = sender.value
        let rad = degree / 180 * Float(Double.pi)
        
        imgView.transform = CGAffineTransform(rotationAngle: CGFloat(rad))
    }
    
    @IBAction func test3(_ sender: Any) {
        UIView.animate(withDuration: 1){
            let degree:Float = 180
            let rad = degree / 180.0 * Float(Double.pi)
            self.webView.transform = CGAffineTransform(rotationAngle: CGFloat(rad))
        }

        
    }
    
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print("Load Finish")
        
        let body = webView.stringByEvaluatingJavaScript(from: "document.body.innerHTML")
        print(body!)
        
    }
    
    
    @IBAction func test1(_ sender: Any) {
        let html = "<h1>Brad Big Company</h1><hr>Hello, Brad"
        
        webView.loadHTMLString(html, baseURL: nil)
        
    }
    
    @IBAction func test2(_ sender: UIButton) {
        UIView.animate(withDuration: 1){
            var rect = sender.frame
            rect.origin.y -= 200
            sender.frame = rect
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "http://10.2.24.136/brad97.html");
        let request = URLRequest(url: url!)
        webView.loadRequest(request)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

