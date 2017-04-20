//
//  BoyacaViewController.swift
//  clubrecordarios
//
//  Created by willians on 2/12/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit

class BoyacaViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableBoyacaMain: UITableView!
    
    
    var boyacaLists = [BoyacaModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        struct GroupBoyaca1 {
            var title = "Próximamente"
            var description = "Proximamente"
            var descriptionDetail = "PRÓXIMAMENTE"
            var image = UIImage(named:"alianzas")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupBoyaca1 = GroupBoyaca1()
        
        /**    struct GroupBoyaca2 {
         var title = "national2"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupBoyaca2 = GroupBoyaca2()
         
         struct GroupBoyaca3 {
         var title = "national3"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupBoyaca3 = GroupBoyaca3()
         
         struct GroupBoyaca4 {
         var title = "national4"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupBoyaca4 = GroupBoyaca4()
         
         struct GroupBoyaca5 {
         var title = "national5"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupBoyaca5 = GroupBoyaca5()
         
         struct GroupBoyaca6 {
         var title = "national6"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupBoyaca6 = GroupBoyaca6()
         
         struct GroupBoyaca7 {
         var title = "national7"
         var description = "national"
         var descriptionDetail = "largo national 7"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupBoyaca7 = GroupBoyaca7()
         
         struct GroupBoyaca8 {
         var title = "national8"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupBoyaca8 = GroupBoyaca8()
         
         struct GroupBoyaca9 {
         var title = "national9"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupBoyaca9 = GroupBoyaca9()
         
         struct GroupBoyaca10 {
         var title = "national10"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupBoyaca10 = GroupBoyaca10()
         
         struct GroupBoyaca11 {
         var title = "national11"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupBoyaca11 = GroupBoyaca11()
         
         struct GroupBoyaca12 {
         var title = "national12"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupBoyaca12 = GroupBoyaca12()
         
         
         struct GroupBoyaca13 {
         var title = "national13"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupBoyaca13 = GroupBoyaca13()
         
         struct GroupBoyaca14 {
         var title = "national14"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupBoyaca14 = GroupBoyaca14()
         
         struct GroupBoyaca15 {
         var title = "national15"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupBoyaca15 = GroupBoyaca15() */
        
        let itemBoyaca1 = BoyacaModel(title: groupBoyaca1.title, description: groupBoyaca1.description, descriptionDetail: groupBoyaca1.descriptionDetail, image: groupBoyaca1.image , phone: groupBoyaca1.phone, mail: groupBoyaca1.mail, latitude: groupBoyaca1.latitude as NSString, longitude: groupBoyaca1.longitude as NSString)
        /** let itemBoyaca2 = BoyacaModel(title: groupBoyaca2.title, description: groupBoyaca2.description, descriptionDetail: groupBoyaca2.descriptionDetail, image: groupBoyaca2.image , phone: groupBoyaca2.phone, mail: groupBoyaca2.mail, latitude: groupBoyaca2.latitude as NSString, longitude: groupBoyaca2.longitude as NSString)
         let itemBoyaca3 = BoyacaModel(title: groupBoyaca3.title, description: groupBoyaca3.description, descriptionDetail: groupBoyaca3.descriptionDetail, image: groupBoyaca3.image , phone: groupBoyaca3.phone, mail: groupBoyaca3.mail, latitude: groupBoyaca3.latitude as NSString, longitude: groupBoyaca3.longitude as NSString)
         let itemBoyaca4 = BoyacaModel(title: groupBoyaca4.title, description: groupBoyaca4.description, descriptionDetail: groupBoyaca4.descriptionDetail, image: groupBoyaca4.image , phone: groupBoyaca4.phone, mail: groupBoyaca4.mail, latitude: groupBoyaca4.latitude as NSString, longitude: groupBoyaca4.longitude as NSString)
         let itemBoyaca5 = BoyacaModel(title: groupBoyaca5.title, description: groupBoyaca5.description, descriptionDetail: groupBoyaca5.descriptionDetail, image: groupBoyaca5.image , phone: groupBoyaca5.phone, mail: groupBoyaca5.mail, latitude: groupBoyaca5.latitude as NSString, longitude: groupBoyaca5.longitude as NSString)
         let itemBoyaca6 = BoyacaModel(title: groupBoyaca6.title, description: groupBoyaca6.description, descriptionDetail: groupBoyaca6.descriptionDetail, image: groupBoyaca6.image , phone: groupBoyaca6.phone, mail: groupBoyaca6.mail, latitude: groupBoyaca6.latitude as NSString, longitude: groupBoyaca6.longitude as NSString)
         let itemBoyaca7 = BoyacaModel(title: groupBoyaca7.title, description: groupBoyaca7.description, descriptionDetail: groupBoyaca7.descriptionDetail, image: groupBoyaca7.image , phone: groupBoyaca7.phone, mail: groupBoyaca7.mail, latitude: groupBoyaca7.latitude as NSString, longitude: groupBoyaca7.longitude as NSString)
         let itemBoyaca8 = BoyacaModel(title: groupBoyaca8.title, description: groupBoyaca8.description, descriptionDetail: groupBoyaca8.descriptionDetail, image: groupBoyaca8.image , phone: groupBoyaca8.phone, mail: groupBoyaca8.mail, latitude: groupBoyaca8.latitude as NSString, longitude: groupBoyaca8.longitude as NSString)
         let itemBoyaca9 = BoyacaModel(title: groupBoyaca9.title, description: groupBoyaca9.description, descriptionDetail: groupBoyaca9.descriptionDetail, image: groupBoyaca9.image , phone: groupBoyaca9.phone, mail: groupBoyaca9.mail, latitude: groupBoyaca9.latitude as NSString, longitude: groupBoyaca9.longitude as NSString)
         let itemBoyaca10 = BoyacaModel(title: groupBoyaca10.title, description: groupBoyaca10.description, descriptionDetail: groupBoyaca10.descriptionDetail, image: groupBoyaca10.image , phone: groupBoyaca10.phone, mail: groupBoyaca10.mail, latitude: groupBoyaca10.latitude as NSString, longitude: groupBoyaca10.longitude as NSString)
         let itemBoyaca11 = BoyacaModel(title: groupBoyaca11.title, description: groupBoyaca11.description, descriptionDetail: groupBoyaca11.descriptionDetail, image: groupBoyaca11.image , phone: groupBoyaca11.phone, mail: groupBoyaca11.mail, latitude: groupBoyaca11.latitude as NSString, longitude: groupBoyaca11.longitude as NSString)
         let itemBoyaca12 = BoyacaModel(title: groupBoyaca12.title, description: groupBoyaca12.description, descriptionDetail: groupBoyaca12.descriptionDetail, image: groupBoyaca12.image , phone: groupBoyaca12.phone, mail: groupBoyaca12.mail, latitude: groupBoyaca12.latitude as NSString, longitude: groupBoyaca12.longitude as NSString)
         let itemBoyaca13 = BoyacaModel(title: groupBoyaca13.title, description: groupBoyaca13.description, descriptionDetail: groupBoyaca13.descriptionDetail, image: groupBoyaca13.image , phone: groupBoyaca13.phone, mail: groupBoyaca13.mail, latitude: groupBoyaca13.latitude as NSString, longitude: groupBoyaca13.longitude as NSString)
         
         let itemBoyaca14 = BoyacaModel(title: groupBoyaca14.title, description: groupBoyaca14.description, descriptionDetail: groupBoyaca14.descriptionDetail, image: groupBoyaca14.image , phone: groupBoyaca14.phone, mail: groupBoyaca14.mail, latitude: groupBoyaca14.latitude as NSString, longitude: groupBoyaca14.longitude as NSString)
         let itemBoyaca15 = BoyacaModel(title: groupBoyaca15.title, description: groupBoyaca15.description, descriptionDetail: groupBoyaca15.descriptionDetail, image: groupBoyaca15.image , phone: groupBoyaca15.phone, mail: groupBoyaca15.mail, latitude: groupBoyaca15.latitude as NSString, longitude: groupBoyaca15.longitude as NSString) */
        
        boyacaLists.append(itemBoyaca1)
        /** boyacaLists.append(itemBoyaca2)
         boyacaLists.append(itemBoyaca3)
         boyacaLists.append(itemBoyaca4)
         boyacaLists.append(itemBoyaca5)
         boyacaLists.append(itemBoyaca6)
         boyacaLists.append(itemBoyaca7)
         boyacaLists.append(itemBoyaca8)
         boyacaLists.append(itemBoyaca9)
         boyacaLists.append(itemBoyaca10)
         boyacaLists.append(itemBoyaca11)
         boyacaLists.append(itemBoyaca12)
         boyacaLists.append(itemBoyaca13)
         boyacaLists.append(itemBoyaca14)
         boyacaLists.append(itemBoyaca15) */
        
        tableBoyacaMain.delegate = self
        tableBoyacaMain.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "boyacaData", for: indexPath) as? BoyacaCell{
            
            let boyacaList = boyacaLists[indexPath.row]
            
            cell.updateUI(boyacaModel: boyacaList)
            
            return cell
        }else{
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return boyacaLists.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let boyacaModel = boyacaLists[indexPath.row]
        switch(indexPath.row){
        case 0:
            self.performSegue(withIdentifier: "detailBoyaca", sender: boyacaModel)
            /**  case 1:
             self.performSegue(withIdentifier: "detailBoyaca", sender: boyacaModel)
             case 2:
             self.performSegue(withIdentifier: "detailBoyaca", sender: boyacaModel)
             case 3:
             self.performSegue(withIdentifier: "detailBoyaca", sender: boyacaModel)
             case 4:
             self.performSegue(withIdentifier: "detailBoyaca", sender: boyacaModel)
             case 5:
             self.performSegue(withIdentifier: "detailBoyaca", sender: boyacaModel)
             case 6:
             self.performSegue(withIdentifier: "detailBoyaca", sender: boyacaModel)
             case 7:
             self.performSegue(withIdentifier: "detailBoyaca", sender: boyacaModel)
             case 8:
             self.performSegue(withIdentifier: "detailBoyaca", sender: boyacaModel)
             case 9:
             self.performSegue(withIdentifier: "detailBoyaca", sender: boyacaModel)
             case 10:
             self.performSegue(withIdentifier: "detailBoyaca", sender: boyacaModel)
             case 11:
             self.performSegue(withIdentifier: "detailBoyaca", sender: boyacaModel)
             case 12:
             self.performSegue(withIdentifier: "detailBoyaca", sender: boyacaModel)
             case 13:
             self.performSegue(withIdentifier: "detailBoyaca", sender: boyacaModel)
             case 14:
             self.performSegue(withIdentifier: "detailBoyaca", sender: boyacaModel)*/
        default:
            print("nada")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? DetailBoyacaViewController{
            
            if let boyaca = sender as? BoyacaModel{
                destination.boyacaData = boyaca
            }
        }
    }
    
}
