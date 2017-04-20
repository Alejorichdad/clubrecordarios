//
//  DetailValleViewController.swift
//  clubrecordarios
//
//  Created by willians on 8/12/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit
import MapKit

class DetailValleViewController: UIViewController {

    private var _valleData : ValleModel!
    
    
    var valleData:ValleModel{
        get{
            return _valleData
        }
        set{
            _valleData = newValue
        }
    }
    
    @IBOutlet weak var imageDetalValle: UIImageView!
    @IBOutlet weak var descriptionDetailValle: UITextView!
    @IBOutlet weak var titleValleMain: UILabel!
    @IBOutlet weak var locationBtn: UIImageView!
    @IBOutlet weak var mailBtn: UIImageView!
    @IBOutlet weak var phoneBtn: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initPhoneGesture()
        initMailGestures()
        initLocationGestures()
        
        titleValleMain.text = valleData.title
        descriptionDetailValle.text = valleData.descriptionDetail
        
        imageDetalValle.image = valleData.image
        
        
    }
    
    func initPhoneGesture(){
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(DetailValleViewController.tapPhoneDetected))
        
        singleTap.numberOfTapsRequired = 1 // you can change this value
        phoneBtn.isUserInteractionEnabled = true
        phoneBtn.addGestureRecognizer(singleTap)
    }
    
    func initMailGestures(){
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(DetailValleViewController.tapMailDetected))
        
        singleTap.numberOfTapsRequired = 1 // you can change this value
        mailBtn.isUserInteractionEnabled = true
        mailBtn.addGestureRecognizer(singleTap)
    }
    
    func initLocationGestures(){
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(DetailValleViewController.tapLocationDetected))
        
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
        
        guard let number = URL(string: "telprompt://" + valleData.phone) else { return }
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
        
        let url = NSURL(string: "mailto:\(valleData.mail)")
        UIApplication.shared.openURL(url as! URL)
        
        print(url as! URL)
        
    }
    
    func tapLocationDetected() {
        print("Location CLICKED")
        let latitude:CLLocationDegrees =  valleData.latitude.doubleValue
        let longitude:CLLocationDegrees =  valleData.longitude.doubleValue
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
