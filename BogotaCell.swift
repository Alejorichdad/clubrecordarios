//
//  BogotaCell.swift
//  clubrecordarios
//
//  Created by willians on 1/12/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit

class BogotaCell: UITableViewCell {
    
    @IBOutlet weak var descriptionBogotaMain: UILabel!
    @IBOutlet weak var imageBogotaMain: UIImageView!
    @IBOutlet weak var BogotaCardView: UIView!
    
    @IBOutlet weak var titleBogotaMain: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func updateUI(bogotaModel: BogotaModel){
        
        titleBogotaMain.text = bogotaModel.title
        
        imageBogotaMain.image = bogotaModel.image
        
        descriptionBogotaMain.text = bogotaModel.description
        
        BogotaCardView.backgroundColor = UIColor.white
        
        contentView.backgroundColor = UIColor(red:240/255.0, green: 240/255.0, blue: 240/255.0, alpha:1.0)
        
        BogotaCardView.layer.cornerRadius = 3.0
        
        BogotaCardView.layer.masksToBounds = false
        
        
        BogotaCardView.layer.shadowColor = UIColor.black.withAlphaComponent(0.5).cgColor
        
        BogotaCardView.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        BogotaCardView.layer.shadowOpacity = 0.8
        
    }

}
