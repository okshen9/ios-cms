//
//  TestTableViewCell.swift
//  ios-cms
//
//  Created by artem on 23.08.2018.
//  Copyright © 2018 artem. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {

  @IBOutlet weak var textL: UILabel!
  
  override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
