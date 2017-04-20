//
//  NationalViewController.swift
//  clubrecordarios
//
//  Created by willians on 29/11/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit

class NationalViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableNationalMain: UITableView!
    var nationalLists = [NationalModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        struct GroupNational1 {
            var title = "national1"
            var description = "national"
            var descriptionDetail = "largo national"
            var image = UIImage(named:"alianzas")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupNational1 = GroupNational1()
        
        struct GroupNational2 {
            var title = "national2"
            var description = "national"
            var descriptionDetail = "largo national"
            var image = UIImage(named:"alianzas")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupNational2 = GroupNational2()
        
        struct GroupNational3 {
            var title = "national3"
            var description = "national"
            var descriptionDetail = "largo national"
            var image = UIImage(named:"alianzas")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupNational3 = GroupNational3()
        
        struct GroupNational4 {
            var title = "national4"
            var description = "national"
            var descriptionDetail = "largo national"
            var image = UIImage(named:"alianzas")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupNational4 = GroupNational4()
        
        struct GroupNational5 {
            var title = "national5"
            var description = "national"
            var descriptionDetail = "largo national"
            var image = UIImage(named:"alianzas")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupNational5 = GroupNational5()
        
        struct GroupNational6 {
            var title = "national6"
            var description = "national"
            var descriptionDetail = "largo national"
            var image = UIImage(named:"alianzas")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupNational6 = GroupNational6()
        
        struct GroupNational7 {
            var title = "national7"
            var description = "national"
            var descriptionDetail = "largo national 7"
            var image = UIImage(named:"alianzas")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupNational7 = GroupNational7()
        
        struct GroupNational8 {
            var title = "national8"
            var description = "national"
            var descriptionDetail = "largo national"
            var image = UIImage(named:"alianzas")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupNational8 = GroupNational8()
        
        struct GroupNational9 {
            var title = "national9"
            var description = "national"
            var descriptionDetail = "largo national"
            var image = UIImage(named:"alianzas")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupNational9 = GroupNational9()
        
        struct GroupNational10 {
            var title = "national10"
            var description = "national"
            var descriptionDetail = "largo national"
            var image = UIImage(named:"alianzas")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupNational10 = GroupNational10()
        
        struct GroupNational11 {
            var title = "national11"
            var description = "national"
            var descriptionDetail = "largo national"
            var image = UIImage(named:"alianzas")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupNational11 = GroupNational11()
        
        struct GroupNational12 {
            var title = "national12"
            var description = "national"
            var descriptionDetail = "largo national"
            var image = UIImage(named:"alianzas")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupNational12 = GroupNational12()
        
        
        struct GroupNational13 {
            var title = "national13"
            var description = "national"
            var descriptionDetail = "largo national"
            var image = UIImage(named:"alianzas")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupNational13 = GroupNational13()

        struct GroupNational14 {
            var title = "national14"
            var description = "national"
            var descriptionDetail = "largo national"
            var image = UIImage(named:"alianzas")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupNational14 = GroupNational14()
        
        struct GroupNational15 {
            var title = "national15"
            var description = "national"
            var descriptionDetail = "largo national"
            var image = UIImage(named:"alianzas")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupNational15 = GroupNational15()


        
        let itemNational1 = NationalModel(title: groupNational1.title, description: groupNational1.description, descriptionDetail: groupNational1.descriptionDetail, image: groupNational1.image , phone: groupNational1.phone, mail: groupNational1.mail, latitude: groupNational1.latitude as NSString, longitude: groupNational1.longitude as NSString)
        
        let itemNational2 = NationalModel(title: groupNational2.title, description: groupNational2.description, descriptionDetail: groupNational2.descriptionDetail, image: groupNational2.image , phone: groupNational2.phone, mail: groupNational2.mail, latitude: groupNational2.latitude as NSString, longitude: groupNational2.longitude as NSString)
        
        let itemNational3 = NationalModel(title: groupNational3.title, description: groupNational3.description, descriptionDetail: groupNational3.descriptionDetail, image: groupNational3.image , phone: groupNational3.phone, mail: groupNational3.mail, latitude: groupNational3.latitude as NSString, longitude: groupNational3.longitude as NSString)
        
        let itemNational4 = NationalModel(title: groupNational4.title, description: groupNational4.description, descriptionDetail: groupNational4.descriptionDetail, image: groupNational4.image , phone: groupNational4.phone, mail: groupNational4.mail, latitude: groupNational4.latitude as NSString, longitude: groupNational4.longitude as NSString)
        
        let itemNational5 = NationalModel(title: groupNational5.title, description: groupNational5.description, descriptionDetail: groupNational5.descriptionDetail, image: groupNational5.image , phone: groupNational5.phone, mail: groupNational5.mail, latitude: groupNational5.latitude as NSString, longitude: groupNational5.longitude as NSString)
        
        let itemNational6 = NationalModel(title: groupNational6.title, description: groupNational6.description, descriptionDetail: groupNational6.descriptionDetail, image: groupNational6.image , phone: groupNational6.phone, mail: groupNational6.mail, latitude: groupNational6.latitude as NSString, longitude: groupNational6.longitude as NSString)
        
        let itemNational7 = NationalModel(title: groupNational7.title, description: groupNational7.description, descriptionDetail: groupNational7.descriptionDetail, image: groupNational7.image , phone: groupNational7.phone, mail: groupNational7.mail, latitude: groupNational7.latitude as NSString, longitude: groupNational7.longitude as NSString)
        
        let itemNational8 = NationalModel(title: groupNational8.title, description: groupNational8.description, descriptionDetail: groupNational8.descriptionDetail, image: groupNational8.image , phone: groupNational8.phone, mail: groupNational8.mail, latitude: groupNational8.latitude as NSString, longitude: groupNational8.longitude as NSString)
        
        let itemNational9 = NationalModel(title: groupNational9.title, description: groupNational9.description, descriptionDetail: groupNational9.descriptionDetail, image: groupNational9.image , phone: groupNational9.phone, mail: groupNational9.mail, latitude: groupNational9.latitude as NSString, longitude: groupNational9.longitude as NSString)
        
        let itemNational10 = NationalModel(title: groupNational10.title, description: groupNational10.description, descriptionDetail: groupNational10.descriptionDetail, image: groupNational10.image , phone: groupNational10.phone, mail: groupNational10.mail, latitude: groupNational10.latitude as NSString, longitude: groupNational10.longitude as NSString)
        
        let itemNational11 = NationalModel(title: groupNational11.title, description: groupNational11.description, descriptionDetail: groupNational11.descriptionDetail, image: groupNational11.image , phone: groupNational11.phone, mail: groupNational11.mail, latitude: groupNational11.latitude as NSString, longitude: groupNational11.longitude as NSString)
        
        let itemNational12 = NationalModel(title: groupNational12.title, description: groupNational12.description, descriptionDetail: groupNational12.descriptionDetail, image: groupNational12.image , phone: groupNational12.phone, mail: groupNational12.mail, latitude: groupNational12.latitude as NSString, longitude: groupNational12.longitude as NSString)
        
        let itemNational13 = NationalModel(title: groupNational13.title, description: groupNational13.description, descriptionDetail: groupNational13.descriptionDetail, image: groupNational13.image , phone: groupNational13.phone, mail: groupNational13.mail, latitude: groupNational13.latitude as NSString, longitude: groupNational13.longitude as NSString)
        
        let itemNational14 = NationalModel(title: groupNational14.title, description: groupNational14.description, descriptionDetail: groupNational14.descriptionDetail, image: groupNational14.image , phone: groupNational14.phone, mail: groupNational14.mail, latitude: groupNational14.latitude as NSString, longitude: groupNational14.longitude as NSString)
        
        let itemNational15 = NationalModel(title: groupNational15.title, description: groupNational15.description, descriptionDetail: groupNational15.descriptionDetail, image: groupNational15.image , phone: groupNational15.phone, mail: groupNational15.mail, latitude: groupNational15.latitude as NSString, longitude: groupNational15.longitude as NSString)
        
        nationalLists.append(itemNational1)
        nationalLists.append(itemNational2)
        nationalLists.append(itemNational3)
        nationalLists.append(itemNational4)
        nationalLists.append(itemNational5)
        nationalLists.append(itemNational6)
        nationalLists.append(itemNational7)
        nationalLists.append(itemNational8)
        nationalLists.append(itemNational9)
        nationalLists.append(itemNational10)
        nationalLists.append(itemNational11)
        nationalLists.append(itemNational12)
        nationalLists.append(itemNational13)
        nationalLists.append(itemNational14)
        nationalLists.append(itemNational15)
        
        tableNationalMain.delegate = self
        tableNationalMain.dataSource = self

    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "nationalData", for: indexPath) as? NationalCell{
            
            let nationalList = nationalLists[indexPath.row]
            
            cell.updateUI(nationalModel: nationalList)
            
            return cell
        }else{
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nationalLists.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let nationalModel = nationalLists[indexPath.row]
        switch(indexPath.row){
        case 0:
            self.performSegue(withIdentifier: "detailNational", sender: nationalModel)
        case 1:
            self.performSegue(withIdentifier: "detailNational", sender: nationalModel)
        case 2:
            self.performSegue(withIdentifier: "detailNational", sender: nationalModel)
        case 3:
            self.performSegue(withIdentifier: "detailNational", sender: nationalModel)
        case 4:
            self.performSegue(withIdentifier: "detailNational", sender: nationalModel)
        case 5:
            self.performSegue(withIdentifier: "detailNational", sender: nationalModel)
        case 6:
            self.performSegue(withIdentifier: "detailNational", sender: nationalModel)
        case 7:
            self.performSegue(withIdentifier: "detailNational", sender: nationalModel)
        case 8:
            self.performSegue(withIdentifier: "detailNational", sender: nationalModel)
        case 9:
            self.performSegue(withIdentifier: "detailNational", sender: nationalModel)
        case 10:
            self.performSegue(withIdentifier: "detailNational", sender: nationalModel)
        case 11:
            self.performSegue(withIdentifier: "detailNational", sender: nationalModel)
        case 12:
            self.performSegue(withIdentifier: "detailNational", sender: nationalModel)
        case 13:
            self.performSegue(withIdentifier: "detailNational", sender: nationalModel)
        case 14:
            self.performSegue(withIdentifier: "detailNational", sender: nationalModel)
        default:
            print("nada")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? DetailNationalViewController{
            
            if let national = sender as? NationalModel{
                destination.nationalData = national
            }
        }
    }


}
