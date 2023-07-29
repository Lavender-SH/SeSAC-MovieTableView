//
//  MovieTableViewController.swift
//  SeSAC tableView
//
//  Created by 이승현 on 2023/07/30.
//

import UIKit

class MovieTableViewController: UITableViewController {
    
    let Movie = MovieInformation()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        tableView.rowHeight = 80
        
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return Movie.movie.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "MovieTableViewCell.identifier") as! MovieTableViewCell
            let row = Movie.movie[indexPath.row]
            
            // Controller에 있던 UI 코드들 Cell로 뺴기
            cell.configureCell(row: row)
            //cell.imageMatching(movieTitle: "", imageView: <#T##UIImageView#>)
            
            return cell
        }
        
        // 셀 선택
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            print(indexPath.row)
        }
    }
}
