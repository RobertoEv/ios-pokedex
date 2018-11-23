//
//  PokeDetailTableViewCell.swift
//  pokedex
//
//  Created by Roberto Evangelista da Silva Filho on 23/11/2018.
//  Copyright © 2018 Roberto Evangelista da Silva Filho. All rights reserved.
//

import UIKit

class PokeDetailTableViewCell: UITableViewCell {
    
    @IBOutlet weak var pkmImage: UIImageView!
    @IBOutlet weak var pkmName: UILabel!
    @IBOutlet weak var pkmDescription: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
