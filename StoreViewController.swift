//
//  StoreViewController.swift
//  clubrecordarios
//
//  Created by willians on 27/11/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit

class StoreViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var storeWebView: UIWebView!
    @IBOutlet weak var loaderStore: UIActivityIndicatorView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "http://clubrecordar.com/tienda2/index.php")
        let request = URLRequest(url: url!)
        
        loaderStore.hidesWhenStopped = true
        loaderStore.startAnimating()
        storeWebView.delegate = self
        storeWebView.loadRequest(request as URLRequest)

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
        loaderStore.stopAnimating()
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
