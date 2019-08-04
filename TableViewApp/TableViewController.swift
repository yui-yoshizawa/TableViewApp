//
//  TableViewController.swift
//  TableViewApp
//
//  Created by 吉澤優衣 on 2019/08/04.
//  Copyright © 2019 吉澤優衣. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    // 画面内に表示するニュースタイトルを入れています。
    
    var category: String = ""
    var news: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = category  // 名前


    }

    // MARK: - Table view data source

    // セクションの数を指定 (最初から作られてた。return 0 を 1 に変更)
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    // セルの数を指定 (最初から作られてた。return 0 を return news.count にして要素の数を指定)
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return news.count    // ニュースの数だけセルを作る
    }

    
    
    
    // セルの操作 (最初から作られてた。セルの名前で紐付ける。コメント外し、Identifier を NewsCell に変更。"NewsCell"は3つ目のCellの名前。)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NewsCell", for: indexPath)

        // 
        cell.textLabel?.text = news[indexPath.row]    // 後から追加。?わからん?

        return cell
    }
    
    

    
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
