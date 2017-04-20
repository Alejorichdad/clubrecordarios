//
//  EventsViewController.swift
//  clubrecordarios
//
//  Created by willians on 27/11/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController, UIWebViewDelegate{
    @IBOutlet weak var eventsLoader: UIActivityIndicatorView!

    @IBOutlet weak var eventsWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "http://clubrecordar.com/eventos/")
        let request = URLRequest(url: url!)
        
        eventsLoader.hidesWhenStopped = true
        eventsLoader.startAnimating()
        eventsWebView.delegate = self
        eventsWebView.loadRequest(request as URLRequest)

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        NSLog("INICIANDO")
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        eventsLoader.stopAnimating()
        NSLog("TERMINOOOO")
    }
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        NSLog("ERROR")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
