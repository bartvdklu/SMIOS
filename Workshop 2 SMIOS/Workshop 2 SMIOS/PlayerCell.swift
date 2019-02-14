//
//  PlayerCell.swift
//  Workshop 2 SMIOS
//
//  Created by Bart van de Klundert on 14/02/2019.
//  Copyright © 2019 Bart van de Klundert. All rights reserved.
//

import UIKit

class PlayerCell: UITableViewCell {
    
    // MARK: - IBOutlets
    @IBOutlet weak var gameLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ratingImageView: UIImageView!
    
    // MARK: - Properties
    var player: Player? {
        didSet {
            guard let player = player else { return }
            
            gameLabel.text = player.game
            nameLabel.text = player.name
            ratingImageView.image = image(forRating: player.rating)
        }
    }

    func image(forRating rating: Int) -> UIImage? {
        let imageName = "\(rating)Stars"
        return UIImage(named: imageName)
    }


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
