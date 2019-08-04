//
//  BaseTableViewController.swift
//  TableViewApp
//
//  Created by 吉澤優衣 on 2019/08/04.
//  Copyright © 2019 吉澤優衣. All rights reserved.
//

import UIKit

class BaseTableViewController: UITableViewController {
    
    var category: [String] = ["速報", "芸能", "スポーツ"]
    
    var news: [[String]] =
        [["aaaa", "bbbb"],
         ["cccc", "dddd"],
         ["eeee", "ffff"]]

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

   
    
    
    // MARK: - Table view data source

     // セクションの数を指定
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    // セルの数を指定
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return category.count
    }

    // セルの操作。セルの名前で紐付け("Cell"は2つ目の画面のセルの名前)
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

       
        
        // Configure the cell...
        // category の中から一致する値をtextする
        cell.textLabel?.text = category[indexPath.row]
        
        return cell
    }
    
    // ここめっちゃ使う！
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {    // didSelectRowAt はタップしたアクションを取る。
        
        //まずは、同じstororyboard内であることをここで定義します
        let storyboard: UIStoryboard = self.storyboard!    // 覚える
        //ここで移動先のstoryboardを選択(今回の場合は先ほどsecondと名付けたのでそれを書きます)
        let second = storyboard.instantiateViewController(withIdentifier: "TableViewController") as! TableViewController    //  asでsecond の型をTableViewController に強制キャスト。
        
        // コードでやる場合の値の受け渡し
        second.category = category[indexPath.row]
        second.news = news[indexPath.row]
        
        // ここまでで値の受け渡しはできている
        
        // self.present(second, animated: true, completion: nil)    画面をしたから覆いかぶせる。透過可能
        
        // ここで画面を遷移
        self.navigationController?.pushViewController(second, animated: true)  // push の後ろにはない。
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
