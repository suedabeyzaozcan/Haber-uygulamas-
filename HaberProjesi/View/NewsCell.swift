//
//  NewsCell.swift
//  HaberProjesi
//
//  Created by Sueda Beyza Özcan on 2.08.2024.
//

import UIKit

class NewsCell: UITableViewCell{
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var storyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
