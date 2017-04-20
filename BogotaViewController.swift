//
//  BogotaViewController.swift
//  clubrecordarios
//
//  Created by willians on 1/12/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit

class BogotaViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableBogotaMain: UITableView!
    
    
    var bogotaLists = [BogotaModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        struct GroupBogota1 {
            var title = "Cad Conocimiento"
            var description = "Fortalecimiento del talento humano"
            var descriptionDetail = "Actividad:\n" + "\nEs una empresa de capacitación especializada en estrenamiento desarrollo y fortalecimiento del talento humano atráves de dos grandes herramientas de fortalecimiento humano que son el coaching y el PNL.\n" + "\nBeneficio:\n" + "\nLa tarifa para miembros de Club recordar es de $126.000 por cualquier tipo de fortalecimiento, entrenamiento o coaching. Los servicios empresariales se brindan a nivel nacional.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nwww.cad-conocimiento.com.co\n" +
            "PBX: 759 1218 Movil 317 364 5146 / info@cad-conocimiento.com.co\n"
            var image = UIImage(named:"cad")!
            var phone = "3173645146"
            var mail = "info@cad-conocimiento.com.co"
            var latitude = "#"
            var longitude = "#"
        }
        
        let groupBogota1 = GroupBogota1()
        
        struct GroupBogota2 {
            var title = "Alfa 21"
            var description = "Organización de convenciones y eventos comerciales"
            var descriptionDetail = "Actividad:\n" + "\nOrganización de convenciones y eventos comerciales, actividades formativas, agencias de viajes, logística y calendario empresarial.\n" +
                "Presentar el carnet del Club Recordar y el documento de identificación. El descuentos no es aplicable para tiquetes aéreos.\n" + "\nBeneficio:\n" + "\nEDUCACIÓN; 7,5% de descuento en: Actividades formativas, entrenamiento de coaching estratégico, entrenamiento de coaching empresarial y programación neurolingüistica (PNL)\n" +
                "LOGISTICA EMPRESARIAL; 5% de descuento en: Integral, complementaria y eventos. CALENDARIO EMPRESARIAL; 7,5% de descuento en: Todas las actividades diarias. AGENCIA DE VIAJES; 2,5% de descuento en: Todos los planes turisticos.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación. El descuentos no es aplicable para tiquetes aéreos.\n" + "\nContacto:\n" + "\nwww.alfa21.com.co\n" +
            "Cra. 25 No. 52-25 Galerías / Móvil 319 422 5866 Jacqueline Gaitan Romero\n"
            var image = UIImage(named:"alfa21")!
            var phone = "319 422 5866"
            var mail = "alejandro.clubrecordar@gmail.com"
            var latitude = "4.641029"
            var longitude = "-74.074628"
        }
        
        let groupBogota2 = GroupBogota2()
        
        struct GroupBogota3 {
            var title = "Arte Oral"
            var description = "Estética dental Arte Oral"
            var descriptionDetail = "Actividad:\n" + "\nServicios odontologicos especializados.\n" + "\nBeneficio:\n" + "\nConsulta sin costo alguno / 15% de descuento sobre los precios al público.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación y bonos descuento cuando apliquen\n" + "La viabilidad del tratamiento esta sujeta a sus condiciones actuales de salud.\n" + "\nContacto:\n" + "\nwww.arteoral.com.co\n" + "Cra. 47 A No. 118-27 Alambra / PBX 620 7940 Movil 310 858 1333 Dr Jaime Garcia / e-mail: j.garcia@arteoral.com\n"
            var image = UIImage(named:"arteoral")!
            var phone = "3108581333"
            var mail = "cita.info@arteoral.com"
            var latitude = "4.700918"
            var longitude = "-74.057560"
        }
        
        let groupBogota3 = GroupBogota3()
        
        struct GroupBogota4 {
            var title = "Coffe Break Express"
            var description = "Refrigerios Empresariales"
            var descriptionDetail = "Actividad:\n" + "\nRefrigerios Empresariales.\n" + "\nBeneficio:\n" + "\nDescuento del 15% en refrigerios empresariales / 30% de descuento en el primer pedido que realice cada empresa\n" + "\nCondiciones y Restricciones:\n" + "\nCantidad superior a 30 refrigerios.\n" + "Presentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nwww.coffeebreakexpress.com - Cra. 8 D No. 157-34 / Móvil 312 463 6098 Luis Felipe Diaz Gómez / e-mail: info@coffeebreakexpress.com\n"
            var image = UIImage(named:"coffe")!
            var phone = "3124636098"
            var mail = "info@coffeebreakexpress.com"
            var latitude = "4.734390"
            var longitude = " -74.030610"
        }
        
        let groupBogota4 = GroupBogota4()
        
        struct GroupBogota5 {
            var title = "La Raclette"
            var description = "Anchetas, rancho y licores nacionales e internacionales"
            var descriptionDetail = "Actividad:\n" + "\nComercializadora de productos y servicios, mediante la compra venta al por mayory detal de anchetas, rancho y licores nacionales e internacionales.\n" + "\nBeneficio:\n" + "\nTabla de Quesos Bodegón – Descuento 30% para clientes Club Recordar. Tabla de Quesos Gourmet – Descuento 30% para clientes Club Recordar. Ancheteria de Catalogo Vigente en el año con un descuento del 10% sobre tarifa plena para clientes Club Recordar.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nTv. 60 (avda. suba) No. 115-58 Local 104 Tor. A Tel. 624 7229 - 271 4770\n"
            var image = UIImage(named:"raclette")!
            var phone = "0312714770"
            var mail = "alejandro.clubrecordar@gmail.com"
            var latitude = "4.698769"
            var longitude = "-74.069571"
        }
        
        let groupBogota5 = GroupBogota5()
        
        struct GroupBogota6 {
            var title = "Servicio de catering Tres Pimientas Gourmet"
            var description = "Eventos sociales y empresariales"
            var descriptionDetail = "Actividad:\n" + "\nDesayunos, cenas, parrilladas, tablas de quesos y paellas\n" + "\nBeneficio:\n" + "\nLos siguientes beneficios deben ampliarse en la información de la pagina: 20% de descuento en Desayunos, Cenas, Parrilladas, Tablas de quesos, Paellas// Otros Beneficios: 20% de descuento en servicio de meseros, alquiler de menaje // Por la compra de paella se obsequia sangria (minimo 10 paellas = número de sangrías), por la compra de tabla de queso; obsequio copa de vino (minimo para 10 personas = copas de vino).\n" +
                "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nCra. 8 D No. 157-34 / Móvil 312 390 2213\n" +
            "Luis Fernando Rodriguez / e-mail: trespimientasgourmeteventos@hotmail.com\n"
            var image = UIImage(named:"pimientas")!
            var phone = "3123902213"
            var mail = "trespimientasgourmeteventos@hotmail.com"
            var latitude = "4.734390"
            var longitude = "-74.030610"
        }
        
        let groupBogota6 = GroupBogota6()
        
        struct GroupBogota7 {
            var title = "Sin Visa"
            var description = "Comercialización de Bebidas y alimentos para eventos. Formación Artistica por medio de clases"
            var descriptionDetail = "Actividad:\n" + "\nComercialización de Bebidas y alimentos preparados y empacados dentro del establecimiento comercial para eventos externos. Formación Artistica por medio de clases, conferencias, expediciones, eventos culturales, a nombre propio y en colaboración con otras entidades.\n" +
                "\nBeneficio:\n" + "\nDescuento del 10% en los productos del menú de la barra de café.\n" +
                "\nCondiciones y Restricciones:\n" + "\nAplica para compras superiores a $20,000 pesos\n" +
                "Presentar el carnet del Club Recordar y el documento de identificación.\n" +
                "\nContacto:\n" + "\nCll 71 No. 11-07 Chapinero / Movil 317 428 7724 / Tel. 755 9272\n" +
            "Javier Puentes - Director de mercadeo / e-mail: bienvenidos@sinvisabogota.com\n"
            var image = UIImage(named:"svsa")!
            var phone = "3174287724"
            var mail = "bienvenidos@sinvisabogota.co"
            var latitude = "4.656250"
            var longitude = "-74.059501"
        }
        
        let groupBogota7 = GroupBogota7()
        
        struct GroupBogota8 {
            var title = "Canfort"
            var description = "Servicio de guarderia canina"
            var descriptionDetail = "Actividad:\n" + "\nServicios de guardería canina, colegio canino, adiestramiento, socialización, ruta para perros, baño y peluquería.\n" + "\nBeneficio:\n" + "10% de descuento por pago en efectivo en guardería canina, adiestramiento, socialización, baño y peluqueria, ruta para perros.\n" +
                "5% de descuento con otros medios de pago\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nKm. 5,5 Vía suba Cota / Móvil 310 698 0565\n" +
            "German Dario Gonzalez / e-mail: germangonzalez@elpalcoparrilla.com.co\n"
            var image = UIImage(named:"canfort")!
            var phone = "3106980565"
            var mail = "germangonzalez@elpalcoparrilla.com.co"
            var latitude = "4.782654"
            var longitude = "-74.089603"
        }
        
        let groupBogota8 = GroupBogota8()
        
        struct GroupBogota9 {
            var title = "Mindset"
            var description = "Branding y Comunicación"
            var descriptionDetail =  "Actividad:\n" + "\nBranding y Comunicación\n" + "\nBeneficio:\n" + "\nDescuento del 10% sobre la lista de precios de los servicios de creatividad y diseño gráfico descritos en el tarifario adjunto\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nwww.mindsetgroup.co\n" +
            "Cra. 9 No. 53-58 Of. 708 Chapinero / Movil 317-4287724 Fijo 3573502 Javier Puentes - Director Ejecutivo / javier.p@mindsetgroup.co\n"
            var image = UIImage(named:"minset")!
            var phone = "3174287724"
            var mail = "javier.p@mindsetgroup.co"
            var latitude = "4.640155"
            var longitude = "-74.063433"
        }
        
        let groupBogota9 = GroupBogota9()
        
        struct GroupBogota10 {
            var title = "Restaurante Palco Parrilla"
            var description = "Trae tu mascota, salta al bungee y disfruta de la mejor comida en familia"
            var descriptionDetail = "Actividad:\n" + "\nRestaurante - eventos Sociales - recreación para niños.\n" + "\nBeneficio:\n" + "\nDescuento 30% en platos armados para pago en efectivo (los platos armados se pueden revisar en el menú).\n" +
                "Descuento 20% en platos armados para pago en efectivo (los platos armados se pueden revisar en el menú).\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nwww.elpalcoparrilla.com.co - Km. 5,5 Vía suba Cota / Móvil 310 698 0565\n" +
            "German Dario Gonzalez / e-mail: germangonzalez@elpalcoparrilla.com.co\n"
            var image = UIImage(named:"palco")!
            var phone = "3106980565"
            var mail = "Germangonzalez@elpalcoparrilla.com.co"
            var latitude = "4.782549"
            var longitude = "-74.089686"
        }
        
        let groupBogota10 = GroupBogota10()
        
        struct GroupBogota11 {
            var title = "Son de Habana"
            var description = "Expresiones artísticas como la danza, el cine, el teatro cultural"
            var descriptionDetail =  "Actividad:\n" + "\nPromoción y Desarrollo de todas las actividades económicas, sociales, educativas y culturales necesarias para difundir y expansión de expresiones artísticas como la danza, el cine, el teatro cultural del café y la fotografía\n" + "\nBeneficio:\n" + "\nDescuento del 20% sobre las tarifas de nuestros cursos de baile.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nwww.sondelahabana.com\n" +
            "Cll 71 No. 11-07 Chapinero / Movil 331 7428 7724 Fijo 755 9272 Persona Contacto Javier Puentes - Director de mercadeo e-mail: sondehabana@gmail.com\n"
            
            var image = UIImage(named:"habana")!
            var phone = "33174287724"
            var mail = "sondehabana@gmail.com"
            var latitude = "4.656229"
            var longitude = "-74.059490"
        }
        
        let groupBogota11 = GroupBogota11()
        
        struct GroupBogota12 {
            var title = "Gonzalo Prada"
            var description = "Medicina Interna Neumología."
            var descriptionDetail = "Actividad:\n" + "\nMedicina Interna Neumología.\n" + "\nBeneficio:\n" + "\nConsulta y Control tarifa plena $ 220,000. - Tarifa para clientes Club Recordar $ 100,000.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.La viabilidad del tratamiento esta sujeta a sus condiciones actuales de salud.\n" +
                "\nContacto:\n" + "\nAv. Cll. 127 No. 20-78 Of. 520 Barrio la Calleja / Movil 312-3559439 Gonzalo Prada - Neumologo\n"
            var image = UIImage(named:"gonzalo")!
            var phone = "3123559439"
            var mail = "alejandro.clubrecordar@gmail.com"
            var latitude = "4.706725"
            var longitude = "-74.051291"
        }
        
        let groupBogota12 = GroupBogota12()
        
        
        struct GroupBogota13 {
            var title = "Sonría"
            var description = "Clínica Dental Sonría"
            var descriptionDetail = "Actividad:\n" + "\nPrestación de servicios de Salud y asistencia en servicios de odontología general y especializada.\n" + "\nBeneficio:\n" + "\nDescuento del 30% con la tarjeta sonría y 5% adicional por la alianza.\n" +
                "- Tarjeta Sonria personal $10.000 (Precio regular $33.200) - Tarjeta Sonría Familiar $30.000 (Precio regular $88.600)\n" +
                "- Plan odontológico personal por un año $55.000 (Precio regular $85.000) No disponible en clínicas. Exclusivo corporativo.\n" +
                "El plan odontological incluye lo siguiente:\n" +
                "- Valoracion odontologica - Eliminacion de caries - Una profilaxis al año - Pulpectomia (elimination del nervio) - Exodoncias no quirúrgicas - Cementación provisional de temporales - Rx periapicales\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" +
                "La viabilidad del tratamiento esta sujeta a sus condiciones actuales de salud.\n" + "\nContacto:\n" + "\nwww.sonria.com.co\n" +
                " Transv. 24 No. 54-08 Galerías\n" +
            "Diana Barón Movil 313 386 1654 / Paula Leyva Movil 311 206 6736 / convenios@sonria.com.co\n"
            var image = UIImage(named:"sonria")!
            var phone = "3112066736"
            var mail = "convenios@sonria.com.co"
            var latitude = "4.644985"
            var longitude = "-74.072570"
        }
        
        let groupBogota13 = GroupBogota13()
        
        /**  struct GroupBogota14 {
         var title = "national14"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupBogota14 = GroupBogota14()
         
         struct GroupBogota15 {
         var title = "national15"
         var description = "national"
         var descriptionDetail = "largo national"
         var image = UIImage(named:"alianzas")!
         var phone = "697391110"
         var mail = "willi@gmail.com"
         var latitude = "41.5922089"
         var longitude = "-0.9315483"
         }
         
         let groupBogota15 = GroupBogota15() */
        
        let itemBogota1 = BogotaModel(title: groupBogota1.title, description: groupBogota1.description, descriptionDetail: groupBogota1.descriptionDetail, image: groupBogota1.image , phone: groupBogota1.phone, mail: groupBogota1.mail, latitude: groupBogota1.latitude as NSString, longitude: groupBogota1.longitude as NSString)
        let itemBogota2 = BogotaModel(title: groupBogota2.title, description: groupBogota2.description, descriptionDetail: groupBogota2.descriptionDetail, image: groupBogota2.image , phone: groupBogota2.phone, mail: groupBogota2.mail, latitude: groupBogota2.latitude as NSString, longitude: groupBogota2.longitude as NSString)
        let itemBogota3 = BogotaModel(title: groupBogota3.title, description: groupBogota3.description, descriptionDetail: groupBogota3.descriptionDetail, image: groupBogota3.image , phone: groupBogota3.phone, mail: groupBogota3.mail, latitude: groupBogota3.latitude as NSString, longitude: groupBogota3.longitude as NSString)
        let itemBogota4 = BogotaModel(title: groupBogota4.title, description: groupBogota4.description, descriptionDetail: groupBogota4.descriptionDetail, image: groupBogota4.image , phone: groupBogota4.phone, mail: groupBogota4.mail, latitude: groupBogota4.latitude as NSString, longitude: groupBogota4.longitude as NSString)
        let itemBogota5 = BogotaModel(title: groupBogota5.title, description: groupBogota5.description, descriptionDetail: groupBogota5.descriptionDetail, image: groupBogota5.image , phone: groupBogota5.phone, mail: groupBogota5.mail, latitude: groupBogota5.latitude as NSString, longitude: groupBogota5.longitude as NSString)
        let itemBogota6 = BogotaModel(title: groupBogota6.title, description: groupBogota6.description, descriptionDetail: groupBogota6.descriptionDetail, image: groupBogota6.image , phone: groupBogota6.phone, mail: groupBogota6.mail, latitude: groupBogota6.latitude as NSString, longitude: groupBogota6.longitude as NSString)
        let itemBogota7 = BogotaModel(title: groupBogota7.title, description: groupBogota7.description, descriptionDetail: groupBogota7.descriptionDetail, image: groupBogota7.image , phone: groupBogota7.phone, mail: groupBogota7.mail, latitude: groupBogota7.latitude as NSString, longitude: groupBogota7.longitude as NSString)
        let itemBogota8 = BogotaModel(title: groupBogota8.title, description: groupBogota8.description, descriptionDetail: groupBogota8.descriptionDetail, image: groupBogota8.image , phone: groupBogota8.phone, mail: groupBogota8.mail, latitude: groupBogota8.latitude as NSString, longitude: groupBogota8.longitude as NSString)
        let itemBogota9 = BogotaModel(title: groupBogota9.title, description: groupBogota9.description, descriptionDetail: groupBogota9.descriptionDetail, image: groupBogota9.image , phone: groupBogota9.phone, mail: groupBogota9.mail, latitude: groupBogota9.latitude as NSString, longitude: groupBogota9.longitude as NSString)
        let itemBogota10 = BogotaModel(title: groupBogota10.title, description: groupBogota10.description, descriptionDetail: groupBogota10.descriptionDetail, image: groupBogota10.image , phone: groupBogota10.phone, mail: groupBogota10.mail, latitude: groupBogota10.latitude as NSString, longitude: groupBogota10.longitude as NSString)
        let itemBogota11 = BogotaModel(title: groupBogota11.title, description: groupBogota11.description, descriptionDetail: groupBogota11.descriptionDetail, image: groupBogota11.image , phone: groupBogota11.phone, mail: groupBogota11.mail, latitude: groupBogota11.latitude as NSString, longitude: groupBogota11.longitude as NSString)
        let itemBogota12 = BogotaModel(title: groupBogota12.title, description: groupBogota12.description, descriptionDetail: groupBogota12.descriptionDetail, image: groupBogota12.image , phone: groupBogota12.phone, mail: groupBogota12.mail, latitude: groupBogota12.latitude as NSString, longitude: groupBogota12.longitude as NSString)
        let itemBogota13 = BogotaModel(title: groupBogota13.title, description: groupBogota13.description, descriptionDetail: groupBogota13.descriptionDetail, image: groupBogota13.image , phone: groupBogota13.phone, mail: groupBogota13.mail, latitude: groupBogota13.latitude as NSString, longitude: groupBogota13.longitude as NSString)
        
        /** let itemBogota14 = BogotaModel(title: groupBogota14.title, description: groupBogota14.description, descriptionDetail: groupBogota14.descriptionDetail, image: groupBogota14.image , phone: groupBogota14.phone, mail: groupBogota14.mail, latitude: groupBogota14.latitude as NSString, longitude: groupBogota14.longitude as NSString)
         let itemBogota15 = BogotaModel(title: groupBogota15.title, description: groupBogota15.description, descriptionDetail: groupBogota15.descriptionDetail, image: groupBogota15.image , phone: groupBogota15.phone, mail: groupBogota15.mail, latitude: groupBogota15.latitude as NSString, longitude: groupBogota15.longitude as NSString) */
        
        bogotaLists.append(itemBogota1)
        bogotaLists.append(itemBogota2)
        bogotaLists.append(itemBogota3)
        bogotaLists.append(itemBogota4)
        bogotaLists.append(itemBogota5)
        bogotaLists.append(itemBogota6)
        bogotaLists.append(itemBogota7)
        bogotaLists.append(itemBogota8)
        bogotaLists.append(itemBogota9)
        bogotaLists.append(itemBogota10)
        bogotaLists.append(itemBogota11)
        bogotaLists.append(itemBogota12)
        bogotaLists.append(itemBogota13)
        /**  bogotaLists.append(itemBogota14)
         bogotaLists.append(itemBogota15)*/
        
        tableBogotaMain.delegate = self
        tableBogotaMain.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "bogotaData", for: indexPath) as? BogotaCell{
            
            let bogotaList = bogotaLists[indexPath.row]
            
            cell.updateUI(bogotaModel: bogotaList)
            
            return cell
        }else{
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bogotaLists.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let bogotaModel = bogotaLists[indexPath.row]
        switch(indexPath.row){
        case 0:
            self.performSegue(withIdentifier: "detailBogota", sender: bogotaModel)
        case 1:
            self.performSegue(withIdentifier: "detailBogota", sender: bogotaModel)
        case 2:
            self.performSegue(withIdentifier: "detailBogota", sender: bogotaModel)
        case 3:
            self.performSegue(withIdentifier: "detailBogota", sender: bogotaModel)
        case 4:
            self.performSegue(withIdentifier: "detailBogota", sender: bogotaModel)
        case 5:
            self.performSegue(withIdentifier: "detailBogota", sender: bogotaModel)
        case 6:
            self.performSegue(withIdentifier: "detailBogota", sender: bogotaModel)
        case 7:
            self.performSegue(withIdentifier: "detailBogota", sender: bogotaModel)
        case 8:
            self.performSegue(withIdentifier: "detailBogota", sender: bogotaModel)
        case 9:
            self.performSegue(withIdentifier: "detailBogota", sender: bogotaModel)
        case 10:
            self.performSegue(withIdentifier: "detailBogota", sender: bogotaModel)
        case 11:
            self.performSegue(withIdentifier: "detailBogota", sender: bogotaModel)
        case 12:
            self.performSegue(withIdentifier: "detailBogota", sender: bogotaModel)
            /** case 13:
             self.performSegue(withIdentifier: "detailBogota", sender: bogotaModel)
             case 14:
             self.performSegue(withIdentifier: "detailBogota", sender: bogotaModel) */
        default:
            print("nada")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? DetailBogotaViewController{
            
            if let bogota = sender as? BogotaModel{
                destination.bogotaData = bogota
            }
        }
    }
}
