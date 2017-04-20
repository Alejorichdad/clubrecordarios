//
//  CaliCell.swift
//  clubrecordarios
//
//  Created by willians on 5/12/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit

class CaliCell: UITableViewCell {
    
    @IBOutlet weak var descriptionCaliMain: UILabel!
    @IBOutlet weak var imageCaliMain: UIImageView!
    @IBOutlet weak var caliCardView: UIView!

    @IBOutlet weak var titleCaliMain: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateUI(caliModel: CaliModel){
        
        titleCaliMain.text = caliModel.title
        
        imageCaliMain.image = caliModel.image
        
        descriptionCaliMain.text = caliModel.description
        
        caliCardView.backgroundColor = UIColor.white
        
        contentView.backgroundColor = UIColor(red:240/255.0, green: 240/255.0, blue: 240/255.0, alpha:1.0)
        
        caliCardView.layer.cornerRadius = 3.0
        
        caliCardView.layer.masksToBounds = false
        
        
        caliCardView.layer.shadowColor = UIColor.black.withAlphaComponent(0.5).cgColor
        
        caliCardView.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        caliCardView.layer.shadowOpacity = 0.8
        
    }

}
