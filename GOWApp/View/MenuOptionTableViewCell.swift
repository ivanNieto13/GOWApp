//
//  MenuOptionTableViewCell.swift
//  GOWApp
//
//  Created by Ivan Nieto on 09/09/22.
//

import UIKit

class MenuOptionTableViewCell: UITableViewCell {

    @IBOutlet var menuOptionImage: UIImageView!
    @IBOutlet var menuOptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
