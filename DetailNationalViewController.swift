//
//  DetailNationalViewController.swift
//  clubrecordarios
//
//  Created by willians on 8/12/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit

import MapKit

class DetailNationalViewController: UIViewController {
    
    
    @IBOutlet weak var imageDetalNational: UIImageView!
    @IBOutlet weak var descriptionDetailNational: UITextView!
    
    @IBOutlet weak var titleNationalMain: UILabel!
    
    var titleDetailNational: String = "";
    
    private var _nationalData : NationalModel!;
    
    @IBOutlet weak var locationBtn: UIImageView!
    @IBOutlet weak var mailBtn: UIImageView!
    @IBOutlet weak var phoneBtn: UIImageView!
    
    var nationalData:NationalModel{
        get{
            return _nationalData
        }
        set{
            _nationalData = newValue
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initPhoneGesture()
        initMailGestures()
        initLocationGestures()
        
        titleNationalMain.text = nationalData.title
        descriptionDetailNational.text = nationalData.descriptionDetail
        
        imageDetalNational.image = nationalData.image

        // Do any additional setup after loading the view.
    }
    
    func initPhoneGesture(){
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(DetailNationalViewController.tapPhoneDetected))
        
        singleTap.numberOfTapsRequired = 1 // you can change this value
        phoneBtn.isUserInteractionEnabled = true
        phoneBtn.addGestureRecognizer(singleTap)
    }
    
    func initMailGestures(){
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(DetailNationalViewController.tapMailDetected))
        
        singleTap.numberOfTapsRequired = 1 // you can change this value
        mailBtn.isUserInteractionEnabled = true
        mailBtn.addGestureRecognizer(singleTap)
    }
    
    func initLocationGestures(){
        let singleTap = UITapGestureRecognizer(target: self, action: #selector(DetailNationalViewController.tapLocationDetected))
        
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
        
        guard let number = URL(string: "telprompt://" + nationalData.phone) else { return }
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
        
        let url = NSURL(string: "mailto:\(nationalData.mail)")
        UIApplication.shared.openURL(url as! URL)
        
        print(url as! URL)

    }
    
    func tapLocationDetected() {
        print("Location CLICKED")
        let latitude:CLLocationDegrees =  nationalData.latitude.doubleValue
        let longitude:CLLocationDegrees =  nationalData.longitude.doubleValue
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
