//
//  MovieTableViewCell.swift
//  SeSAC tableView
//
//  Created by 이승현 on 2023/07/30.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    static let identifier = "MovieTableViewCell"
    
    @IBOutlet var movieImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subLabel: UILabel!
    @IBOutlet var runtimeLabel: UILabel!
    @IBOutlet var rateLabel: UILabel!
    @IBOutlet var infoLabel: UILabel!
    
    
    func configureCell(row: Movie) {
        
        titleLabel.text = row.title
        subLabel.text = row.releaseDate
        runtimeLabel.text = row.runtime
        infoLabel.text = row.overview
        rateLabel.text = row.rate
        
    }
    
    func imageMatching(movieTitle: String, imageView: UIImageView) {
        if titleLabel.text == "암살" {
            movieImage.image = UIImage(named: "암살")
        } else if titleLabel.text == "명량" {
            movieImage.image = UIImage(named: "명량")
        } else if titleLabel.text == "광해" {
            movieImage.image = UIImage(named: "광해")
        } else if titleLabel.text == "부산행" {
            movieImage.image = UIImage(named: "부산행")
        } else if titleLabel.text == "아바타" {
            movieImage.image = UIImage(named: "아바타")
        } else if titleLabel.text == "어벤져스엔드게임" {
            movieImage.image = UIImage(named: "어벤져스엔드게임")
        } else if titleLabel.text == "해운대" {
            movieImage.image = UIImage(named: "해운대")
        } else if titleLabel.text == "7번방의선물" {
            movieImage.image = UIImage(named: "7번방의선물")
        } else if  titleLabel.text == "겨울왕국2" {
            movieImage.image = UIImage(named: "겨울왕국2")
        }
    }
}
