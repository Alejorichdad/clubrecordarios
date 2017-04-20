//
//  RecordarCell.swift
//  clubrecordarios
//
//  Created by willians on 27/11/16.
//  Copyright © 2016 clubrecordar. All rights reserved.
//

import UIKit

class RecordarCell: UITableViewCell {
    @IBOutlet weak var titleMain: UILabel!

    @IBOutlet weak var mainDescription: UILabel!
    @IBOutlet weak var recordarImage: UIImageView!
    @IBOutlet weak var recordarCardView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func updateUI(mainModel: MainModel){
        
        titleMain.text = mainModel.title
        
        recordarImage.image = mainModel.image
        
        mainDescription.text = mainModel.description
        
        recordarCardView.backgroundColor = UIColor.white
        
        contentView.backgroundColor = UIColor(red:240/255.0, green: 240/255.0, blue: 240/255.0, alpha:1.0)
        
        recordarCardView.layer.cornerRadius = 3.0
        
        recordarCardView.layer.masksToBounds = false
        
        
        recordarCardView.layer.shadowColor = UIColor.black.withAlphaComponent(0.5).cgColor
        
        recordarCardView.layer.shadowOffset = CGSize(width: 0, height: 0)
        
        recordarCardView.layer.shadowOpacity = 0.8
        
    }

}
