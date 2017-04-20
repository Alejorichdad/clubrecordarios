//
//  ViewController.swift
//  clubrecordarios
//
//  Created by willians on 24/11/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit
import Firebase
import FirebaseInstanceID
import FirebaseMessaging

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableMain: UITableView!
    
    var menuLists = [MainModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        struct GroupMain1 {
            var title = "Alianzas"
            var description = "Alianzas por todo el país"
            var descriptionDetail = ""
            var image = UIImage(named:"alianzas")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupMain1 = GroupMain1()
        
        struct GroupMain2 {
            var title = "Curso online"
            var description = "Aprende ingles ya!!!"
            var descriptionDetail = ""
            var image = UIImage(named:"alianzas")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupMain2 = GroupMain2()
        
        struct GroupMain3 {
            var title = "Tienda club"
            var description = "Más y mejores ofertas club"
            var descriptionDetail = ""
            var image = UIImage(named:"alianzas")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupMain3 = GroupMain3()
        
        struct GroupMain4 {
            var title = "Tienda club"
            var description = "Más y mejores ofertas club"
            var descriptionDetail = ""
            var image = UIImage(named:"alianzas")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupMain4 = GroupMain4()
        
        
        let item1 = MainModel(title: groupMain1.title, description: groupMain1.description, descriptionDetail: groupMain1.descriptionDetail, image: groupMain1.image , phone: groupMain1.phone, mail: groupMain1.mail, latitude: groupMain1.latitude as NSString, longitude: groupMain1.longitude as NSString)
        
        let item2 = MainModel(title: groupMain2.title, description: groupMain2.description, descriptionDetail: groupMain2.descriptionDetail, image: groupMain2.image , phone: groupMain2.phone, mail: groupMain2.mail, latitude: groupMain2.latitude as NSString, longitude: groupMain2.longitude as NSString)
        
        let item3 = MainModel(title: groupMain3.title, description: groupMain3.description, descriptionDetail: groupMain3.descriptionDetail, image: groupMain3.image , phone: groupMain3.phone, mail: groupMain3.mail, latitude: groupMain3.latitude as NSString, longitude: groupMain3.longitude as NSString)
        
        let item4 = MainModel(title: groupMain4.title, description: groupMain4.description, descriptionDetail: groupMain4.descriptionDetail, image: groupMain4.image , phone: groupMain4.phone, mail: groupMain4.mail, latitude: groupMain4.latitude as NSString, longitude: groupMain4.longitude as NSString)
        
        menuLists.append(item1)
        menuLists.append(item2)
        menuLists.append(item3)
        menuLists.append(item4)
        
        tableMain.delegate = self
        tableMain.dataSource = self
        
        FIRMessaging.messaging().subscribe(toTopic: "/topics/news")
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "mainData", for: indexPath) as? RecordarCell{
            
            let menuList = menuLists[indexPath.row]
            
            cell.updateUI(mainModel: menuList)
            
            /*cell.contentView.layer.cornerRadius = 5
            
            cell.layoutMargins = UIEdgeInsets.zero
            
            cell.contentView.layoutMargins.left = 20
            
            cell.contentView.layer.shadowColor = UIColor.black.cgColor
            cell.contentView.layer.masksToBounds = true
            cell.updateUI(partyRock: partyRock)*/
            
            return cell
        }else{
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuLists.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch(indexPath.row){
        case 0:
            self.performSegue(withIdentifier: "showAlliance", sender: self)
        case 1:
            self.performSegue(withIdentifier: "showCourse", sender: self)
        case 2:
            self.performSegue(withIdentifier: "showStore", sender: self)
        case 3:
            self.performSegue(withIdentifier: "showEvents", sender: self)
        default:
            print("nada")
        }
    }




}

