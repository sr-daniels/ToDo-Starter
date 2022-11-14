//
//  AppearanceTableViewCell.swift
//  ToDo
//
//  Created by Sharonda Daniels on 11/14/22.
//

import UIKit

class AppearanceTableViewCell: UITableViewCell {

    @IBOutlet weak var itemName: UILabel!
    @IBOutlet weak var itemDate: UILabel!
    @IBOutlet weak var completeButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
