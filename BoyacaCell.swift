//
//  BoyacaCell.swift
//  clubrecordarios
//
//  Created by willians on 2/12/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit

class BoyacaCell: UITableViewCell {
    
    @IBOutlet weak var descriptionBoyacaMain: UILabel!
    @IBOutlet weak var imageBoyacaMain: UIImageView!
    @IBOutlet weak var boyacaCardView: UIView!
    
    @IBOutlet weak var titleBoyacaMain: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateUI(boyacaModel: BoyacaModel){
        
        titleBoyacaMain.text = boyacaModel.title
        
        imageBoyacaMain.image = boyacaModel.image
        
        descriptionBoyacaMain.text = boyacaModel.description
        
        boyacaCardView.backgroundColor = UIColor.white
        
        contentView.backgroundColor = UIColor(red:240/255.0, green: 240/255.0, blue: 240/255.0, alpha:1.0)
        
        boyacaCardView.layer.cornerRadius = 3.0
        
        boyacaCardView.layer.masksToBounds = false
        
        
        boyacaCardView.layer.shadowColor = UIColor.black.withAlphaComponent(0.5).cgColor
        
        boyacaCardView.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        boyacaCardView.layer.shadowOpacity = 0.8
        
    }

}
