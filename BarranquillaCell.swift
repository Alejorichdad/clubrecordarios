//
//  BarranquillaCell.swift
//  clubrecordarios
//
//  Created by willians on 30/11/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit

class BarranquillaCell: UITableViewCell {
    
    @IBOutlet weak var descriptionBarranquillaMain: UILabel!
    @IBOutlet weak var imageBarranquillaMain: UIImageView!
    @IBOutlet weak var barranquillaCardView: UIView!

    @IBOutlet weak var titleBarranquillaMain: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func updateUI(barranquillaModel: BarranquillaModel){
        
        titleBarranquillaMain.text = barranquillaModel.title
        
        imageBarranquillaMain.image = barranquillaModel.image
        
        descriptionBarranquillaMain.text = barranquillaModel.description
        
        barranquillaCardView.backgroundColor = UIColor.white
        
        contentView.backgroundColor = UIColor(red:240/255.0, green: 240/255.0, blue: 240/255.0, alpha:1.0)
        
        barranquillaCardView.layer.cornerRadius = 3.0
        
        barranquillaCardView.layer.masksToBounds = false
        
        
        barranquillaCardView.layer.shadowColor = UIColor.black.withAlphaComponent(0.5).cgColor
        
        barranquillaCardView.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        barranquillaCardView.layer.shadowOpacity = 0.8
        
    }

}
