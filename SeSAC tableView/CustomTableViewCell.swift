//
//  CustomTableViewCell.swift
//  SeSAC tableView
//
//  Created by 이승현 on 2023/07/28.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    static let identifier = "CustomTableViewCell"


    @IBOutlet var backView: UIView!
    @IBOutlet var checkboxImageView: UIImageView!
    
    @IBOutlet var mainTitleLabel: UILabel!
    @IBOutlet var subTitleLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    
    func configureCell(row: ToDo) {
        mainTitleLabel.text = row.main
        subTitleLabel.text = row.sub
        
        checkboxImageView.image = row.done ? UIImage(systemName: "checkmark.square.fill") : UIImage(systemName: "checkmark.square")
        
        var likeImage: UIImage?
        likeImage = row.like ? UIImage(systemName: "star.fill") : UIImage(systemName: "star")
        likeButton.setImage(likeImage, for: .normal)
    }
}
