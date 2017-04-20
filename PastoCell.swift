//
//  PastoCell.swift
//  clubrecordarios
//
//  Created by willians on 6/12/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit

class PastoCell: UITableViewCell {
    @IBOutlet weak var descriptionPastoMain: UILabel!
    @IBOutlet weak var imagePastoMain: UIImageView!
    @IBOutlet weak var pastoCardView: UIView!
    
    @IBOutlet weak var titlePastoMain: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateUI(pastoModel: PastoModel){
        
        titlePastoMain.text = pastoModel.title
        
        imagePastoMain.image = pastoModel.image
        
        descriptionPastoMain.text = pastoModel.description
        
        pastoCardView.backgroundColor = UIColor.white
        
        contentView.backgroundColor = UIColor(red:240/255.0, green: 240/255.0, blue: 240/255.0, alpha:1.0)
        
        pastoCardView.layer.cornerRadius = 3.0
        
        pastoCardView.layer.masksToBounds = false
        
        
        pastoCardView.layer.shadowColor = UIColor.black.withAlphaComponent(0.5).cgColor
        
        pastoCardView.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        pastoCardView.layer.shadowOpacity = 0.8
        
    }

}
