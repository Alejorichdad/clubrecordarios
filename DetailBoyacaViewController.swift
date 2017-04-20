//
//  DetailBoyacaViewController.swift
//  clubrecordarios
//
//  Created by willians on 8/12/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit

import MapKit

class DetailBoyacaViewController: UIViewController {
    
    private var _boyacaData : BoyacaModel!
    
    
    var boyacaData:BoyacaModel{
        get{
            return _boyacaData
        }
        set{
            _boyacaData = newValue
        }
    }
    
    @IBOutlet weak var imageDetalBoyaca: UIImageView!
    @IBOutlet weak var descriptionDetailBoyaca: UITextView!
    @IBOutlet weak var titleBoyacaMain: UILabel!
    @IBOutlet weak var locationBtn: UIImageView!
    @IBOutlet weak var mailBtn: UIImageView!
    @IBOutlet weak var phoneBtn: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initPhoneGesture()
        initMailGestures()
        initLocationGestures()
        
        titleBoyacaMain.text = boyacaData.title
        descriptionDetailBoyaca.text = boyacaData.descriptionDetail
        
        imageDetalBoyaca.image = boyacaData.image
        
        
    }
    
    func initPhoneGesture(){
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(DetailBoyacaViewController.tapPhoneDetected))
        
        singleTap.numberOfTapsRequired = 1 // you can change this value
        phoneBtn.isUserInteractionEnabled = true
        phoneBtn.addGestureRecognizer(singleTap)
    }
    
    func initMailGestures(){
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(DetailBoyacaViewController.tapMailDetected))
        
        singleTap.numberOfTapsRequired = 1 // you can change this value
        mailBtn.isUserInteractionEnabled = true
        mailBtn.addGestureRecognizer(singleTap)
    }
    
    func initLocationGestures(){
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(DetailBoyacaViewController.tapLocationDetected))
        
        singleTap.numberOfTapsRequired = 1 // you can change this value
        locationBtn.isUserInteractionEnabled = true
        locationBtn.addGestureRecognizer(singleTap)
    }
    
    
    //Action
    func tapPhoneDetected() {
        //print("PHONE CLICKED")
        
        /*if let url = URL(string: "tel://\(nationalData.phone)") {
         UIApplication.shared.open(url, options: [:], completionHandler: nil)
         }*/
        
        guard let number = URL(string: "telprompt://" + boyacaData.phone) else { return }
        if #available(iOS 10.0, *) {
            UIApplication.shared.open(number, options: [:], completionHandler: nil)
        } else {
            // Fallback on earlier versions
        }
        
        print(number)
    }
    
    func tapMailDetected() {
        /*guard let mail = URL(string: "mailto://" + nationalData.mail) else { return }
         UIApplication.shared.open(mail, options: [:], completionHandler: nil)*/
        
        let url = NSURL(string: "mailto:\(boyacaData.mail)")
        UIApplication.shared.openURL(url as! URL)
        
        print(url as! URL)
        
    }
    
    func tapLocationDetected() {
        print("Location CLICKED")
        let latitude:CLLocationDegrees =  boyacaData.latitude.doubleValue
        let longitude:CLLocationDegrees =  boyacaData.longitude.doubleValue
        let coordinate = CLLocationCoordinate2DMake(latitude, longitude)
        let region = MKCoordinateRegionMake(coordinate, MKCoordinateSpanMake(0.01, 0.02))
        let placemark = MKPlacemark(coordinate: coordinate, addressDictionary: nil)
        let mapItem = MKMapItem(placemark: placemark)
        let options = [
            MKLaunchOptionsMapCenterKey: NSValue(mkCoordinate: region.center),
            MKLaunchOptionsMapSpanKey: NSValue(mkCoordinateSpan: region.span)]
        mapItem.name = "target"
        mapItem.openInMaps(launchOptions: options)
    }
}
