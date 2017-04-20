//
//  ValleCell.swift
//  clubrecordarios
//
//  Created by willians on 6/12/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit

class ValleCell: UITableViewCell {
    @IBOutlet weak var descriptionValleMain: UILabel!
    @IBOutlet weak var imageValleMain: UIImageView!
    @IBOutlet weak var valleCardView: UIView!
    @IBOutlet weak var titleValleMain: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateUI(valleModel: ValleModel){
        
        titleValleMain.text = valleModel.title
        
        imageValleMain.image = valleModel.image
        
        descriptionValleMain.text = valleModel.description
        
        valleCardView.backgroundColor = UIColor.white
        
        contentView.backgroundColor = UIColor(red:240/255.0, green: 240/255.0, blue: 240/255.0, alpha:1.0)
        
        valleCardView.layer.cornerRadius = 3.0
        
        valleCardView.layer.masksToBounds = false
        
        
        valleCardView.layer.shadowColor = UIColor.black.withAlphaComponent(0.5).cgColor
        
        valleCardView.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        valleCardView.layer.shadowOpacity = 0.8
        
    }

}
