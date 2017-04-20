//
//  CourseViewController.swift
//  clubrecordarios
//
//  Created by willians on 27/11/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit

class CourseViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var loaderCourses: UIActivityIndicatorView!
    @IBOutlet weak var courseWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "http://clubrecordar.com/foro/")
        let request = URLRequest(url: url!)
        loaderCourses.hidesWhenStopped = true
        loaderCourses.startAnimating()
        courseWebView.delegate = self
        courseWebView.loadRequest(request as URLRequest)

    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        NSLog("INICIANDO")
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        loaderCourses.stopAnimating()
        NSLog("TERMINOOOO")
    }
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        NSLog("Error")
    }
        

}
