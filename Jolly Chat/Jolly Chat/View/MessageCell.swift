//
//  MessageCell.swift
//  Jolly Chat
//
//  Created by Hanoudi on 7/11/20.
//  Copyright © 2020 Hanan. All rights reserved.
//
//  This is our customized message bubble.

import UIKit

class MessageCell: UITableViewCell {
    
    //  Outlets
    @IBOutlet weak var messageBubble: UIView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var rightImageView: UIImageView!
    @IBOutlet weak var leftImageView: UIImageView!
    
    //  Similar to viewDidLoad
    //  MARK:- MessageCell's LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
        messageBubble.layer.cornerRadius = messageBubble.frame.size.height / 10
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
}
