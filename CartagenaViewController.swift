//
//  CartagenaViewController.swift
//  clubrecordarios
//
//  Created by willians on 6/12/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit

class CartagenaViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableCartagenaMain: UITableView!
    
    
    var cartagenaLists = [CartagenaModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        struct GroupCartagena1 {
            var title = "Cararin"
            var description = "Club deportivo de beisbol"
            var descriptionDetail = "Actividad:\n" + "\nClub deportivo de beisbol.\n" + "\nBeneficio:\n" + "50% de descuento en el pago de inscripción. 50% de descuentoto en la mensualidad.\n" + "\nCondiciones y Restricciones:\n" + "\nSe debe presentar el documento de identificación para aplicar al descuento de cumpleaños.\n" + "\nContacto:\n" + "Carlos Ramirez Rincón / Movil: 317 860 7367 - 310 400 7427\n"
            var image = UIImage(named:"cararin")!
            var phone = "3178607367"
            var mail = "alejandro.clubrecordar@gmail.com"
            var latitude = "#"
            var longitude = "#"
        }
        
        let groupCartagena1 = GroupCartagena1()
        
        struct GroupCartagena2 {
            var title = "Icosald"
            var description = "Instituto Colombiano de Salud"
            var descriptionDetail = "Actividad:\n" + "\nSuministro de comidas y bebidas alcoholicas y no alcoholicas.\n" + "\nBeneficio:\n" + "\n5% de descuento en todas las comidas de la carta.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación. No Aplica el descuento para las bebidas.\n" + "\nContacto:\n" + "\nCentro Historico Calle 30 #8B-62\n" +
            "Judith Castañeda / Movil: 300 800 0570\n"
            var image = UIImage(named:"ics")!
            var phone = "3116643679"
            var mail = "bailaboleracartagena@gmail.com"
            var latitude = "10.412354"
            var longitude = "-75.532457"
        }
        
        let groupCartagena2 = GroupCartagena2()
        
        struct GroupCartagena3 {
            var title = "Acción de Gracias"
            var description = "Suministro de comidas y bebidas alcoholicas y no alcoholicas"
            var descriptionDetail = "Actividad:\n" + "\nSuministro de comidas y bebidas alcoholicas y no alcoholicas.\n" + "\nBeneficio:\n" + "\n5% de descuento en todas las comidas de la carta.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación. No Aplica el descuento para las bebidas.\n" + "\nContacto:\n" + "\nCentro Historico Calle 30 #8B-62\n" +
            "Judith Castañeda / Movil: 300 800 0570\n"
            var image = UIImage(named:"accion")!
            var phone = "300 800 0570"
            var mail = "alejandro.clubrecordar@gmail.com"
            var latitude = "10.421971"
            var longitude = "-75.546945"
        }
        
        let groupCartagena3 = GroupCartagena3()
        
        struct GroupCartagena4 {
            var title = "Chelisha"
            var description = "Casa de eventos"
            var descriptionDetail =  "Actividad:\n" + "\nCasa de eventos.\n" + "\nBeneficio:\n" + "\n10% de descuento en alquiler de sillas, mesas, mantelería y samovares.\n" +
                "Salón gratuito con aire acondicionado para paquetes cero estrés (matromonios y quinceañeros con el paquete gama de servicios completo).\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carne del Club Recordar y el documento de identificación. No Aplica el descuento para las bebidas.\n" + "\nContacto:\n" + "\nMartha Ligia García / Movil: (5) 651 2923 - 690 2257\n"
            var image = UIImage(named:"shelsa")!
            var phone = "0356512923"
            var mail = "chelishaeventos@hotmail.com"
            var latitude = "10.396420"
            var longitude = "-75.483949"
        }
        
        let groupCartagena4 = GroupCartagena4()
        
        struct GroupCartagena5 {
            var title = "CompuWorking"
            var description = "Computadores para empresas"
            var descriptionDetail = "Actividad:\n" + "\nEs una empresa dedicada a la Compra y venta de partes y equipo de computación, la reparación y matenimiento de computadores, servicios tecnicos en general, relación de redes de computación y comunicación, accesorios para computadores y muebles para uso de oficina.\n" + "\nBeneficio:\n" + "- 5% de descuento en computadores portatiles, tablets y televisores.\n" +
                "- 5% de dto periféricos (impresoras, monitores, ups, scanner, post, proyectores, dvr). - 5% de dto en muebles (escritorio y sillas).\n" +
                "- 10% partes (disco, memoria, procesador, board, fuente, quemador, etc.).\n" +
                "- 10% toner, subwoofer, redes (router, switch, tarjeta de red, cableado).\n" +
                "- 10% en licenciamiento (windows, office, accesorios).\n" + "\nCondiciones y Restricciones:\n" + "\nSe debe presentar el documento de identificación para aplicar al descuento de cumpleaños.\n" + "\nContacto:\n" + "www.computerworking.com.co Manuel Ballestas / Movil 314 556 1502\n"
            var image = UIImage(named:"compuw")!
            var phone = "3145561502"
            var mail = "comercial@computerworking.net"
            var latitude = "10.424558"
            var longitude = "-75.546884"
        }
        
        let groupCartagena5 = GroupCartagena5()
        
        struct GroupCartagena6 {
            var title = "Mendoza Master"
            var description = "Diseño, fotograbado en metal, prensado, estampado y laminado de metal"
            var descriptionDetail = "Actividad:\n" + "\nDiseño, fotograbado en metal, prensado, estampado y laminado de metal.\n" + "\nBeneficio:\n" + "20% de descuento en todos los productos.\n" + "\nCondiciones y Restricciones:\n" + "\nSe debe presentar el documento de identificación para aplicar al descuento de cumpleaños.\n" + "\nContacto:\n" + "www.mendozamaster.com\n" +
                "Cra. 17 # 46-32 / Tel. (5) 666 4093\n" +
            "Jairo Antonio Mendoza / Movil 315 639 5127\n"
            var image = UIImage(named:"mendoza")!
            var phone = "3156395127"
            var mail = "gerencia@paltiel.com.co"
            var latitude = "10.431037"
            var longitude = "-75.532426"
        }
        
        let groupCartagena6 = GroupCartagena6()
        
        struct GroupCartagena7 {
            var title = "City trolley tour"
            var description = "Disfruta de Cartagena y sus destinos a través de una experiencia única"
            var descriptionDetail = "Actividad:\n" + "\nPrestación, gestión, organización y planeación de servicio público de transporte turístico terrestre.\n" + "\nBeneficio:\n" + "30% de descuento en City Trolley Tour diurno y norcturno.\n" +
                "30% de descuento en Alquiler de Trolley para eventos especiales.\n" + "\nCondiciones y Restricciones:\n" + "\nSe debe presentar el documento de identificación para aplicar al descuento de cumpleaños.\n" + "\nContacto:\n" + "www.colombiatrolley.com\n" +
            "Juan Camilo Rivera / Movil 300 253 3500 / Tel. (5) 643 7786\n"
            var image = UIImage(named:"troleyd")!
            var phone = "30025335000"
            var mail = "jcrivera@colombiatrolley.com"
            var latitude = "10.414058"
            var longitude = "-75.542413"
        }
        
        let groupCartagena7 = GroupCartagena7()
        
        struct GroupCartagena8 {
            var title = "Hotel playa Club"
            var description = "Hotelería, creación y ejecución de paquetes turísticos"
            var descriptionDetail = "Actividad:\n" + "\nHotelería, creación y ejecución de paquetes turísticos.\n" + "\nBeneficio:\n" + "15% de descuento para alojamientos de 1 a 4 noches y de 5 noches en adelante se otorga 1 alojamiento gratis incluido desayuno..\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación. No aplica para consumo de restaurante, ni lavandería.\n" + "\nContacto:\n" + "www.hotelplayaclub.com\n" +
            "Bocagrande Avenida san martin No 4-87 Maudry Herrera / Movil: 301 506 1230"
            var image = UIImage(named:"tressesenta")!
            var phone = "3015061230"
            var mail = "info@hotelplayaclub.com"
            var latitude = "10.399246"
            var longitude = "-75.559760"
        }
        
        let groupCartagena8 = GroupCartagena8()
        
        struct GroupCartagena9 {
            var title = "Camino Tours"
            var description = "Operación se servicios turísticos"
            var descriptionDetail = "Actividad:\n" + "\nOperación se servicios turísticos en la ciudad de Cartagena y las Islas del Rosario.\n" + "\nBeneficio:\n" + "20% de descuento en:\n" +
                "Pasadía a Cocoliso, incluye trasporte, almuerzo y acceso a áreas del Hotel. Pasadía a Islas del Rosario y Playa Blanca, incluye trasnporte en Yate Alcatraz y almuerzo.\n" +
                "10% de descuento en hospedaje en Cocoliso Resort.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "www.caminotours.com.co\n" +
            "Bocagrande A.v. San Martín No. 4-18 Edf. Maray Local 1 Mile Fonseca / Movil 301 468 5507\n"
            var image = UIImage(named:"camino")!
            var phone = "3014685507"
            var mail = "alejandro.cluubrecordar@gmail.com"
            var latitude = "310.398814"
            var longitude = "-75.559949"
        }
        
        let groupCartagena9 = GroupCartagena9()
        
        /** struct GroupCartagena10 {
         var title = "national10"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupCartagena10 = GroupCartagena10()
         
         struct GroupCartagena11 {
         var title = "national11"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupCartagena11 = GroupCartagena11()
         
         struct GroupCartagena12 {
         var title = "national12"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupCartagena12 = GroupCartagena12()
         
         
         struct GroupCartagena13 {
         var title = "national13"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupCartagena13 = GroupCartagena13()
         
         struct GroupCartagena14 {
         var title = "national14"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupCartagena14 = GroupCartagena14()
         
         struct GroupCartagena15 {
         var title = "national15"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupCartagena15 = GroupCartagena15()*/
        
        let itemCartagena1 = CartagenaModel(title: groupCartagena1.title, description: groupCartagena1.description, descriptionDetail: groupCartagena1.descriptionDetail, image: groupCartagena1.image , phone: groupCartagena1.phone, mail: groupCartagena1.mail, latitude: groupCartagena1.latitude as NSString, longitude: groupCartagena1.longitude as NSString)
        
        let itemCartagena2 = CartagenaModel(title: groupCartagena2.title, description: groupCartagena2.description, descriptionDetail: groupCartagena2.descriptionDetail, image: groupCartagena2.image , phone: groupCartagena2.phone, mail: groupCartagena2.mail, latitude: groupCartagena2.latitude as NSString, longitude: groupCartagena2.longitude as NSString)
        
        let itemCartagena3 = CartagenaModel(title: groupCartagena3.title, description: groupCartagena3.description, descriptionDetail: groupCartagena3.descriptionDetail, image: groupCartagena3.image , phone: groupCartagena3.phone, mail: groupCartagena3.mail, latitude: groupCartagena3.latitude as NSString, longitude: groupCartagena3.longitude as NSString)
        
        let itemCartagena4 = CartagenaModel(title: groupCartagena4.title, description: groupCartagena4.description, descriptionDetail: groupCartagena4.descriptionDetail, image: groupCartagena4.image , phone: groupCartagena4.phone, mail: groupCartagena4.mail, latitude: groupCartagena4.latitude as NSString, longitude: groupCartagena4.longitude as NSString)
        
        let itemCartagena5 = CartagenaModel(title: groupCartagena5.title, description: groupCartagena5.description, descriptionDetail: groupCartagena5.descriptionDetail, image: groupCartagena5.image , phone: groupCartagena5.phone, mail: groupCartagena5.mail, latitude: groupCartagena5.latitude as NSString, longitude: groupCartagena5.longitude as NSString)
        
        let itemCartagena6 = CartagenaModel(title: groupCartagena6.title, description: groupCartagena6.description, descriptionDetail: groupCartagena6.descriptionDetail, image: groupCartagena6.image , phone: groupCartagena6.phone, mail: groupCartagena6.mail, latitude: groupCartagena6.latitude as NSString, longitude: groupCartagena6.longitude as NSString)
        
        let itemCartagena7 = CartagenaModel(title: groupCartagena7.title, description: groupCartagena7.description, descriptionDetail: groupCartagena7.descriptionDetail, image: groupCartagena7.image , phone: groupCartagena7.phone, mail: groupCartagena7.mail, latitude: groupCartagena7.latitude as NSString, longitude: groupCartagena7.longitude as NSString)
        
        let itemCartagena8 = CartagenaModel(title: groupCartagena8.title, description: groupCartagena8.description, descriptionDetail: groupCartagena8.descriptionDetail, image: groupCartagena8.image , phone: groupCartagena8.phone, mail: groupCartagena8.mail, latitude: groupCartagena8.latitude as NSString, longitude: groupCartagena8.longitude as NSString)
        
        let itemCartagena9 = CartagenaModel(title: groupCartagena9.title, description: groupCartagena9.description, descriptionDetail: groupCartagena9.descriptionDetail, image: groupCartagena9.image , phone: groupCartagena9.phone, mail: groupCartagena9.mail, latitude: groupCartagena9.latitude as NSString, longitude: groupCartagena9.longitude as NSString)
        
        /**let itemCartagena10 = CartagenaModel(title: groupCartagena10.title, description: groupCartagena10.description, descriptionDetail: groupCartagena10.descriptionDetail, image: groupCartagena10.image , phone: groupCartagena10.phone, mail: groupCartagena10.mail, latitude: groupCartagena10.latitude as NSString, longitude: groupCartagena10.longitude as NSString)
         let itemCartagena11 = CartagenaModel(title: groupCartagena11.title, description: groupCartagena11.description, descriptionDetail: groupCartagena11.descriptionDetail, image: groupCartagena11.image , phone: groupCartagena11.phone, mail: groupCartagena11.mail, latitude: groupCartagena11.latitude as NSString, longitude: groupCartagena11.longitude as NSString)
         let itemCartagena12 = CartagenaModel(title: groupCartagena12.title, description: groupCartagena12.description, descriptionDetail: groupCartagena12.descriptionDetail, image: groupCartagena12.image , phone: groupCartagena12.phone, mail: groupCartagena12.mail, latitude: groupCartagena12.latitude as NSString, longitude: groupCartagena12.longitude as NSString)
         let itemCartagena13 = CartagenaModel(title: groupCartagena13.title, description: groupCartagena13.description, descriptionDetail: groupCartagena13.descriptionDetail, image: groupCartagena13.image , phone: groupCartagena13.phone, mail: groupCartagena13.mail, latitude: groupCartagena13.latitude as NSString, longitude: groupCartagena13.longitude as NSString)
         
         let itemCartagena14 = CartagenaModel(title: groupCartagena14.title, description: groupCartagena14.description, descriptionDetail: groupCartagena14.descriptionDetail, image: groupCartagena14.image , phone: groupCartagena14.phone, mail: groupCartagena14.mail, latitude: groupCartagena14.latitude as NSString, longitude: groupCartagena14.longitude as NSString)
         let itemCartagena15 = CartagenaModel(title: groupCartagena15.title, description: groupCartagena15.description, descriptionDetail: groupCartagena15.descriptionDetail, image: groupCartagena15.image , phone: groupCartagena15.phone, mail: groupCartagena15.mail, latitude: groupCartagena15.latitude as NSString, longitude: groupCartagena15.longitude as NSString)*/
        
        cartagenaLists.append(itemCartagena1)
        cartagenaLists.append(itemCartagena2)
        cartagenaLists.append(itemCartagena3)
        cartagenaLists.append(itemCartagena4)
        cartagenaLists.append(itemCartagena5)
        cartagenaLists.append(itemCartagena6)
        cartagenaLists.append(itemCartagena7)
        cartagenaLists.append(itemCartagena8)
        cartagenaLists.append(itemCartagena9)
        
        /**  cartagenaLists.append(itemCartagena10)
         cartagenaLists.append(itemCartagena11)
         cartagenaLists.append(itemCartagena12)
         cartagenaLists.append(itemCartagena13)
         cartagenaLists.append(itemCartagena14)
         cartagenaLists.append(itemCartagena15)*/
        
        tableCartagenaMain.delegate = self
        tableCartagenaMain.dataSource = self
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cartagenaData", for: indexPath) as? CartagenaCell{
            
            let cartagenaList = cartagenaLists[indexPath.row]
            
            cell.updateUI(cartagenaModel: cartagenaList)
            
            return cell
        }else{
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cartagenaLists.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cartagenaModel = cartagenaLists[indexPath.row]
        switch(indexPath.row){
        case 0:
            self.performSegue(withIdentifier: "detailCartagena", sender: cartagenaModel)
        case 1:
            self.performSegue(withIdentifier: "detailCartagena", sender: cartagenaModel)
        case 2:
            self.performSegue(withIdentifier: "detailCartagena", sender: cartagenaModel)
        case 3:
            self.performSegue(withIdentifier: "detailCartagena", sender: cartagenaModel)
        case 4:
            self.performSegue(withIdentifier: "detailCartagena", sender: cartagenaModel)
        case 5:
            self.performSegue(withIdentifier: "detailCartagena", sender: cartagenaModel)
        case 6:
            self.performSegue(withIdentifier: "detailCartagena", sender: cartagenaModel)
        case 7:
            self.performSegue(withIdentifier: "detailCartagena", sender: cartagenaModel)
        case 8:
            self.performSegue(withIdentifier: "detailCartagena", sender: cartagenaModel)
            /** case 9:
             self.performSegue(withIdentifier: "detailCartagena", sender: cartagenaModel)
             case 10:
             self.performSegue(withIdentifier: "detailCartagena", sender: cartagenaModel)
             case 11:
             self.performSegue(withIdentifier: "detailCartagena", sender: cartagenaModel)
             case 12:
             self.performSegue(withIdentifier: "detailCartagena", sender: cartagenaModel)
             case 13:
             self.performSegue(withIdentifier: "detailCartagena", sender: cartagenaModel)
             case 14:
             self.performSegue(withIdentifier: "detailCartagena", sender: cartagenaModel)*/
        default:
            print("nada")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? DetailCartagenaViewController{
            
            if let cartagena = sender as? CartagenaModel{
                destination.cartagenaData = cartagena
            }
        }
    }
    
}
