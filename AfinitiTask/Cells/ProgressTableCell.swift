//
//  ProgressTableCell.swift
//  AfinitiTask
//
//  Created by Muhammad Suleman on 6/10/21.
//  Copyright © 2021 Muhammad Suleman. All rights reserved.
//

import UIKit

class ProgressTableCell: UITableViewCell {
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
