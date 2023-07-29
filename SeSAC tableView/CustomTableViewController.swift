//
//  CustomTableViewController.swift
//  SeSAC tableView
//
//  Created by 이승현 on 2023/07/28.
//

import UIKit


class CustomTableViewController: UITableViewController {
    
    let todo = ToDoInformation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 80
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todo.list.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell.identifier") as! CustomTableViewCell
        let row = todo.list[indexPath.row]
        
        // Controller에 있던 UI 코드들 Cell로 뺴기
        cell.configureCell(row: row)
        
        return cell
    }
    
    // 셀 선택
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }
}


//import UIKit
//
//struct ToDo {
//    var main: String
//    var sub: String
//    var like: Bool
//    var done: Bool
//}
//
//struct ToDoInformation {
//        var list = [ ToDo(main: "잠자기", sub: "23.07.03", like: false, done: true),
//                     ToDo(main: "영화보기", sub: "23.07.30", like: true, done: false),
//                     ToDo(main: "장보기", sub: "23.08.13", like: false, done: false)]
//}
//
//class CustomTableViewController: UITableViewController {
//
//    var list = [ToDo(main: "잠자기", sub: "23.07.03", like: false, done: true),
//                ToDo(main: "영화보기", sub: "23.07.30", like: true, done: false),
//                ToDo(main: "장보기", sub: "23.08.13", like: false, done: false)]
////    var sublist = ["오늘까지", "내일까지", "주말까지"]
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        tableView.rowHeight = 80
//    }
//
//
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//
//        return list.count
//    }
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell") as! CustomTableViewCell
//        let row = list[indexPath.row]
//
//        let row = list[indexPath.row]
//        cell.configureCell(row: row)
//
//        return cell
//
////        cell.mainTitleLabel.text = list[indexPath.row].main
////        cell.subTitleLabel.text = list[indexPath.row].sub //sublist[indexPath.row]
//
//
////        if row.done {
////            cell.checkboxImageView.image = UIImage(systemName:  "checkmark.square.fill")
////        } else {
////            cell.checkboxImageView.image = UIImage(systemName: "checkmark.square")
////        }
////
////        if row.like {
////            cell.likeButton.setImage(UIImage(systemName:  "star.fill"), for: .normal)
////        } else {
////            cell.likeButton.setImage(UIImage(systemName:  "star"), for: .normal)
////        }
////
////
//
////        cell.checkboxImageView.image = row.done = true ? UIImage(systemName: "checkmark.fll") : UIImage(systemName: "checkmark.square")
////
////
////
////        cell.checkboxImageView.image = UIImage(systemName: "checkmark.square.fill")
////    } else {
////
////        cell.likeButton.setImage(UIImage(systemName: "star"), for: .normal)
////        return cell
////    }
//
//    //3. 셀 선택
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print(indexPath)
//    }
//
//}
