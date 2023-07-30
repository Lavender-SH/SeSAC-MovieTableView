//
//  MovieTableViewCell.swift
//  SeSAC tableView
//
//  Created by 이승현 on 2023/07/30.
//

import UIKit

class MovieTableViewCell: UITableViewCell {
    
    // 타입 속성
    // 속성
    // init
    // override
    
    // MARK: - UIProperties
    
    @IBOutlet var movieImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var subLabel: UILabel!
    @IBOutlet var runtimeLabel: UILabel!
    @IBOutlet var rateLabel: UILabel!
    @IBOutlet var infoLabel: UILabel!
    
    // MARK: - Override Methods
    
    override class func awakeFromNib() {
        super.awakeFromNib()
        print(#function)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        print(#function)
    }
}

extension MovieTableViewCell {
    
    // MARK: - Configuration Methods
    
    /// 셀을 구성하는 함수
    /// - Parameter row: 셀을 구성할 무비 데이터
    func configureCell(row: Movie) {
        titleLabel.text = row.title
        subLabel.text = row.releaseDate
        runtimeLabel.text = row.runtime + "분"
        infoLabel.text = row.overview
        rateLabel.text = row.rate
    }
    
    /// 타이틀 레이블의 텍스트를 movieTitle과 비교하여 일치하는 이미지로 이미지 뷰를 구성
    /// - Parameters:
    ///   - movieTitle: 이미지 파일 제목과 일치하는 제목
    func imageMatching(movieTitle: String) {
        if titleLabel.text == "암살" {
            self.movieImage.image = UIImage(named: "암살")
        } else if titleLabel.text == "명량" {
            self.movieImage.image = UIImage(named: "명량")
        } else if titleLabel.text == "광해" {
            self.movieImage.image = UIImage(named: "광해")
        } else if titleLabel.text == "부산행" {
            self.movieImage.image = UIImage(named: "부산행")
        } else if titleLabel.text == "아바타" {
            self.movieImage.image = UIImage(named: "아바타")
        } else if titleLabel.text == "어벤져스엔드게임" {
            self.movieImage.image = UIImage(named: "어벤져스엔드게임")
        } else if titleLabel.text == "해운대" {
            self.movieImage.image = UIImage(named: "해운대")
        } else if titleLabel.text == "7번방의선물" {
            self.movieImage.image = UIImage(named: "7번방의선물")
        } else if  titleLabel.text == "겨울왕국2" {
            self.movieImage.image = UIImage(named: "겨울왕국2")
        }
    }
}
