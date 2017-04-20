//
//  PastoViewController.swift
//  clubrecordarios
//
//  Created by willians on 6/12/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit

class PastoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tablePastoMain: UITableView!
    
    
    var pastoLists = [PastoModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        struct GroupPasto1 {
            var title = "C.E.R.O"
            var description = "Clinica Odontológica"
            var descriptionDetail = "Actividad:\n" + "\nValoración por especialistas en: cirugía oral y maxilofacial, periodoncia y rehabilitación oral.\n" +
                "Tratamientos especializados en: operatoria y estética, rehabilitación oral, cirugía\n" +
                "oral, periodoncia, implantologia oral, ortodoncia y ortopedia maxilar.\n" + "\nBeneficio:\n" + "\nDescuento del 20% en procedimientos odontológicos - Valoración sin costo\n" + "\nCondiciones y Restricciones:\n" + "\nTarjeta Club Recordar - Presencial al momento de pago y/o solicitar algún servicio\n" + "\nContacto:\n" + "Deisy Milena Bastidas Cumbal / e-mail: bastidasdeisy@gmail.com\n"
            
            var image = UIImage(named:"cero1")!
            var phone = "3004896253"
            var mail = "bastidasdeisy@gmail.com"
            var latitude = "#"
            var longitude = "#"
        }
        
        let groupPasto1 = GroupPasto1()
        
        struct GroupPasto2 {
            var title = "Centro Médico la Riviera"
            var description = "Todos los servicios en un mismo lugar"
            var descriptionDetail = "Beneficio para los afiliados: descuento entre 15% al 50% según especialidad"
            var image = UIImage(named:"riviera")!
            var phone = "3164479982 "
            var mail = "centromedicolariviera@hotmail.com"
            var latitude = "1.226303"
            var longitude = "-77.281927"
        }
        
        let groupPasto2 = GroupPasto2()
        
        struct GroupPasto3 {
            var title = "Sonrisas Sanas"
            var description = "Consultorio odontológico especializado"
            var descriptionDetail = "Contacto: Alicia Chavez, beneficio para los afiliados: 10% descuento en todo tratamiento odontológico y ortodoncia"
            var image = UIImage(named:"sonrisas")!
            var phone = "3004896253"
            var mail = "sonrisas.sanas@hotmail.com"
            var latitude = "1.217821"
            var longitude = "-77.279202"
        }
        
        let groupPasto3 = GroupPasto3()
        
        struct GroupPasto4 {
            var title = "Hotel Club Xilon"
            var description = "Hotel de lujo en pasto"
            var descriptionDetail = "Contacto: beneficio para los afiliados: 10% descuento en servicios."
            var image = UIImage(named:"xilon")!
            var phone = "3143594284"
            var mail = "alianzas@clubrecordar.com"
            var latitude = "1.210607"
            var longitude = "-77.278250"
        }
        
        let groupPasto4 = GroupPasto4()
        
        struct GroupPasto5 {
            var title = "Hotel Don Saul"
            var description = "Hotel ubicado en centro de Pasto"
            var descriptionDetail = "Contacto: Nael Husein ,beneficio para los afiliados: descuento 30% solo hospedaje"
            var image = UIImage(named:"sauld")!
            var phone = "3167434731"
            var mail = "reservas@hoteldonsaul.com"
            var latitude = "1.213161"
            var longitude = "-77.279129"
        }
        
        let groupPasto5 = GroupPasto5()
        
        /** struct GroupPasto6 {
         var title = "national6"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupPasto6 = GroupPasto6()
         
         struct GroupPasto7 {
         var title = "national7"
         var description = "national"
         var descriptionDetail = "largo national 7"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupPasto7 = GroupPasto7()
         
         struct GroupPasto8 {
         var title = "national8"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupPasto8 = GroupPasto8()
         
         struct GroupPasto9 {
         var title = "national9"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupPasto9 = GroupPasto9()
         
         struct GroupPasto10 {
         var title = "national10"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupPasto10 = GroupPasto10()
         
         struct GroupPasto11 {
         var title = "national11"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupPasto11 = GroupPasto11()
         
         struct GroupPasto12 {
         var title = "national12"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupPasto12 = GroupPasto12()
         
         
         struct GroupPasto13 {
         var title = "national13"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupPasto13 = GroupPasto13()
         
         struct GroupPasto14 {
         var title = "national14"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupPasto14 = GroupPasto14()
         
         struct GroupPasto15 {
         var title = "national15"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupPasto15 = GroupPasto15() */
        
        let itemPasto1 = PastoModel(title: groupPasto1.title, description: groupPasto1.description, descriptionDetail: groupPasto1.descriptionDetail, image: groupPasto1.image , phone: groupPasto1.phone, mail: groupPasto1.mail, latitude: groupPasto1.latitude as NSString, longitude: groupPasto1.longitude as NSString)
        let itemPasto2 = PastoModel(title: groupPasto2.title, description: groupPasto2.description, descriptionDetail: groupPasto2.descriptionDetail, image: groupPasto2.image , phone: groupPasto2.phone, mail: groupPasto2.mail, latitude: groupPasto2.latitude as NSString, longitude: groupPasto2.longitude as NSString)
        let itemPasto3 = PastoModel(title: groupPasto3.title, description: groupPasto3.description, descriptionDetail: groupPasto3.descriptionDetail, image: groupPasto3.image , phone: groupPasto3.phone, mail: groupPasto3.mail, latitude: groupPasto3.latitude as NSString, longitude: groupPasto3.longitude as NSString)
        let itemPasto4 = PastoModel(title: groupPasto4.title, description: groupPasto4.description, descriptionDetail: groupPasto4.descriptionDetail, image: groupPasto4.image , phone: groupPasto4.phone, mail: groupPasto4.mail, latitude: groupPasto4.latitude as NSString, longitude: groupPasto4.longitude as NSString)
        
        let itemPasto5 = PastoModel(title: groupPasto5.title, description: groupPasto5.description, descriptionDetail: groupPasto5.descriptionDetail, image: groupPasto5.image , phone: groupPasto5.phone, mail: groupPasto5.mail, latitude: groupPasto5.latitude as NSString, longitude: groupPasto5.longitude as NSString)
        
        /**     let itemPasto6 = PastoModel(title: groupPasto6.title, description: groupPasto6.description, descriptionDetail: groupPasto6.descriptionDetail, image: groupPasto6.image , phone: groupPasto6.phone, mail: groupPasto6.mail, latitude: groupPasto6.latitude as NSString, longitude: groupPasto6.longitude as NSString)
         let itemPasto7 = PastoModel(title: groupPasto7.title, description: groupPasto7.description, descriptionDetail: groupPasto7.descriptionDetail, image: groupPasto7.image , phone: groupPasto7.phone, mail: groupPasto7.mail, latitude: groupPasto7.latitude as NSString, longitude: groupPasto7.longitude as NSString)
         let itemPasto8 = PastoModel(title: groupPasto8.title, description: groupPasto8.description, descriptionDetail: groupPasto8.descriptionDetail, image: groupPasto8.image , phone: groupPasto8.phone, mail: groupPasto8.mail, latitude: groupPasto8.latitude as NSString, longitude: groupPasto8.longitude as NSString)
         let itemPasto9 = PastoModel(title: groupPasto9.title, description: groupPasto9.description, descriptionDetail: groupPasto9.descriptionDetail, image: groupPasto9.image , phone: groupPasto9.phone, mail: groupPasto9.mail, latitude: groupPasto9.latitude as NSString, longitude: groupPasto9.longitude as NSString)
         let itemPasto10 = PastoModel(title: groupPasto10.title, description: groupPasto10.description, descriptionDetail: groupPasto10.descriptionDetail, image: groupPasto10.image , phone: groupPasto10.phone, mail: groupPasto10.mail, latitude: groupPasto10.latitude as NSString, longitude: groupPasto10.longitude as NSString)
         let itemPasto11 = PastoModel(title: groupPasto11.title, description: groupPasto11.description, descriptionDetail: groupPasto11.descriptionDetail, image: groupPasto11.image , phone: groupPasto11.phone, mail: groupPasto11.mail, latitude: groupPasto11.latitude as NSString, longitude: groupPasto11.longitude as NSString)
         let itemPasto12 = PastoModel(title: groupPasto12.title, description: groupPasto12.description, descriptionDetail: groupPasto12.descriptionDetail, image: groupPasto12.image , phone: groupPasto12.phone, mail: groupPasto12.mail, latitude: groupPasto12.latitude as NSString, longitude: groupPasto12.longitude as NSString)
         let itemPasto13 = PastoModel(title: groupPasto13.title, description: groupPasto13.description, descriptionDetail: groupPasto13.descriptionDetail, image: groupPasto13.image , phone: groupPasto13.phone, mail: groupPasto13.mail, latitude: groupPasto13.latitude as NSString, longitude: groupPasto13.longitude as NSString)
         
         let itemPasto14 = PastoModel(title: groupPasto14.title, description: groupPasto14.description, descriptionDetail: groupPasto14.descriptionDetail, image: groupPasto14.image , phone: groupPasto14.phone, mail: groupPasto14.mail, latitude: groupPasto14.latitude as NSString, longitude: groupPasto14.longitude as NSString)
         let itemPasto15 = PastoModel(title: groupPasto15.title, description: groupPasto15.description, descriptionDetail: groupPasto15.descriptionDetail, image: groupPasto15.image , phone: groupPasto15.phone, mail: groupPasto15.mail, latitude: groupPasto15.latitude as NSString, longitude: groupPasto15.longitude as NSString) */
        
        pastoLists.append(itemPasto1)
        pastoLists.append(itemPasto2)
        pastoLists.append(itemPasto3)
        pastoLists.append(itemPasto4)
        pastoLists.append(itemPasto5)
        /** pastoLists.append(itemPasto6)
         pastoLists.append(itemPasto7)
         pastoLists.append(itemPasto8)
         pastoLists.append(itemPasto9)
         pastoLists.append(itemPasto10)
         pastoLists.append(itemPasto11)
         pastoLists.append(itemPasto12)
         pastoLists.append(itemPasto13)
         pastoLists.append(itemPasto14)
         pastoLists.append(itemPasto15) */
        
        tablePastoMain.delegate = self
        tablePastoMain.dataSource = self
        
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "pastoData", for: indexPath) as? PastoCell{
            
            let pastoList = pastoLists[indexPath.row]
            
            cell.updateUI(pastoModel: pastoList)
            
            return cell
        }else{
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pastoLists.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pastoModel = pastoLists[indexPath.row]
        switch(indexPath.row){
        case 0:
            self.performSegue(withIdentifier: "detailPasto", sender: pastoModel)
        case 1:
            self.performSegue(withIdentifier: "detailPasto", sender: pastoModel)
        case 2:
            self.performSegue(withIdentifier: "detailPasto", sender: pastoModel)
        case 3:
            self.performSegue(withIdentifier: "detailPasto", sender: pastoModel)
        case 4:
            self.performSegue(withIdentifier: "detailPasto", sender: pastoModel)
            /**   case 5:
             self.performSegue(withIdentifier: "detailPasto", sender: pastoModel)
             case 6:
             self.performSegue(withIdentifier: "detailPasto", sender: pastoModel)
             case 7:
             self.performSegue(withIdentifier: "detailPasto", sender: pastoModel)
             case 8:
             self.performSegue(withIdentifier: "detailPasto", sender: pastoModel)
             case 9:
             self.performSegue(withIdentifier: "detailPasto", sender: pastoModel)
             case 10:
             self.performSegue(withIdentifier: "detailPasto", sender: pastoModel)
             case 11:
             self.performSegue(withIdentifier: "detailPasto", sender: pastoModel)
             case 12:
             self.performSegue(withIdentifier: "detailPasto", sender: pastoModel)
             case 13:
             self.performSegue(withIdentifier: "detailPasto", sender: pastoModel)
             case 14:
             self.performSegue(withIdentifier: "detailPasto", sender: pastoModel) */
        default:
            print("nada")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? DetailPastoViewController{
            
            if let pasto = sender as? PastoModel{
                destination.pastoData = pasto
            }
        }
    }
    
    
    
}
