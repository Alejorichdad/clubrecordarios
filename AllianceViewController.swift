//
//  AllianceViewController.swift
//  clubrecordarios
//
//  Created by willians on 28/11/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit

class AllianceViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableAllianceMain: UITableView!
    
    var allianceLists = [AllianceModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        struct GroupAlliance1 {
            var title = "Alianzas Nacionales"
            var description = "Alianzas por todo el país"
            var descriptionDetail = ""
            var image = UIImage(named:"alianzas")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupAlliance1 = GroupAlliance1()
        
        struct GroupAlliance2 {
            var title = "Alianzas Barranquilla"
            var description = "Alianzas Barranquilla"
            var descriptionDetail = ""
            var image = UIImage(named:"barranquilla")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupAlliance2 = GroupAlliance2()
        
        struct GroupAlliance3 {
            var title = "Alianzas Bogota"
            var description = "Alianzas Bogotá"
            var descriptionDetail = ""
            var image = UIImage(named:"bogota")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupAlliance3 = GroupAlliance3()
        
        struct GroupAlliance4 {
            var title = "Alianzas Boyacá"
            var description = "Alianzas Boyacá"
            var descriptionDetail = ""
            var image = UIImage(named:"boyaca")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupAlliance4 = GroupAlliance4()
        
        struct GroupAlliance5 {
            var title = "Alianzas Cali"
            var description = "Alianzas Cali"
            var descriptionDetail = ""
            var image = UIImage(named:"cali")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupAlliance5 = GroupAlliance5()
        
        struct GroupAlliance6 {
            var title = "Alianzas Cartagena"
            var description = "Alianzas Cartagena"
            var descriptionDetail = ""
            var image = UIImage(named:"cartagena")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupAlliance6 = GroupAlliance6()
        
        struct GroupAlliance7 {
            var title = "Alianzas Valledupar"
            var description = "Alianzas Valledupar"
            var descriptionDetail = ""
            var image = UIImage(named:"valledupar")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupAlliance7 = GroupAlliance7()
        
        struct GroupAlliance8 {
            var title = "Alianzas Pasto"
            var description = "Alianzas Pasto"
            var descriptionDetail = ""
            var image = UIImage(named:"pasto")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupAlliance8 = GroupAlliance8()
        
        let item1 = AllianceModel(title: groupAlliance1.title, description: groupAlliance1.description, descriptionDetail: groupAlliance1.descriptionDetail, image: groupAlliance1.image , phone: groupAlliance1.phone, mail: groupAlliance1.mail, latitude: groupAlliance1.latitude as NSString, longitude: groupAlliance1.longitude as NSString)
        let item2 = AllianceModel(title: groupAlliance2.title, description: groupAlliance2.description, descriptionDetail: groupAlliance2.descriptionDetail, image: groupAlliance2.image , phone: groupAlliance2.phone, mail: groupAlliance2.mail, latitude: groupAlliance2.latitude as NSString, longitude: groupAlliance2.longitude as NSString)
        let item3 = AllianceModel(title: groupAlliance3.title, description: groupAlliance3.description, descriptionDetail: groupAlliance3.descriptionDetail, image: groupAlliance3.image , phone: groupAlliance3.phone, mail: groupAlliance3.mail, latitude: groupAlliance3.latitude as NSString, longitude: groupAlliance3.longitude as NSString)
        let item4 = AllianceModel(title: groupAlliance4.title, description: groupAlliance4.description, descriptionDetail: groupAlliance4.descriptionDetail, image: groupAlliance4.image , phone: groupAlliance4.phone, mail: groupAlliance4.mail, latitude: groupAlliance4.latitude as NSString, longitude: groupAlliance4.longitude as NSString)
        let item5 = AllianceModel(title: groupAlliance5.title, description: groupAlliance5.description, descriptionDetail: groupAlliance5.descriptionDetail, image: groupAlliance5.image , phone: groupAlliance5.phone, mail: groupAlliance5.mail, latitude: groupAlliance5.latitude as NSString, longitude: groupAlliance5.longitude as NSString)
        let item6 = AllianceModel(title: groupAlliance6.title, description: groupAlliance6.description, descriptionDetail: groupAlliance6.descriptionDetail, image: groupAlliance6.image , phone: groupAlliance6.phone, mail: groupAlliance6.mail, latitude: groupAlliance6.latitude as NSString, longitude: groupAlliance6.longitude as NSString)
        let item7 = AllianceModel(title: groupAlliance7.title, description: groupAlliance7.description, descriptionDetail: groupAlliance7.descriptionDetail, image: groupAlliance7.image , phone: groupAlliance7.phone, mail: groupAlliance7.mail, latitude: groupAlliance7.latitude as NSString, longitude: groupAlliance7.longitude as NSString)
        let item8 = AllianceModel(title: groupAlliance8.title, description: groupAlliance8.description, descriptionDetail: groupAlliance8.descriptionDetail, image: groupAlliance8.image , phone: groupAlliance8.phone, mail: groupAlliance8.mail, latitude: groupAlliance8.latitude as NSString, longitude: groupAlliance8.longitude as NSString)
        
        allianceLists.append(item1)
        allianceLists.append(item2)
        allianceLists.append(item3)
        allianceLists.append(item4)
        allianceLists.append(item5)
        allianceLists.append(item6)
        allianceLists.append(item7)
        allianceLists.append(item8)
        
        tableAllianceMain.delegate = self
        tableAllianceMain.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "allianceData", for: indexPath) as? AllianceCell{
            
            let allianceList = allianceLists[indexPath.row]
            
            cell.updateUI(allianceModel: allianceList)
            
            return cell
        }else{
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allianceLists.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch(indexPath.row){
        case 0:
            self.performSegue(withIdentifier: "showNational", sender: self)
        case 1:
            self.performSegue(withIdentifier: "showBarranquilla", sender: self)
        case 2:
            self.performSegue(withIdentifier: "showBogota", sender: self)
        case 3:
            self.performSegue(withIdentifier: "showBoyaca", sender: self)
        case 4:
            self.performSegue(withIdentifier: "showCali", sender: self)
        case 5:
            self.performSegue(withIdentifier: "showCartagena", sender: self)
        case 6:
            self.performSegue(withIdentifier: "showValle", sender: self)
        case 7:
            self.performSegue(withIdentifier: "showPasto", sender: self)
        default:
            print("nada")
        }
    }
    
    
    
    
}
