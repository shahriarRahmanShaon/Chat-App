//
//  ChatTableViewCell.swift
//  Chat App
//
//  Created by sergio shaon on 13/7/21.
//

import UIKit

class ChatTableViewCell: UITableViewCell {

    @IBOutlet weak var cellText: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        cellText.numberOfLines = 0
        cellText.lineBreakMode = .byWordWrapping
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
