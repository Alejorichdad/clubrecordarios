//
//  DetailBarranquillaViewController.swift
//  clubrecordarios
//
//  Created by willians on 8/12/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit
import MapKit

class DetailBarranquillaViewController: UIViewController {
    
    private var _barranquillaData : BarranquillaModel!;
    
    var barranquillaData:BarranquillaModel{
        get{
            return _barranquillaData
        }
        set{
            _barranquillaData = newValue
        }
    }
    
    @IBOutlet weak var imageDetalBarranquilla: UIImageView!
    @IBOutlet weak var descriptionDetailBarranquilla: UITextView!
    @IBOutlet weak var titleBarranquillaMain: UILabel!
    @IBOutlet weak var locationBtn: UIImageView!
    @IBOutlet weak var mailBtn: UIImageView!
    @IBOutlet weak var phoneBtn: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initPhoneGesture()
        initMailGestures()
        initLocationGestures()
        
        titleBarranquillaMain.text = barranquillaData.title
        descriptionDetailBarranquilla.text = barranquillaData.descriptionDetail
        
        imageDetalBarranquilla.image = barranquillaData.image
    

    }
    
    func initPhoneGesture(){
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(DetailBarranquillaViewController.tapPhoneDetected))
        
        singleTap.numberOfTapsRequired = 1 // you can change this value
        phoneBtn.isUserInteractionEnabled = true
        phoneBtn.addGestureRecognizer(singleTap)
    }
    
    func initMailGestures(){
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(DetailBarranquillaViewController.tapMailDetected))
        
        singleTap.numberOfTapsRequired = 1 // you can change this value
        mailBtn.isUserInteractionEnabled = true
        mailBtn.addGestureRecognizer(singleTap)
    }
    
    func initLocationGestures(){
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(DetailBarranquillaViewController.tapLocationDetected))
        
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
        
        guard let number = URL(string: "telprompt://" + barranquillaData.phone) else { return }
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
        
        let url = NSURL(string: "mailto:\(barranquillaData.mail)")
        UIApplication.shared.openURL(url as! URL)
        
        print(url as! URL)
        
    }
    
    func tapLocationDetected() {
        print("Location CLICKED")
        let latitude:CLLocationDegrees =  barranquillaData.latitude.doubleValue
        let longitude:CLLocationDegrees =  barranquillaData.longitude.doubleValue
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
