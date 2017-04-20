//
//  ValleViewController.swift
//  clubrecordarios
//
//  Created by willians on 6/12/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit

class ValleViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableValleMain: UITableView!
    
    
    var valleLists = [ValleModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        struct GroupValle1 {
            var title = "Corporacion Eloisa Tamayo"
            var description = "Institución de Educación Para El Trabajo y El desarrollo Humano"
            var descriptionDetail = "Actividad:\n" + "\nEntidad privada dedicada a la prestación del servicio de capacitación y de formación del recurso humano idóneo en conocimientos y destrezas, para atender las demandas que presentan las diferentes empresas comerciales y entidades de Salud.\n" + "\nBeneficio:\n" + "\n20% de descuento en elprograma de cosmetología y estética integral jornada tarde y de descuento 15% jornada mañana y sábados.\n" +
                "15% de descuento en elprograma de peluquería y administrativos.\n" + "\nCondiciones y Restricciones:\n" + "\nTarjeta Club Recordar - Presencial al momento de pago y/o solicitar algún servicio\n" + "\nContacto:\n" + "\nwww.eloisatamayo.com\n" +
            "Tel. (5) 589 7984 / Movil 301 336 1391 Eloisa Tamayo\n"
            var image = UIImage(named:"eliosad")!
            var phone = "3013361391"
            var mail = "talentohumano@eloisatamayo.com"
            var latitude = "10.473556"
            var longitude = "-73.253620"
        }
        
        let groupValle1 = GroupValle1()
        
        struct GroupValle2 {
            var title = "Pineda Junior"
            var description = "Es una empresa que cuenta con un staff de entrenadores licenciados en educación física"
            var descriptionDetail = "Actividad:\n" + "\nEs una empresa que cuenta con un staff de entrenadores licenciados en educación física, altamente capacitados, llevamos aproximadamente 20 años impartiendo formación en el campo deportivo a los niños vallenatos.\n" + "\nBeneficio:\n" + "\n10% de descuento en todas las disciplinas.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n\n" + "\nContacto:\n" + "\nTel. (5) 584 1043 pinedajuniors@hotmail.com\n"
            var image = UIImage(named:"pinedad")!
            var phone = "0355841043"
            var mail = "pinedajuniors@hotmail.com"
            var latitude = "10.479307"
            var longitude = "-73.252256"
        }
        
        let groupValle2 = GroupValle2()
        
        struct GroupValle3 {
            var title = "Rapi Chiken"
            var description = "Especializada en la preparación de alimentos dese hace 10 años"
            var descriptionDetail = "Actividad:\n" + "\nEs un empresa dedicada a ofrecer servicios turisticos y corporativos. Categoria cuatro estrellas y certificacion de calidad ISO 9001.\n" + "\nBeneficio:\n" + "\n10% de descuento en alojamiento y 5% de descuento en restaurante.\n" + "\nCondiciones y Restricciones:\n" + "\nTarjeta Club Recordar - Presencial al momento de pago y/o solicitar algún servicio.\n" + "\nContacto:\n" + "\nwww.hotelsicarare.com.co\n" +
                "Cra. 9 # 16-4 / Movil 320 532 8010\n" +
            "Tulia Calvo - Gerente / e-mail: tcalvo@solarhoteles.com\n"
            var image = UIImage(named:"rappi")!
            var phone = "0355834064"
            var mail = "juliethperaza19@hotmail.com"
            var latitude = "10.477170"
            var longitude = "-73.248172"
        }
        
        let groupValle3 = GroupValle3()
        
        struct GroupValle4 {
            var title = "Spa Diana Ardila"
            var description = "Armonía para tu vida"
            var descriptionDetail = "Actividad:\n" + "\nEs una empresa dedicada a la estética de la mujer con productos no invasivos y una experiencia en el mercado por mas de 26 años.\n" + "\nBeneficio:\n" + "\n30% de descuento en todos los servicios.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nCalle 9 # 14A - 08 San Joaquin / Movil 321 501 0658 - 310 871 2376 / Tel. (5) 573 3132 Diana Ardila / e-mail: adianae@hotmail.com\n"
            var image = UIImage(named:"dianaradilad")!
            var phone = "3108712376"
            var mail = "adianae@hotmail.com"
            var latitude = "10.481358"
            var longitude = "-73.258187"
        }
        
        let groupValle4 = GroupValle4()
        
        struct GroupValle5 {
            var title = "Hotel Sicarare"
            var description = "national"
            var descriptionDetail = "Actividad:\n" + "\nEs un empresa dedicada a ofrecer servicios turisticos y corporativos. Categoria cuatro estrellas y certificacion de calidad ISO 9001.\n" + "\nBeneficio:\n" + "\n10% de descuento en alojamiento y 5% de descuento en restaurante.\n" + "\nCondiciones y Restricciones:\n" + "\nTarjeta Club Recordar - Presencial al momento de pago y/o solicitar algún servicio.\n" + "\nContacto:\n" + "\nwww.hotelsicarare.com.co\n" +
                "Cra. 9 # 16-4 / Movil 320 532 8010\n" +
            "Tulia Calvo - Gerente / e-mail: tcalvo@solarhoteles.com\n"
            var image = UIImage(named:"sicarared")!
            var phone = "3205328010"
            var mail = "tcalvo@solarhoteles.com"
            var latitude = "10.475070"
            var longitude = "-73.247008"
        }
        
        let groupValle5 = GroupValle5()
        
        struct GroupValle6 {
            var title = "Diagnosticentro"
            var description = "El Hotel de los grandes eventos en valledupar"
            var descriptionDetail = "Actividad:\n" + "\nEmpresa lider con 25 años de experiencia en repuestos y mantenimiento mecánico de vehículos, cubrimiento de servicio y repuestos en el Cesar, la Guajira y sus alrededores.\n" + "\nBeneficio:\n" + "\n10% de descuento en todos los servicios.\n" + "\nCondiciones y Restricciones:\n" + "\nTarjeta Club Recordar - Presencial al momento de pago y/o solicitar algún servicio.\n" + "\nContacto:\n" + "\ndiagnosticentroamistad.amawebs.com Cll 21 # 6B - 43 / Tel. (5) 560 6027 diagnoamista@yahoo.es\n"
            var image = UIImage(named:"diagno")!
            var phone = "0355606027"
            var mail = "diagnoamista@yahoo.es"
            var latitude = "10.464402"
            var longitude = "-73.241923"
        }
        
        let groupValle6 = GroupValle6()
        
        struct GroupValle7 {
            var title = "Hotel el Bosque"
            var description = "Empresa dedicada a el turismo, hospedaje, alimentacion y recrecion"
            var descriptionDetail = "Actividad:\n" + "\nEmpresa dedicada a el turismo, hospedaje, alimentacion y recrecion.\n" + "\nBeneficio:\n" + "\n20% de descuento en la lista de precio de prodcutos, pasadias, hospedaje, salon de evetos y restaurantes.\n" + "\nCondiciones y Restricciones:\n" + "\nTarjeta Club Recordar - Presencial al momento de pago y/o solicitar algún servicio\n" + "\nContacto:\n" + "\nMagalis Daza / Movil 310 822 5642\n" +
            "E-mail: elbosquehotelcasacampo@outlook.com\n"
            var image = UIImage(named:"bosque")!
            var phone = "3108225642"
            var mail = "elbosquehotelcasacampo@outlook.com"
            var latitude = "10.474940"
            var longitude = "-73.246925"
        }
        
        let groupValle7 = GroupValle7()
        
        struct GroupValle8 {
            var title = "Odontes"
            var description = "national"
            var descriptionDetail = "Actividad:\n" + "\nEs una empresa dedicada a la prestación de servicios de odontología en general y todas las especialidades.\n" + "\nBeneficio:\n" + "\n50%de descuento para fases higiénicas (remoción de cálculo y placa bacteriana con ultrasonido, no incluye procedimientos de curetaje método abierto para remoción de cálculos).\n" +
                "Servicio de consulta general y especializada (Ortodoncia, endodoncia, periodoncia, implantes, estética dental y educación de higiene oral) sin costo.\n" + "30% de descuento para las resinas de foto curado, carillas estéticas, coronas de porcelana, núcleos o postes en oro y fibra de vidrio, porcelanas, exodoncias método abierto y cerrado.\n" + "20% de descuento para los tratamientos de ortodoncia convencional, ortodoncia estética y técnica de autoligado, aparatología de ortopedia.\n" +
                "\nCondiciones y Restricciones:\n" + "\nTarjeta Club Recordar - Presencial al momento de pago y/o solicitar algún servicio La viabilidad del tratamiento esta sujeta a sus condiciones actuales de salud.\n" + "\nContacto:\n" + "\nE-mail: gerencia@odontes.com.co /\n" +
            "Movil 300 285 3046\n"
            var image = UIImage(named:"odontes")!
            var phone = "3002853046"
            var mail = "gerencia@odontes.com.co"
            var latitude = "10.470421"
            var longitude = "-73.254586"
        }
        
        let groupValle8 = GroupValle8()
        
        struct GroupValle9 {
            var title = "Rosalba Pulgarin"
            var description = "national"
            var descriptionDetail = "Actividad:\n" + "\nConsulta externa en Dermatología, Cirugía Dermatológica en consulta externa estan capacitados para resolver problemas dermatológicos como: infecciones cutáneas, alergias dermatológicas, enfermedades pigmentarias, problemas del cabello y uñas, infecciones tropicales como lepra sarcoidosis leishmaniasis.\n" + "\nBeneficio:\n" + "\n20% y 40% de descuento en la lista de precios, ademas un descuento especial en la tienda de dermatologia DROGUERIA TERSAPIEL.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nRosalba Pulgarin / Tel. (5) 574 2533 centrodermatologiaycosmiatria@hotmail.com\n"
            var image = UIImage(named:"pulgarin")!
            var phone = "0355742533"
            var mail = "centrodermatologiaycosmiatria@hotmail.com"
            var latitude = "10.475365"
            var longitude = "-73.254009"
        }
        
        let groupValle9 = GroupValle9()
        
        /** struct GroupValle10 {
         var title = "national10"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupValle10 = GroupValle10()
         
         struct GroupValle11 {
         var title = "national11"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupValle11 = GroupValle11()
         
         struct GroupValle12 {
         var title = "national12"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupValle12 = GroupValle12()
         
         
         struct GroupValle13 {
         var title = "national13"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupValle13 = GroupValle13()
         
         struct GroupValle14 {
         var title = "national14"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupValle14 = GroupValle14()
         
         struct GroupValle15 {
         var title = "national15"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupValle15 = GroupValle15() */
        
        let itemValle1 = ValleModel(title: groupValle1.title, description: groupValle1.description, descriptionDetail: groupValle1.descriptionDetail, image: groupValle1.image , phone: groupValle1.phone, mail: groupValle1.mail, latitude: groupValle1.latitude as NSString, longitude: groupValle1.longitude as NSString)
        let itemValle2 = ValleModel(title: groupValle2.title, description: groupValle2.description, descriptionDetail: groupValle2.descriptionDetail, image: groupValle2.image , phone: groupValle2.phone, mail: groupValle2.mail, latitude: groupValle2.latitude as NSString, longitude: groupValle2.longitude as NSString)
        let itemValle3 = ValleModel(title: groupValle3.title, description: groupValle3.description, descriptionDetail: groupValle3.descriptionDetail, image: groupValle3.image , phone: groupValle3.phone, mail: groupValle3.mail, latitude: groupValle3.latitude as NSString, longitude: groupValle3.longitude as NSString)
        let itemValle4 = ValleModel(title: groupValle4.title, description: groupValle4.description, descriptionDetail: groupValle4.descriptionDetail, image: groupValle4.image , phone: groupValle4.phone, mail: groupValle4.mail, latitude: groupValle4.latitude as NSString, longitude: groupValle4.longitude as NSString)
        let itemValle5 = ValleModel(title: groupValle5.title, description: groupValle5.description, descriptionDetail: groupValle5.descriptionDetail, image: groupValle5.image , phone: groupValle5.phone, mail: groupValle5.mail, latitude: groupValle5.latitude as NSString, longitude: groupValle5.longitude as NSString)
        let itemValle6 = ValleModel(title: groupValle6.title, description: groupValle6.description, descriptionDetail: groupValle6.descriptionDetail, image: groupValle6.image , phone: groupValle6.phone, mail: groupValle6.mail, latitude: groupValle6.latitude as NSString, longitude: groupValle6.longitude as NSString)
        let itemValle7 = ValleModel(title: groupValle7.title, description: groupValle7.description, descriptionDetail: groupValle7.descriptionDetail, image: groupValle7.image , phone: groupValle7.phone, mail: groupValle7.mail, latitude: groupValle7.latitude as NSString, longitude: groupValle7.longitude as NSString)
        let itemValle8 = ValleModel(title: groupValle8.title, description: groupValle8.description, descriptionDetail: groupValle8.descriptionDetail, image: groupValle8.image , phone: groupValle8.phone, mail: groupValle8.mail, latitude: groupValle8.latitude as NSString, longitude: groupValle8.longitude as NSString)
        let itemValle9 = ValleModel(title: groupValle9.title, description: groupValle9.description, descriptionDetail: groupValle9.descriptionDetail, image: groupValle9.image , phone: groupValle9.phone, mail: groupValle9.mail, latitude: groupValle9.latitude as NSString, longitude: groupValle9.longitude as NSString)
        
        /**let itemValle10 = ValleModel(title: groupValle10.title, description: groupValle10.description, descriptionDetail: groupValle10.descriptionDetail, image: groupValle10.image , phone: groupValle10.phone, mail: groupValle10.mail, latitude: groupValle10.latitude as NSString, longitude: groupValle10.longitude as NSString)
         let itemValle11 = ValleModel(title: groupValle11.title, description: groupValle11.description, descriptionDetail: groupValle11.descriptionDetail, image: groupValle11.image , phone: groupValle11.phone, mail: groupValle11.mail, latitude: groupValle11.latitude as NSString, longitude: groupValle11.longitude as NSString)
         let itemValle12 = ValleModel(title: groupValle12.title, description: groupValle12.description, descriptionDetail: groupValle12.descriptionDetail, image: groupValle12.image , phone: groupValle12.phone, mail: groupValle12.mail, latitude: groupValle12.latitude as NSString, longitude: groupValle12.longitude as NSString)
         let itemValle13 = ValleModel(title: groupValle13.title, description: groupValle13.description, descriptionDetail: groupValle13.descriptionDetail, image: groupValle13.image , phone: groupValle13.phone, mail: groupValle13.mail, latitude: groupValle13.latitude as NSString, longitude: groupValle13.longitude as NSString)
         
         let itemValle14 = ValleModel(title: groupValle14.title, description: groupValle14.description, descriptionDetail: groupValle14.descriptionDetail, image: groupValle14.image , phone: groupValle14.phone, mail: groupValle14.mail, latitude: groupValle14.latitude as NSString, longitude: groupValle14.longitude as NSString)
         let itemValle15 = ValleModel(title: groupValle15.title, description: groupValle15.description, descriptionDetail: groupValle15.descriptionDetail, image: groupValle15.image , phone: groupValle15.phone, mail: groupValle15.mail, latitude: groupValle15.latitude as NSString, longitude: groupValle15.longitude as NSString)*/
        
        
        
        valleLists.append(itemValle9)
        valleLists.append(itemValle8)
        valleLists.append(itemValle7)
        valleLists.append(itemValle6)
        valleLists.append(itemValle5)
        valleLists.append(itemValle4)
        valleLists.append(itemValle3)
        valleLists.append(itemValle2)
        valleLists.append(itemValle1)
        
        
        /** valleLists.append(itemValle10)
         valleLists.append(itemValle11)
         valleLists.append(itemValle12)
         valleLists.append(itemValle13)
         valleLists.append(itemValle14)
         valleLists.append(itemValle15)*/
        
        tableValleMain.delegate = self
        tableValleMain.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "valleData", for: indexPath) as? ValleCell{
            
            let cartagenaList = valleLists[indexPath.row]
            
            cell.updateUI(valleModel: cartagenaList)
            
            return cell
        }else{
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return valleLists.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let valleModel = valleLists[indexPath.row]
        switch(indexPath.row){
        case 0:
            self.performSegue(withIdentifier: "detailValle", sender: valleModel)
        case 1:
            self.performSegue(withIdentifier: "detailValle", sender: valleModel)
        case 2:
            self.performSegue(withIdentifier: "detailValle", sender: valleModel)
        case 3:
            self.performSegue(withIdentifier: "detailValle", sender: valleModel)
        case 4:
            self.performSegue(withIdentifier: "detailValle", sender: valleModel)
        case 5:
            self.performSegue(withIdentifier: "detailValle", sender: valleModel)
        case 6:
            self.performSegue(withIdentifier: "detailValle", sender: valleModel)
        case 7:
            self.performSegue(withIdentifier: "detailValle", sender: valleModel)
        case 8:
            self.performSegue(withIdentifier: "detailValle", sender: valleModel)
            /**  case 9:
             self.performSegue(withIdentifier: "detailValle", sender: valleModel)
             case 10:
             self.performSegue(withIdentifier: "detailValle", sender: valleModel)
             case 11:
             self.performSegue(withIdentifier: "detailValle", sender: valleModel)
             case 12:
             self.performSegue(withIdentifier: "detailValle", sender: valleModel)
             case 13:
             self.performSegue(withIdentifier: "detailValle", sender: valleModel)
             case 14:
             self.performSegue(withIdentifier: "detailValle", sender: valleModel)*/
        default:
            print("nada")
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? DetailValleViewController{
            
            if let valle = sender as? ValleModel{
                destination.valleData = valle
            }
        }
    }
    
    
    
}
