//
//  Pirate.swift
//  Workshop 3 SMIOS
//
//  Created by Bart van de Klundert on 21/02/2019.
//  Copyright © 2019 Bart van de Klundert. All rights reserved.
//

import UIKit

class PirateCell: UITableViewCell {

    @IBOutlet weak var nameLBL: UILabel!
    @IBOutlet weak var lifeLBL: UILabel!
    @IBOutlet weak var countryLBL: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
