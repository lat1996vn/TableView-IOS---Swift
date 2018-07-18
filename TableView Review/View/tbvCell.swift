//
//  tbvCell.swift
//  TableView Review
//
//  Created by LTT on 7/16/18.
//  Copyright © 2018 LTT. All rights reserved.
//

import UIKit

class tbvCell: UITableViewCell {

    @IBOutlet weak var imgFootballPlayer: UIImageView!
    @IBOutlet weak var lblPlayerName: UILabel!
    @IBOutlet weak var lblPlayerAge: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateUI(player: Player) {
        imgFootballPlayer.image = UIImage(named: player.playerImage)
        lblPlayerName.text = player.playerName
        lblPlayerAge.text = player.playerAge
    }

}
