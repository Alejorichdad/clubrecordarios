//
//  CaliViewController.swift
//  clubrecordarios
//
//  Created by willians on 5/12/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit

class CaliViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableCaliMain: UITableView!
    
    
    var caliLists = [CaliModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        struct GroupCali1 {
            var title = "Human Tecnology"
            var description = "Ortodoncia y odontología integral"
            var descriptionDetail = "Actividad:\n" + "\nSalud en movimiento. Nuestros servicios: -Terapia acuatica, terapias manuales, fisioterapia, rehabilitacion fisica, bailoterpia, acondicionamiento fisico, gimnasio, programas de reduccion de peso, pilates y aerobicos.\n" + "\nBeneficio:\n" + "\nescuento 15% en todos los productos y servicios. Descuento del 20% en el mes de cumpleaños Descuentos aplicables a familiares del afiliado.\n" + "\nCondiciones y Restricciones:\n" + "\ne debe presentar el documento de identificación para aplicar al descuento de cumpleaños.\n" + "\nContacto:\n" + "\nTel. (2) 524 7755 / Movil 315 359 6310\n" +
            "Reinel Angulo / e-mail: mercadeoclinicaopal@hotmail.com\n"
            var image = UIImage(named:"human")!
            var phone = "3153596310"
            var mail = "mercadeoclinicaopal@hotmail.com"
            var latitude = "3.412931"
            var longitude = "-76.544181"
        }
        
        let groupCali1 = GroupCali1()
        
        struct GroupCali2 {
            var title = "Giant´s gym"
            var description = "Acondicionamiento físico"
            var descriptionDetail = "Actividad:\n" + "\nGimnasio - Nuestros servicios: Acondicionamiento físico, gimnasio, spinning, funcional hard training, aeróbicos - rumba, insanity, body step, trx, pilates de piso, saco de boxeo, sauna y zona de bronceo.\n" + "\nBeneficio:\n" + "\nDescuento del 30% en todos los servicios.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nTel. (2) 335 1738 / Movil 301 356 3417\n" +
            "Reinel Angulo Quiroz / e-mail: mercadeoclinicaopal@hotmail.com\n"
            var image = UIImage(named:"gian")!
            var phone = "301 356 3417"
            var mail = "mercadeoclinicaopal@hotmail.com"
            var latitude = "3.412104"
            var longitude = "-76.533506"
        }
        
        let groupCali2 = GroupCali2()
        
        struct GroupCali3 {
            var title = "Estrellas Del Norte"
            var description = "Institución de formación para el trabajo y el desarrollo humano"
            var descriptionDetail = "Actividad:\n" + "\n Formación deportiva de niños y niñas desde los 3 hasta los 15 años de edad.\n" + "\nBeneficio:\n" + "\nDescuento del 30% en la mensualidad.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nAvenida 3E Norte 59N-130 casa 32\n" +
            "Juan Felipe Gruesso / Móvil: 304 461 2517 E-mail: juanpipe86@hotmail.com\n"
            var image = UIImage(named:"estrellas1")!
            var phone = "304 461 2517"
            var mail = "juanpipe86@hotmail.com"
            var latitude = "3.487597"
            var longitude = "-76.511115"
        }
        
        let groupCali3 = GroupCali3()
        
        struct GroupCali4 {
            var title = "CCED"
            var description = "Formamos los mejores técnicos laborales en programas con calidad certificada"
            var descriptionDetail = "Actividad:\n" + "\nFormamos los mejores técnicos laborales en programas con calidad certificada. Nuestros practicantes y egresados son reconocidos en el ámbito laboral, como personas íntegras, capacitadas para aportar valor agregado a las empresas que han confiado en sus competencias.\n" + "\nBeneficio:\n" + "\n\n" +
                "Beneficio\n" +
                "15% dcto pago crédito en cualquier programa de formación.\n" +
                "20% dcto pago contado en cualquier programa de formación solo pagos de contado.\n" +
                "15% descuento cursos y seminarios en cualquier programa de formación para empresas.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nwww.cced.edu.co\n" +
            "Juan Carlos Vasquez / Movil 318 827 8067 / e-mail: aspirantes@cced.edu.co\n"
            var image = UIImage(named:"ccedd")!
            var phone = "3188278067"
            var mail = "aspirantes@cced.edu.c"
            var latitude = "3.427822"
            var longitude = "-76.540587"
        }
        
        let groupCali4 = GroupCali4()
        
        struct GroupCali5 {
            var title = "Human Help"
            var description = "Consultoría en procesos de gestión humana"
            var descriptionDetail = "Actividad:\n" + "\nConsultoría en procesos de gestión humana.\n" +
                "Asesoramos a nuestros clientes a través de nuestro fuerte compromiso y capacidad para brindar un servicio diferenciado y alternativas de mejoramiento a su organización.\n" + "\nBeneficio:\n" + "\nDescuento del 30% en todos los servicios.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\n\n" +
                "Movil 317 862 9398 Tel. (2) 396 3837\n" +
            "Heidy Cardozo Gonzalez / e-mail: consultores@humanhelp.com.co\n"
            var image = UIImage(named:"hhelp")!
            var phone = "3178629398"
            var mail = "consultores@humanhelp.com.co"
            var latitude = "#"
            var longitude = "#"
        }
        
        let groupCali5 = GroupCali5()
        
        struct GroupCali6 {
            var title = "Carva de Colombia"
            var description = "Empresa prestadora de bienes y servicios (EPS Hogar)"
            var descriptionDetail = "Actividad:\n" + "\nEmpresa prestadora de bienes y servicios (EPS Hogar)\n" + "Somos la solución rápida, eficaz y económica para las necesidades locativas y de mensajería.\n" + "\nBeneficio:\n" + "\nDescuento del 10% en afiliación a EPS Hogar.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación. Aplica solo para Cali y Palmira.\n" + "\nContacto:\n" + "\nwww.carvadecolombia.com\n" +
            "Movil 316 370 1016 - 316 564 6907 / Tel. (2) 287 1620 - 272 3060 Gladys Varón / e-mail: gerenciacomercial@carvadecolombia.com\n"
            var image = UIImage(named:"carva")!
            var phone = "697391110"
            var mail = "gerenciacomercial@carvadecolombia.com"
            var latitude = "3.437920"
            var longitude = "-76.512621"
        }
        
        let groupCali6 = GroupCali6()
        
        struct GroupCali7 {
            var title = "Extreme World"
            var description = "Ventas y mantenimiento de equipos de gimnasio. Accesorios y repuestos para bicicletas."
            var descriptionDetail = "Actividad:\n" + "\nVentas y mantenimiento de equipos de gimnasio. Accesorios y repuestos para bicicletas.\n" + "\nBeneficio:\n" + "\nDescuento del 15% en compra de equipos de gimnasio y accesorios. Descuento del 20% en servicio técnico.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nwww.extremeworld.com.co\n" +
                "PBX (2) 375 7993 / Movil 314 726 1853 - 320 696 3881\n" +
            "e-mail: gerencia@extremeworld.com.co - aparmenida@hotmail.com\n"
            var image = UIImage(named:"extrem")!
            var phone = "314 726 1853"
            var mail = "aparmenida@hotmail.comm"
            var latitude = "3.451956"
            var longitude = "-76.522656"
        }
        
        let groupCali7 = GroupCali7()
        
        struct GroupCali8 {
            var title = "Alta Peluquería New Life"
            var description = "Peluqueria, spa, estetica y reflexologia."
            var descriptionDetail = "Actividad:\n" + "\n Peluqueria, spa, estética y reflexologia.\n" + "\nBeneficio:\n" + "\nDescuento 20% en todos productos y servicios.\n" +
                "Cursos de etiqueta glamour y maquillaje para empresas.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" +
            "Anthony Peña / Movil 315 657 0302 Nancy Peña / Movil 316 345 9323\n"
            var image = UIImage(named:"pelu")!
            var phone = "3163459323"
            var mail = "alejandro.clubrecordar@gmail.com"
            var latitude = "3.423058"
            var longitude = "-76.545754"
        }
        
        let groupCali8 = GroupCali8()
        
        struct GroupCali9 {
            var title = "Yanoconas Motor"
            var description = "Compra y venta de Vehículos, taller, accesorios, repuestos para automóviles"
            var descriptionDetail = "Actividad:\n" + "\nCompra y venta de Vehículos, taller, accesorios, repuestos para automóviles.\n" + "\nBeneficio:\n" + "\n Descuento 10% compra vehículo. Descuento del 20% en mano de obra. Descuento del 10% en repuestos.\n" + "\nCondiciones y Restricciones:\n"+"Presentar el carnet del Club Recordar y el documento de identificación\n" + "\nContacto:\n" + "\nwww.yanaconasmotor.com.co\n" + "Movil 321 802 9652 - 317 594 0393\n" + "Harold Meneses / e-mail: harold.meneses@yanaconasmotor.com.co Adriana Garcia Hidalgo / e-mail: adriana.garcia@yanaconasmotor.com.co\n";
            
            var image = UIImage(named:"yanac")!
            var phone = "3218029652"
            var mail = "adriana.garcia@yanaconasmotor.com.co"
            var latitude = "3.369100"
            var longitude = "-76.523690"
        }
        
        let groupCali9 = GroupCali9()
        
        struct GroupCali10 {
            var title = "Ortho Oral"
            var description = "Institución integral en servicios odontológicos"
            var descriptionDetail = "Actividad:\n" + "\nInstitución integral en servicios odontológicos, contamos con odontología general y especializada en ortodoncia, periodoncia, endodoncia, cirugía oral, rehabilitación oral, odontopediatría e higiene oral, te hacemos el acompañamiento para que tengas una buena salud oral.\n" + "\nBeneficio:\n" + "\n Descuento del 20% en procedimientos odontológicos. Valoración sin costo.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nwww.orthooral.co\n" +
                "Movil 310 503 6273\n" +  "Leonor Cabal / e-mail: orthooral@hotmail.com\n"
            var image = UIImage(named:"alianzas")!
            var phone = "3105036273"
            var mail = "orthooral@hotmail.com"
            var latitude = "3.460467"
            var longitude = "-76.506955"
        }
        
        let groupCali10 = GroupCali10()
        
        struct GroupCali11 {
            var title = "Boca Nostra"
            var description = "Ortodoncia y diseño dental"
            var descriptionDetail = "Actividad:\n" + "\nOrtodoncia y diseño dental\n" +
                "Nuestros servicios:\n" +
                "Odonotologia general, odontopediatria, ortodoncia, estetica dental, diseño de sonrisa, rehabilitacion oral, blanqueamiento dental, higiene oral & remocion de manchas.\n" + "\nBeneficio:\n" + "\nDescuento del 30% en todos los servicios\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nCali Tel. (2) 339 2988 / Movil 316 405 7400\n" +
                "Palmira Tel. (2) 272 3996 - 273 5727\n" +
                "Movil 315 660 7926\n" +
            "Reinel Angulo Quiroz /  mercadeoclinicaopal@hotmail.com\n"
            var image = UIImage(named:"boca")!
            var phone = "0322723996"
            var mail = "mercadeoclinicaopal@hotmail.com"
            var latitude = "3.397940 "
            var longitude = "-76.540415"
        }
        
        let groupCali11 = GroupCali11()
        
        struct GroupCali12 {
            var title = "Angel"
            var description = "Brindamos servicios de laboratorio clínico"
            var descriptionDetail = "Actividad:\n" + "\nBrindamos servicios de laboratorio clínico accesibles, oportunos, confiables, seguros, confidenciales y una atención humanizada, que soportan el proceso diagnóstico de su médico tratante.\n" + "\nBeneficio:\n" + "\n20%de descuento en exámenes de laboratorio clínico de Nivel I, II y III en la ciudad de Cali (6912) y Buenaventura (6913).\n" +
                "10% de descuento en exámenes de laboratorio clínico de Nivel I, II y III en Jamundí (6914), Yumbo (6916), Palmira(6917), Cartago (6920), Buga (6918) y Popayán (6915).\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nTel. (2) 660 7070\n" + "www.angel.com.co\n"
            var image = UIImage(named:"angel")!
            var phone = "0326607070"
            var mail = "alejandro.clubrecordar@gmail.com"
            var latitude = "3.400321"
            var longitude = "-76.537379"
        }
        
        let groupCali12 = GroupCali12()
        
        
        struct GroupCali13 {
            var title = "DentAH"
            var description = "Clínica odontológica, Centro de Estética y Spa"
            var descriptionDetail = "Actividad:\n" + "\nClínica odontológica, Centro de Estética y Spa\n" + "Prestamos servicios de odontología general y todas las especialidades como son endodoncia, ortodoncia, periodoncia, rehabilitación oral, implantologia oral, diseño de sonrisa.\n" + "Tratamientos faciales y corporales, baño de chocolate, masajes reductores, depilación entre otros.\n" + "\nBeneficio:\n" + "\nDescuento del 15% al 30% en los tratamientos odontológicos. Limpieza facial 2 x 1 $50.000.\n" + "Spa por persona 105.000.\n" +
                "Spa para dos $195.000.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" +
                " \n" + "\nContacto:\n" + "\nCl. 9 #40 - 19 / Movil 300 433 5052 / Tel. (2) 315 6337\n" + "Álvaro Jose Alemán - Propietario / e-mail: clinicaodontologicaa.h@hotmail.com\n"
            var image = UIImage(named:"dentah")!
            var phone = "3004335052"
            var mail = "clinicaodontologicaa.h@hotmail.com"
            var latitude = "3.423763"
            var longitude = "-76.544947"
        }
        
        let groupCali13 = GroupCali13()
        
        struct GroupCali14 {
            var title = "Elyon"
            var description = "Lentes progresivos en todas las gamas, lentes transitions y antirreflejo"
            var descriptionDetail = "Actividad:\n" + "\nOfrecemos a nuestros clientes, lentes progresivos en todas las gamas, lentes transitions y antirreflejo, en tallas convencionales y digitales.\n" +
                "Monturas de Sol y Oftalmológicas.\n" + "\nBeneficio:\n" + "\nDescuento 15% en todos los productos y servicios. Descuento del 20% en el mes de cumpleaños. Descuentos aplicables a familiares del afiliado.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" +
                "Se debre presentar el documento de identificación para aplicar al descuento de cumpleaños.\n" + "\nContacto:\n" + "\nMovil 304 588 9191 - 317 377 9733\n" +
            "Maria del Socorro Panesso - Administradora / e-mail: opticaelyon@gmail.com\n"
            var image = UIImage(named:"elion")!
            var phone = "3045889191"
            var mail = "opticaelyon@gmail.com"
            var latitude = "#"
            var longitude = "#"
        }
        
        let groupCali14 = GroupCali14()
        
        struct GroupCali15 {
            var title = "OptiColor"
            var description = "Compra y venta de gafas, lentes de contacto"
            var descriptionDetail = "Actividad:\n" + "\nCompra y venta de gafas, lentes de contacto y todo lo relacionado a la salud visual,\n" +
                "exámen de optometría y terapias.\n" + "\nBeneficio:\n" + "\nDescuento del 20% en lentes monofocales y bifocales.\n" +
                "Descuento del 10% en lentes especiales.\n" +
                "Descuento del 15% en monturas de $100.000 en adelante.\n" +
                "Valoración y consulta $12.000, se obsequia si se compran las gafas en la óptica.\n" +
                "Certificados estudiantiles o laborales $16.000.\n" +
                "Para las empresas que sean miembros del Club Recordar, venta y adaptación de\n" +
                "gafas de seguridad formuladas.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" +
                "Estos descuentos aplican con pago en efectivo.\n" + "\nContacto:\n" + "\nTel. (2) 402 9523 - 403 5006\n" +
                "Ext. 101 (Para Solicitud de citas los afiliados)\n" +
                "Ext. 108 (Para empresas, brigadas de salud visual)\n" +
            "Julio Jimenez / Movil 313 661 2550 / e-mail: ventas1@opticolorbg.com\n"
            var image = UIImage(named:"opti")!
            var phone = "3136612550"
            var mail = "ventas1@opticolorbg.com"
            var latitude = "3.465360"
            var longitude = "-76.528561"
        }
        
        let groupCali15 = GroupCali15()
        
        struct GroupCali16 {
            var title = "Hotel Torre de Cali"
            var description = "Hoteliría. Nuestra felicidad es permanecer en el corazón de nuestros huéspedes y visitantes"
            var descriptionDetail = "Actividad:\n" + "\nHoteliría. Nuestra felicidad es permanecer en el corazón de nuestros huéspedes y visitantes, al satisfacer sus deseos con amor, calidez, amabilidad, seguridad y servicio de excelente calidad\n" + "\nBeneficio:\n" + "\n Plan Básico Alojamiento $130.000 incluye desayuno.\n" +
                "Plan Romántico $160.000.\n" + "Descuento para empresas: 5% descuento en alimentos; 10% descuento en alquiler de salones.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación.\n" + "\nContacto:\n" + "\nwww.hoteltorredecali.com\n" +
                "PBX (2) 683 3535 - 667 4949\n" +
            "Departamento de reservas / e-mail: reservas@hoteltorredecali.com\n"
            var image = UIImage(named:"torre")!
            var phone = "317 364 5146"
            var mail = "reservas@hoteltorredecali.com"
            var latitude = "3.459010"
            var longitude = "-76.528985"
        }
        
        let groupCali16 = GroupCali16()
        
        struct GroupCali17 {
            var title = "Korin Tours"
            var description = "reamos su plan de turismo de acuerdo a su presupuesto"
            var descriptionDetail = "Actividad:\n" + "\nCreamos su plan de turismo de acuerdo a su presupuesto.\n" + "\nBeneficio:\n" + "\n Descuento del 7% en planes terrestres y aéreos, antes de impuestos.\n" +  "\n Condiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación. Reservar con 8 días de anticipación..\n" + "\nContacto:\n" + "\nwww.korintours.com\n" +
            "Tel. (2) 650 4023 - 668 0433 Movil 315 821 2196 Ricardo Idarraga / e-mail: gerencia@korintours.com\n"
            var image = UIImage(named:"korin")!
            var phone = "0326504023"
            var mail = "gerencia@korintours.com"
            var latitude = "3.459696"
            var longitude = "-76.529258"
        }
        
        let groupCali17 = GroupCali17()
        
        struct GroupCali18 {
            var title = "Lago grande"
            var description = "Prestacion de servicios hoteleros, pasadías, eventos y recreación"
            var descriptionDetail = "Actividad:\n" + "\nPrestacion de servicios hoteleros, pasadías, eventos y recreación en general.\n" + "\nBeneficio:\n" + "\n25% de descuento en planes de alojamiento de lunes a viernes.\n" +
                "12% de descuento en planes de alojamiento sabados y domingos.\n" +
                "10% de descuento en restaurante y en planes de pasadía sencillo y todo incluido. 9% de descuento en planes de alojamiento en festivos.\n" + "\nCondiciones y Restricciones:\n" + "\nPresentar el carnet del Club Recordar y el documento de identificación. Reservar con 8 días de anticipación.\n" + "\nContacto:\n" + "\nwww.lagograndehotel.com.\n" +
            "Oficina: Cra. 100 15-132 Cali / Teléfono (2) 379 9669 / Móvil 313 589 5222 Veronica Toro / E-mail: reservas@lagograndehotel.com comercial@lagograndehotel.com.\n";
            
            var image = UIImage(named:"lago")!
            var phone = "3135895222"
            var mail = "reservas@lagograndehotel.com"
            var latitude = "3.459696"
            var longitude = "-76.529258"
        }
        
        let groupCali18 = GroupCali18()
        
        
        let itemCali1 = CaliModel(title: groupCali1.title, description: groupCali1.description, descriptionDetail: groupCali1.descriptionDetail, image: groupCali1.image , phone: groupCali1.phone, mail: groupCali1.mail, latitude: groupCali1.latitude as NSString, longitude: groupCali1.longitude as NSString)
        
        let itemCali2 = CaliModel(title: groupCali2.title, description: groupCali2.description, descriptionDetail: groupCali2.descriptionDetail, image: groupCali2.image , phone: groupCali2.phone, mail: groupCali2.mail, latitude: groupCali2.latitude as NSString, longitude: groupCali2.longitude as NSString)
        
        let itemCali3 = CaliModel(title: groupCali3.title, description: groupCali3.description, descriptionDetail: groupCali3.descriptionDetail, image: groupCali3.image , phone: groupCali3.phone, mail: groupCali3.mail, latitude: groupCali3.latitude as NSString, longitude: groupCali3.longitude as NSString)
        
        let itemCali4 = CaliModel(title: groupCali4.title, description: groupCali4.description, descriptionDetail: groupCali4.descriptionDetail, image: groupCali4.image , phone: groupCali4.phone, mail: groupCali4.mail, latitude: groupCali4.latitude as NSString, longitude: groupCali4.longitude as NSString)
        
        let itemCali5 = CaliModel(title: groupCali5.title, description: groupCali5.description, descriptionDetail: groupCali5.descriptionDetail, image: groupCali5.image , phone: groupCali5.phone, mail: groupCali5.mail, latitude: groupCali5.latitude as NSString, longitude: groupCali5.longitude as NSString)
        
        let itemCali6 = CaliModel(title: groupCali6.title, description: groupCali6.description, descriptionDetail: groupCali6.descriptionDetail, image: groupCali6.image , phone: groupCali6.phone, mail: groupCali6.mail, latitude: groupCali6.latitude as NSString, longitude: groupCali6.longitude as NSString)
        
        let itemCali7 = CaliModel(title: groupCali7.title, description: groupCali7.description, descriptionDetail: groupCali7.descriptionDetail, image: groupCali7.image , phone: groupCali7.phone, mail: groupCali7.mail, latitude: groupCali7.latitude as NSString, longitude: groupCali7.longitude as NSString)
        
        let itemCali8 = CaliModel(title: groupCali8.title, description: groupCali8.description, descriptionDetail: groupCali8.descriptionDetail, image: groupCali8.image , phone: groupCali8.phone, mail: groupCali8.mail, latitude: groupCali8.latitude as NSString, longitude: groupCali8.longitude as NSString)
        
        let itemCali9 = CaliModel(title: groupCali9.title, description: groupCali9.description, descriptionDetail: groupCali9.descriptionDetail, image: groupCali9.image , phone: groupCali9.phone, mail: groupCali9.mail, latitude: groupCali9.latitude as NSString, longitude: groupCali9.longitude as NSString)
        
        let itemCali10 = CaliModel(title: groupCali10.title, description: groupCali10.description, descriptionDetail: groupCali10.descriptionDetail, image: groupCali10.image , phone: groupCali10.phone, mail: groupCali10.mail, latitude: groupCali10.latitude as NSString, longitude: groupCali10.longitude as NSString)
        
        let itemCali11 = CaliModel(title: groupCali11.title, description: groupCali11.description, descriptionDetail: groupCali11.descriptionDetail, image: groupCali11.image , phone: groupCali11.phone, mail: groupCali11.mail, latitude: groupCali11.latitude as NSString, longitude: groupCali11.longitude as NSString)
        
        let itemCali12 = CaliModel(title: groupCali12.title, description: groupCali12.description, descriptionDetail: groupCali12.descriptionDetail, image: groupCali12.image , phone: groupCali12.phone, mail: groupCali12.mail, latitude: groupCali12.latitude as NSString, longitude: groupCali12.longitude as NSString)
        
        let itemCali13 = CaliModel(title: groupCali13.title, description: groupCali13.description, descriptionDetail: groupCali13.descriptionDetail, image: groupCali13.image , phone: groupCali13.phone, mail: groupCali13.mail, latitude: groupCali13.latitude as NSString, longitude: groupCali13.longitude as NSString)
        
        let itemCali14 = CaliModel(title: groupCali14.title, description: groupCali14.description, descriptionDetail: groupCali14.descriptionDetail, image: groupCali14.image , phone: groupCali14.phone, mail: groupCali14.mail, latitude: groupCali14.latitude as NSString, longitude: groupCali14.longitude as NSString)
        
        let itemCali15 = CaliModel(title: groupCali15.title, description: groupCali15.description, descriptionDetail: groupCali15.descriptionDetail, image: groupCali15.image , phone: groupCali15.phone, mail: groupCali15.mail, latitude: groupCali15.latitude as NSString, longitude: groupCali15.longitude as NSString)
        
        let itemCali16 = CaliModel(title: groupCali16.title, description: groupCali16.description, descriptionDetail: groupCali16.descriptionDetail, image: groupCali16.image , phone: groupCali16.phone, mail: groupCali16.mail, latitude: groupCali16.latitude as NSString, longitude: groupCali16.longitude as NSString)
        
        let itemCali17 = CaliModel(title: groupCali17.title, description: groupCali17.description, descriptionDetail: groupCali17.descriptionDetail, image: groupCali17.image , phone: groupCali17.phone, mail: groupCali17.mail, latitude: groupCali17.latitude as NSString, longitude: groupCali17.longitude as NSString)
        
        let itemCali18 = CaliModel(title: groupCali18.title, description: groupCali18.description, descriptionDetail: groupCali18.descriptionDetail, image: groupCali18.image , phone: groupCali18.phone, mail: groupCali18.mail, latitude: groupCali18.latitude as NSString, longitude: groupCali18.longitude as NSString)
        
        
        
        caliLists.append(itemCali1)
        caliLists.append(itemCali2)
        caliLists.append(itemCali3)
        caliLists.append(itemCali4)
        caliLists.append(itemCali5)
        caliLists.append(itemCali6)
        caliLists.append(itemCali7)
        caliLists.append(itemCali8)
        caliLists.append(itemCali9)
        caliLists.append(itemCali10)
        caliLists.append(itemCali11)
        caliLists.append(itemCali12)
        caliLists.append(itemCali13)
        caliLists.append(itemCali14)
        caliLists.append(itemCali15)
        caliLists.append(itemCali16)
        caliLists.append(itemCali17)
        caliLists.append(itemCali18)
        
        tableCaliMain.delegate = self
        tableCaliMain.dataSource = self
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "caliData", for: indexPath) as? CaliCell{
            
            let caliList = caliLists[indexPath.row]
            
            cell.updateUI(caliModel: caliList)
            
            return cell
        }else{
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return caliLists.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let caliModel = caliLists[indexPath.row]
        switch(indexPath.row){
        case 0:
            self.performSegue(withIdentifier: "detailCali", sender: caliModel)
        case 1:
            self.performSegue(withIdentifier: "detailCali", sender: caliModel)
        case 2:
            self.performSegue(withIdentifier: "detailCali", sender: caliModel)
        case 3:
            self.performSegue(withIdentifier: "detailCali", sender: caliModel)
        case 4:
            self.performSegue(withIdentifier: "detailCali", sender: caliModel)
        case 5:
            self.performSegue(withIdentifier: "detailCali", sender: caliModel)
        case 6:
            self.performSegue(withIdentifier: "detailCali", sender: caliModel)
        case 7:
            self.performSegue(withIdentifier: "detailCali", sender: caliModel)
        case 8:
            self.performSegue(withIdentifier: "detailCali", sender: caliModel)
        case 9:
            self.performSegue(withIdentifier: "detailCali", sender: caliModel)
        case 10:
            self.performSegue(withIdentifier: "detailCali", sender: caliModel)
        case 11:
            self.performSegue(withIdentifier: "detailCali", sender: caliModel)
        case 12:
            self.performSegue(withIdentifier: "detailCali", sender: caliModel)
        case 13:
            self.performSegue(withIdentifier: "detailCali", sender: caliModel)
        case 14:
            self.performSegue(withIdentifier: "detailCali", sender: caliModel)
        case 15:
            self.performSegue(withIdentifier: "detailCali", sender: caliModel)
        case 16:
            self.performSegue(withIdentifier: "detailCali", sender: caliModel)
        case 17:
            self.performSegue(withIdentifier: "detailCali", sender: caliModel)
            
        default:
            print("nada")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? DetailCaliViewController{
            
            if let cali = sender as? CaliModel{
                destination.caliData = cali
            }
        }
    }
    
}
