//
//  CartagenaCell.swift
//  clubrecordarios
//
//  Created by willians on 6/12/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit

class CartagenaCell: UITableViewCell {
    
    @IBOutlet weak var descriptionCartagenaMain: UILabel!
    @IBOutlet weak var imageCartagenaMain: UIImageView!
    @IBOutlet weak var cartagenaCardView: UIView!
    
    @IBOutlet weak var titleCartagenaMain: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(cartagenaModel: CartagenaModel){
        
        titleCartagenaMain.text = cartagenaModel.title
        
        imageCartagenaMain.image = cartagenaModel.image
        
        descriptionCartagenaMain.text = cartagenaModel.description
        
        cartagenaCardView.backgroundColor = UIColor.white
        
        contentView.backgroundColor = UIColor(red:240/255.0, green: 240/255.0, blue: 240/255.0, alpha:1.0)
        
        cartagenaCardView.layer.cornerRadius = 3.0
        
        cartagenaCardView.layer.masksToBounds = false
        
        
        cartagenaCardView.layer.shadowColor = UIColor.black.withAlphaComponent(0.5).cgColor
        
        cartagenaCardView.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        cartagenaCardView.layer.shadowOpacity = 0.8
        
    }

}
