//
//  NationalCell.swift
//  clubrecordarios
//
//  Created by willians on 29/11/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit

class NationalCell: UITableViewCell {
    
    @IBOutlet weak var descriptionNationalMain: UILabel!
    @IBOutlet weak var imageNationalMain: UIImageView!
    @IBOutlet weak var nationalCardView: UIView!

    @IBOutlet weak var titleNationalMain: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func updateUI(nationalModel: NationalModel){
        
        titleNationalMain.text = nationalModel.title
        
        imageNationalMain.image = nationalModel.image
        
        descriptionNationalMain.text = nationalModel.description
        
        nationalCardView.backgroundColor = UIColor.white
        
        contentView.backgroundColor = UIColor(red:240/255.0, green: 240/255.0, blue: 240/255.0, alpha:1.0)
        
        nationalCardView.layer.cornerRadius = 3.0
        
        nationalCardView.layer.masksToBounds = false
        
        
        nationalCardView.layer.shadowColor = UIColor.black.withAlphaComponent(0.5).cgColor
        
        nationalCardView.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        nationalCardView.layer.shadowOpacity = 0.8
        
    }
}
