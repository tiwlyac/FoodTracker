//
//  MealCell.swift
//  FoodTracker
//
//  Created by Anun Chaichomphoo on 21/6/2561 BE.
//  Copyright © 2561 KBTG. All rights reserved.
//

import UIKit

class MealCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
