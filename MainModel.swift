//
//  MainModel.swift
//  clubrecordarios
//
//  Created by willians on 27/11/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import Foundation
import UIKit

class MainModel{
    private var _title:String!
    
    private var _description:String!
    private var _descriptionDetail:String!
    private var _image:UIImage!
    private var _phone: String!
    private var _mail:String!
    private var _latitude:NSString!
    private var _longitude:NSString!
    
    
    init(title:String, description:String, descriptionDetail:String, image: UIImage, phone:String, mail: String, latitude:NSString, longitude:NSString) {
        
        _title = title
        _description = description
        _descriptionDetail = descriptionDetail
        _image  = image
        _phone = phone
        _mail = mail
        _latitude = latitude
        _longitude = longitude
    }
    
    var title:String {
        return _title
    }
    
    init(description:String) {
        
        _description = description
        
    }
    
    var description:String {
        return _description
    }
    
    init(descriptionDetail:String) {
        
        _descriptionDetail = descriptionDetail
        
    }
    
    var descriptionDetail:String {
        return _descriptionDetail
    }
    
    
    init(image:UIImage) {
        
        _image = image
        
    }
    
    var image:UIImage {
        return _image
    }
    
    init(phone:String) {
        
        _phone = phone
        
    }
    
    var phone:String {
        return _phone
    }
    
    init(mail:String) {
        
        _mail = mail
        
    }
    
    var mail:String {
        return _mail
    }
    
    init(longitude:NSString) {
        
        _longitude = longitude
        
    }
    
    var longitude:NSString {
        return _longitude
    }
    
    init(latitude:NSString) {
        
        _latitude = latitude
        
    }
    
    var latitude:NSString {
        return _latitude
    }
}
