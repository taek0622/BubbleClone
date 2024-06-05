//
//  FriendsTableViewCell.swift
//  BubbleClone
//
//  Created by 김민택 on 6/5/24.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {

    static let identifier = "FriendsTableViewCell"

    private lazy var thumbnailImageView: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UIImageView())

    private lazy var profileName: UILabel = {
        $0.text = ""
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())

    private lazy var statusMessage: UILabel = {
        $0.text = ""
        $0.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(UILabel())

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
