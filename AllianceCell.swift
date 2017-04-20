//
//  AllianceCell.swift
//  clubrecordarios
//
//  Created by willians on 28/11/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit

class AllianceCell: UITableViewCell {

    @IBOutlet weak var descriptionAllianceMain: UILabel!
    @IBOutlet weak var imageAllianceMain: UIImageView!
    @IBOutlet weak var allianceCardView: UIView!
    @IBOutlet weak var titleAllianceMain: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    func updateUI(allianceModel: AllianceModel){
        
        titleAllianceMain.text = allianceModel.title
        
        imageAllianceMain.image = allianceModel.image
        
       descriptionAllianceMain.text = allianceModel.description
        
        allianceCardView.backgroundColor = UIColor.white
        
        contentView.backgroundColor = UIColor(red:240/255.0, green: 240/255.0, blue: 240/255.0, alpha:1.0)
        
        allianceCardView.layer.cornerRadius = 3.0
        
        allianceCardView.layer.masksToBounds = false
        
        
        allianceCardView.layer.shadowColor = UIColor.black.withAlphaComponent(0.5).cgColor
        
        allianceCardView.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        allianceCardView.layer.shadowOpacity = 0.8
        
    }


}
