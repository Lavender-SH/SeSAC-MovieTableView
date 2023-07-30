//
//  MovieTableViewController.swift
//  SeSAC tableView
//
//  Created by 이승현 on 2023/07/30.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    // MARK: - Properties
    
    let movieInfo = MovieInformation()
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}

// MARK: - UITableViewDelegate

extension MovieTableViewController {
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 148
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movieInfo.movie.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: MovieTableViewCell.self)) as? MovieTableViewCell else {
            return UITableViewCell()
        }
        
        let row = movieInfo.movie[indexPath.row]
        cell.configureCell(row: row)
        cell.imageMatching(movieTitle: row.title)
        return cell
    }
    
    // 셀 선택시 index.row를 프린트
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}

