//
//  BarranquillaViewController.swift
//  clubrecordarios
//
//  Created by willians on 30/11/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit

class BarranquillaViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableBarranquillaMain: UITableView!
    
    var barranquillaLists = [BarranquillaModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        struct GroupBarranquilla1 {
            var title = "Spa Lily Tovar"
            var description = "Centro integral de belleza"
            var descriptionDetail = "Actividad:\n" + "\nCentro integral de Belleza (Spa) todo para el cuidado de su cuerpo.\n" + "\nBeneficio:\n" + "\n30 % de descuento en pagos de contado.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nCarrera 43 No. 67 - 64 Local No.03\n" +  "Lily Tovar / Tel. No. (5) 317 7924 - 301 790 9434 lilitb@hotmail.es"
            var image = UIImage(named:"lily")!
            var phone = "3017909434"
            var mail = "lilitb@hotmail.es"
            var latitude = "10.988796"
            var longitude = "-74.801953"
        }
        
        let groupBarranquilla1 = GroupBarranquilla1()
        
        struct GroupBarranquilla2 {
            var title = "Elite"
            var description = "Academia de Conducción"
            var descriptionDetail = "Actividad:\n" + "\nAcademia de Conducción\n" + "\nBeneficio:\n" + "\n15% descuento en el costo de la inscripción dedicada a la educación a conductores responsables y cumplidores de la normativa vigente.\n" + "\nCondiciones y Restricciones:\n" +
                "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nCarrera 43 No. 67-64 Tel. (5) 319 5651 Movil 300 262 5352 ceaelitebarranquilla@gmail.com\n"
            var image = UIImage(named:"elite")!
            var phone = "3002625352"
            var mail = "ceaelitebarranquilla@gmail.com"
            var latitude = "10.988722"
            var longitude = "-74.801745"
        }
        
        let groupBarranquilla2 = GroupBarranquilla2()
        
        struct GroupBarranquilla3 {
            var title = "Restaurante la Marina"
            var description = "Restaurante (comida marina e internacional)"
            var descriptionDetail = "Actividad:\n" + "\nRestaurante (comida marina e internacional)\n" + "\nBeneficio:\n" + "\n15% descuento en toda la carta cualquier medio de pago .\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nCarrera 43 No. 80 - 219 / Tel. (5) 345 1940\n"
            var image = UIImage(named:"marina")!
            var phone = "0353451940"
            var mail = "alejandro.clubrecordar@gmail.com"
            var latitude = "10.997403"
            var longitude = " -74.817674"
        }
        
        let groupBarranquilla3 = GroupBarranquilla3()
        
        struct GroupBarranquilla4 {
            var title = "Academia del Caribe"
            var description = "Programas Técnico Laborales"
            var descriptionDetail = "Actividad:\n" + "\nProgramas Técnico Laborales: Locución para Radio y T.V., Producción y Edición de Medios Audiovisuales, Actuación para Teatro, Cine y T.V., Maquillaje Profesional, Dee Jay Con Énfasis en Producción Musical, Fotografía, Cursos Vacacionales, Talleres de Arte, Formación de Grupos Culturale para Colegios, Universidades y Empresas.\n" + "\nBeneficio:\n" + "\n30% de descuento en el costo de la inscripción.\n" + "\nCondiciones y Restricciones:\n" + "\npresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nCra 46 No. 87-43 / Tel. (5) 359 0635\n" +
            "Sania Patricia Eguis Risso / seguir98@hotmail.com\n"
            var image = UIImage(named:"caribe")!
            var phone = "0353590635"
            var mail = "seguir98@hotmail.com"
            var latitude = "11.002882"
            var longitude = "-74.823345"
        }
        
        let groupBarranquilla4 = GroupBarranquilla4()
        
        struct GroupBarranquilla5 {
            var title = "Artes Gráficas del Norte"
            var description = "Impresión y artículos Publicitarios"
            var descriptionDetail = "Actividad:\n" + "\nImpresión y articulos Publicitarios.\n" + "\nBeneficio:\n" + "\n10% dcto con cualquier medio de pago.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación..\n" + "\nContacto:\n" + "\nCl 66 # 46-46 / Movil 3183867124 E-mail artesgraficasdelnorte07@gmail.com\n"
            var image = UIImage(named:"agn")!
            var phone = "3183867124"
            var mail = "artesgraficasdelnorte07@gmail.com"
            var latitude = "10.996069"
            var longitude = "-74.801846"
        }
        
        let groupBarranquilla5 = GroupBarranquilla5()
        
        struct GroupBarranquilla6 {
            var title = "Novasys"
            var description = "Venta de computadores portátiles y de mesa"
            var descriptionDetail = "Actividad:\n" + "\nVenta computadores portatiles y de mesa, articulos publicitarios tampografía, videoproyectores, accesorios, medios informativos, renting corporativo de equipos informativos, servicio de mantenimiento de equipos.\n" + "\nBeneficio:\n" + "\n10% de descuento en computadores clones completos (cpu + pantalla + teclado + mouse)\n" +
                "10% en videoproyectores y 30% en servicios de mantenimiento.\n" + "\nCondiciones y Restricciones:\n" + "\nTarjeta Club Recordar - Presencial al momento de pago y/o solicitar algún servicio\n\n" + "\nContacto:\n" + "\nwww.novasys.com.co\n" +
            "Calle 70 No. 50-31 / PBX (5) 317 7774 - 317 7564 Ibeth Reales\n"
            var image = UIImage(named:"novasys")!
            var phone = "0353177774"
            var mail = "ventasnovasys@hotmail.com"
            var latitude = "10.996205"
            var longitude = "-74.801903"
        }
        
        let groupBarranquilla6 = GroupBarranquilla6()
        
        struct GroupBarranquilla7 {
            var title = "Speed Way"
            var description = "Accesorios de lujo para vehiculo"
            var descriptionDetail = "Actividad:\n" + "\nAccesorios de lujo para vehiculo\n" + "\nBeneficio:\n" + "\nDescuentos del 10% en los servcios de polarizacion y forros de sientos para carro, con cualquier medio de pago.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n\n" + "\nContacto:\n" + "\nCalle 74 No. 43 - 67 / Tel. (5) 356 0194 - 352 8396 Jorge Perez\n"
            var image = UIImage(named:"way")!
            var phone = "697391110"
            var mail = "alejandro.clubrecordar@gmail.com"
            var latitude = "10.993476"
            var longitude = "-74.809087"
        }
        
        let groupBarranquilla7 = GroupBarranquilla7()
        
        struct GroupBarranquilla8 {
            var title = "Union"
            var description = "Diseño, desarrollo y producción de soluciones de comunicaciones gráficas"
            var descriptionDetail = "Actividad:\n" + "\nDiseño, desarrollo y produccion de soluciones de comunicaciones graficas. Material Publicitario, Empaques, bolsas boutique y ferias; Material corporativo; plegables y brochures; catalogos; cartas menu; cuadernos, miniblocks; calendarios; material politico; tarjetas para todo tipo de ocasion; entre otros.\n" + "\nBeneficio:\n" + "\n10% de descuento en soluciones de comunicación grafica (material publicitario, empaques, bolsas boutique y ferias, material corporatiovo, plegables y brochure; catalogos, cartas menu; carpetas, cuadernos, miniblockes, calendarios, material politico, tarjetas para todo tipo de ocasion.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nCalle35No.39-23\n" +
                "John Bula / Tel.(5) 340 6461- 379 0599\n" + "ventas@unionartesgraficas.com / gestionempresarial@unionartesgraficas.com\n"
            var image = UIImage(named:"artes")!
            var phone = "60353406461"
            var mail = "ventas@unionartesgraficas.com"
            var latitude = "10.978653"
            var longitude = "-74.779395"
        }
        
        let groupBarranquilla8 = GroupBarranquilla8()
        
        struct GroupBarranquilla9 {
            var title = "Aprisa"
            var description = "Domicilios; todo en diligencias personales, notariales y empresariales"
            var descriptionDetail = "Actividad:\n" + "\nDomicilios; todo en diligencias personales, notariales y empresariales.\n" + "\nBeneficio:\n" + "\n10% de descuento en tramites personales.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nJulio Pinilla / Tel. (5) 373 2111\n" + "Carrera 69 80- 20\n"
            var image = UIImage(named:"domici")!
            var phone = "0353732111"
            var mail = "alejandro.clubrecordar@gmail.com"
            var latitude = "11.014633"
            var longitude = "-74.806332"
        }
        
        let groupBarranquilla9 = GroupBarranquilla9()
        
        struct GroupBarranquilla10 {
            var title = "Parque del Sol"
            var description = "Centro recreacional (Alquiler Canchas de Futbol)"
            var descriptionDetail = "Actividad:\n" + "\nCentro recreacional (Alquiler Canchas de Futbol)\n" + "\nBeneficio:\n" + "\n30% descuento en reserva de cancha y descuento especial en las diferentes modalidades deportivas.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nwww.parquedelsol.org\n" + "Carrera 39 No. 73 - 105 / Tel. (5) 345 7293 - 356 8073 Patricia Garcia\n" + "Carrera 69 80- 20\n"
            var image = UIImage(named:"elsol")!
            var phone = "0353568073"
            var mail = "alejandro.clubrecordar@gmail.com"
            var latitude = "10.990670"
            var longitude = "-74.793287"
        }
        
        let groupBarranquilla10 = GroupBarranquilla10()
        
        struct GroupBarranquilla11 {
            var title = "La Taquillera"
            var description = "Comercializacion de Espectaculos"
            var descriptionDetail =  "Actividad:\n" + "\nComercializacion de Espectaculos.\n" + "\nBeneficio:\n" + "\n10% descuento con cualquier medio de pago\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nwww.lataquillera.com\n" +
            "Carrera 61 No. 64 - 27 / PBX (5) 349 5035 - Movil 301 373 6464\n"
            var image = UIImage(named:"taquillera")!
            var phone = "697391110"
            var mail = "willi@gmail.com"
            var latitude = "41.5922089"
            var longitude = "-0.9315483"
        }
        
        let groupBarranquilla11 = GroupBarranquilla11()
        
        struct GroupBarranquilla12 {
            var title = "Electro Aceite"
            var description = "Repuestos para automotores"
            var descriptionDetail = "Actividad:\n" + "\nCambio de Aceite, Filtros, Sincronizacion, Revision partes electricas, Baterias; Repuestos en general; Servicios Mecanicos, Electricos; Mecanica en general (gasolina, gas y disel).\n" + "\nBeneficio:\n" + "\n20% de descuento en cambio de aceites y 10% en lo que atencion mecanica se refiere.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nCalle57No41B-72\n" + "Franky Linero / Tel. (5) 385 4578 - 3854579 / Movil: 301 264 5844 Frankylinero18@hotmail.com\n"
            var image = UIImage(named:"electro")!
            var phone = "3012645844"
            var mail = "Frankylinero18@hotmail.com"
            var latitude = "10.985099"
            var longitude = "-74.794954"
        }
        
        let groupBarranquilla12 = GroupBarranquilla12()
        
        
        struct GroupBarranquilla13 {
            var title = "Club Deportivo Instenalco"
            var description = "Formación deportiva"
            var descriptionDetail = "Actividad:\n" + "\nFormación deportiva.\n" + "\nBeneficio:\n" + "\n50% de descuento en matriculas en todas las modalidades deportivas.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nCarrera 62 # 52 - 85 Movil: 300 506 2789\n"
            var image = UIImage(named:"instenalco")!
            var phone = "3005062789"
            var mail = "alejandro.clubrecordar@gmail.com"
            var latitude = "10.994805"
            var longitude = "-74.784947"
        }
        
        let groupBarranquilla13 = GroupBarranquilla13()
        
        struct GroupBarranquilla14 {
            var title = "Colegio Inca"
            var description = "Entidad educativa"
            var descriptionDetail = "Actividad:\n" + "\nEntidad educativa en la modalidad de educación para el trabajo y el desarrollo humano, diversidad de programas académicos que se complementan a través de prácticas educativas internas y externas que le permitan al estuduante afianzar sus conocimientos y ampliar sus posibilidades laborales.\n" + "\nBeneficio:\n" + "\n\n" +
                "10% de descuento en matriculas.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nwww.centroinca.com\n" +
            "Calle 57 Carrera 46 / Movil: 318 711 5556 - 300 784 0034\n"
            var image = UIImage(named:"inca-cole")!
            var phone = "3007840034"
            var mail = "alejandro.clubrecordar@gmail.com"
            var latitude = "10.990522"
            var longitude = "-74.793484"
        }
        
        let groupBarranquilla14 = GroupBarranquilla14()
        
        struct GroupBarranquilla15 {
            var title = "Centro Inca"
            var description = "Educación para el trabajo y el desarrollo humano"
            var descriptionDetail = "Actividad:\n" + "\nEntidad educativa en la modalidad de educación para el trabajo y el desarrollo humano, diversidad de programas académicos que se complementan a través de prácticas educativas internas y externas que le permitan al estuduante afianzar sus conocimientos y ampliar sus posibilidades laborales.\n" + "\nBeneficio:\n" + "\n\n" +
                "10% de descuento en matriculas.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nwww.centroinca.com\n" +
            "Calle 57 Carrera 46 / Movil: 318 711 5556 - 300 784 0034\n"
            var image = UIImage(named:"centro-inca")!
            var phone = "3007840034"
            var mail = "alejandro.clubrecordar@gmail.com"
            var latitude = "10.990522"
            var longitude = "-74.793484"
        }
        
        let groupBarranquilla15 = GroupBarranquilla15()
        
        struct GroupBarranquilla16 {
            var title = "Falab"
            var description = "Grupo integral de salud"
            var descriptionDetail = "Actividad:\n" + "\nBrindar a todos nuestros clientes servicios confiables en laboratorios clínico, salud ocupacional y medicina general y especializada que impacte en la calidad de vida de los mismos.\n" + "\nBeneficio:\n" + "\n$80.000 Consultas ginecolólica. $80.000 Consulta medico internista. $25.000 Consulta con fonoaudiología. $20.000 Consulta con optometría. $20.000 Electrocardiograma.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nwww.laboratoriosfalab.com\n" +
                "Carrera 49B # 79 - 99 / Movil: 312 541 1816\n" +
            "Cari Calle 57 # 23 - 100 / Tel.: (5) 330 9000 Ext.: 5175 / Movil: 312 660 3097 IPS Carrera 47 # 79 - 100 / Movil: 315 748 2972 - 312 660 3085\n"
            var image = UIImage(named:"fab")!
            var phone = "3126603085"
            var mail = "alejandro.clubrecordar@gmail.com"
            var latitude = "10.999680"
            var longitude = "-74.812002"
        }
        
        let groupBarranquilla16 = GroupBarranquilla16()
        
        
        let itemBarranquilla1 = BarranquillaModel(title: groupBarranquilla1.title, description: groupBarranquilla1.description, descriptionDetail: groupBarranquilla1.descriptionDetail, image: groupBarranquilla1.image , phone: groupBarranquilla1.phone, mail: groupBarranquilla1.mail, latitude: groupBarranquilla1.latitude as NSString, longitude: groupBarranquilla1.longitude as NSString)
        
        let itemBarranquilla2 = BarranquillaModel(title: groupBarranquilla2.title, description: groupBarranquilla2.description, descriptionDetail: groupBarranquilla2.descriptionDetail, image: groupBarranquilla2.image , phone: groupBarranquilla2.phone, mail: groupBarranquilla2.mail, latitude: groupBarranquilla2.latitude as NSString, longitude: groupBarranquilla2.longitude as NSString)
        
        let itemBarranquilla3 = BarranquillaModel(title: groupBarranquilla3.title, description: groupBarranquilla3.description, descriptionDetail: groupBarranquilla3.descriptionDetail, image: groupBarranquilla3.image , phone: groupBarranquilla3.phone, mail: groupBarranquilla3.mail, latitude: groupBarranquilla3.latitude as NSString, longitude: groupBarranquilla3.longitude as NSString)
        
        let itemBarranquilla4 = BarranquillaModel(title: groupBarranquilla4.title, description: groupBarranquilla4.description, descriptionDetail: groupBarranquilla4.descriptionDetail, image: groupBarranquilla4.image , phone: groupBarranquilla4.phone, mail: groupBarranquilla4.mail, latitude: groupBarranquilla4.latitude as NSString, longitude: groupBarranquilla4.longitude as NSString)
        
        let itemBarranquilla5 = BarranquillaModel(title: groupBarranquilla5.title, description: groupBarranquilla5.description, descriptionDetail: groupBarranquilla5.descriptionDetail, image: groupBarranquilla5.image , phone: groupBarranquilla5.phone, mail: groupBarranquilla5.mail, latitude: groupBarranquilla5.latitude as NSString, longitude: groupBarranquilla5.longitude as NSString)
        
        let itemBarranquilla6 = BarranquillaModel(title: groupBarranquilla6.title, description: groupBarranquilla6.description, descriptionDetail: groupBarranquilla6.descriptionDetail, image: groupBarranquilla6.image , phone: groupBarranquilla6.phone, mail: groupBarranquilla6.mail, latitude: groupBarranquilla6.latitude as NSString, longitude: groupBarranquilla6.longitude as NSString)
        
        let itemBarranquilla7 = BarranquillaModel(title: groupBarranquilla7.title, description: groupBarranquilla7.description, descriptionDetail: groupBarranquilla7.descriptionDetail, image: groupBarranquilla7.image , phone: groupBarranquilla7.phone, mail: groupBarranquilla7.mail, latitude: groupBarranquilla7.latitude as NSString, longitude: groupBarranquilla7.longitude as NSString)
        
        let itemBarranquilla8 = BarranquillaModel(title: groupBarranquilla8.title, description: groupBarranquilla8.description, descriptionDetail: groupBarranquilla8.descriptionDetail, image: groupBarranquilla8.image , phone: groupBarranquilla8.phone, mail: groupBarranquilla8.mail, latitude: groupBarranquilla8.latitude as NSString, longitude: groupBarranquilla8.longitude as NSString)
        
        let itemBarranquilla9 = BarranquillaModel(title: groupBarranquilla9.title, description: groupBarranquilla9.description, descriptionDetail: groupBarranquilla9.descriptionDetail, image: groupBarranquilla9.image , phone: groupBarranquilla9.phone, mail: groupBarranquilla9.mail, latitude: groupBarranquilla9.latitude as NSString, longitude: groupBarranquilla9.longitude as NSString)
        
        let itemBarranquilla10 = BarranquillaModel(title: groupBarranquilla10.title, description: groupBarranquilla10.description, descriptionDetail: groupBarranquilla10.descriptionDetail, image: groupBarranquilla10.image , phone: groupBarranquilla10.phone, mail: groupBarranquilla10.mail, latitude: groupBarranquilla10.latitude as NSString, longitude: groupBarranquilla10.longitude as NSString)
        
        let itemBarranquilla11 = BarranquillaModel(title: groupBarranquilla11.title, description: groupBarranquilla11.description, descriptionDetail: groupBarranquilla11.descriptionDetail, image: groupBarranquilla11.image , phone: groupBarranquilla11.phone, mail: groupBarranquilla11.mail, latitude: groupBarranquilla11.latitude as NSString, longitude: groupBarranquilla11.longitude as NSString)
        
        let itemBarranquilla12 = BarranquillaModel(title: groupBarranquilla12.title, description: groupBarranquilla12.description, descriptionDetail: groupBarranquilla12.descriptionDetail, image: groupBarranquilla12.image , phone: groupBarranquilla12.phone, mail: groupBarranquilla12.mail, latitude: groupBarranquilla12.latitude as NSString, longitude: groupBarranquilla12.longitude as NSString)
        
        let itemBarranquilla13 = BarranquillaModel(title: groupBarranquilla13.title, description: groupBarranquilla13.description, descriptionDetail: groupBarranquilla13.descriptionDetail, image: groupBarranquilla13.image , phone: groupBarranquilla13.phone, mail: groupBarranquilla13.mail, latitude: groupBarranquilla13.latitude as NSString, longitude: groupBarranquilla13.longitude as NSString)
        
        let itemBarranquilla14 = BarranquillaModel(title: groupBarranquilla14.title, description: groupBarranquilla14.description, descriptionDetail: groupBarranquilla14.descriptionDetail, image: groupBarranquilla14.image , phone: groupBarranquilla14.phone, mail: groupBarranquilla14.mail, latitude: groupBarranquilla14.latitude as NSString, longitude: groupBarranquilla14.longitude as NSString)
        
        let itemBarranquilla15 = BarranquillaModel(title: groupBarranquilla15.title, description: groupBarranquilla15.description, descriptionDetail: groupBarranquilla15.descriptionDetail, image: groupBarranquilla15.image , phone: groupBarranquilla15.phone, mail: groupBarranquilla15.mail, latitude: groupBarranquilla15.latitude as NSString, longitude: groupBarranquilla15.longitude as NSString)
        
        let itemBarranquilla16 = BarranquillaModel(title: groupBarranquilla16.title, description: groupBarranquilla16.description, descriptionDetail: groupBarranquilla16.descriptionDetail, image: groupBarranquilla16.image , phone: groupBarranquilla16.phone, mail: groupBarranquilla16.mail, latitude: groupBarranquilla16.latitude as NSString, longitude: groupBarranquilla16.longitude as NSString)
        
        
        
        barranquillaLists.append(itemBarranquilla1)
        barranquillaLists.append(itemBarranquilla2)
        barranquillaLists.append(itemBarranquilla3)
        barranquillaLists.append(itemBarranquilla4)
        barranquillaLists.append(itemBarranquilla5)
        barranquillaLists.append(itemBarranquilla6)
        barranquillaLists.append(itemBarranquilla7)
        barranquillaLists.append(itemBarranquilla8)
        barranquillaLists.append(itemBarranquilla9)
        barranquillaLists.append(itemBarranquilla10)
        barranquillaLists.append(itemBarranquilla11)
        barranquillaLists.append(itemBarranquilla12)
        barranquillaLists.append(itemBarranquilla13)
        barranquillaLists.append(itemBarranquilla14)
        barranquillaLists.append(itemBarranquilla15)
        barranquillaLists.append(itemBarranquilla16)
        
        tableBarranquillaMain.delegate = self
        tableBarranquillaMain.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "barranquillaData", for: indexPath) as? BarranquillaCell{
            
            let barranquillaList = barranquillaLists[indexPath.row]
            
            cell.updateUI(barranquillaModel: barranquillaList)
            
            return cell
        }else{
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return barranquillaLists.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let barranquillaModel = barranquillaLists[indexPath.row]
        print(barranquillaModel)
        switch(indexPath.row){
        case 0:
            self.performSegue(withIdentifier: "detailBarranquilla", sender: barranquillaModel)
        case 1:
            self.performSegue(withIdentifier: "detailBarranquilla", sender: barranquillaModel)
        case 2:
            self.performSegue(withIdentifier: "detailBarranquilla", sender: barranquillaModel)
        case 3:
            self.performSegue(withIdentifier: "detailBarranquilla", sender: barranquillaModel)
        case 4:
            self.performSegue(withIdentifier: "detailBarranquilla", sender: barranquillaModel)
        case 5:
            self.performSegue(withIdentifier: "detailBarranquilla", sender: barranquillaModel)
        case 6:
            self.performSegue(withIdentifier: "detailBarranquilla", sender: barranquillaModel)
        case 7:
            self.performSegue(withIdentifier: "detailBarranquilla", sender: barranquillaModel)
        case 8:
            self.performSegue(withIdentifier: "detailBarranquilla", sender: barranquillaModel)
        case 9:
            self.performSegue(withIdentifier: "detailBarranquilla", sender: barranquillaModel)
        case 10:
            self.performSegue(withIdentifier: "detailBarranquilla", sender: barranquillaModel)
        case 11:
            self.performSegue(withIdentifier: "detailBarranquilla", sender: barranquillaModel)
        case 12:
            self.performSegue(withIdentifier: "detailBarranquilla", sender: barranquillaModel)
        case 13:
            self.performSegue(withIdentifier: "detailBarranquilla", sender: barranquillaModel)
        case 14:
            self.performSegue(withIdentifier: "detailBarranquilla", sender: barranquillaModel)
        case 15:
            self.performSegue(withIdentifier: "detailBarranquilla", sender: barranquillaModel)
        default:
            print("nada")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? DetailBarranquillaViewController{
            
            if let barranquilla = sender as? BarranquillaModel{
                destination.barranquillaData = barranquilla
            }
        }
    }
}
