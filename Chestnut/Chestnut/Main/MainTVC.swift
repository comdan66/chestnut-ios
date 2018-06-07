//
//  MainVCTableViewController.swift
//  Chestnut
//
//  Created by 吳政賢 on 2018/6/7.
//  Copyright © 2018年 吳政賢. All rights reserved.
//

import UIKit

class MainTVC: UITableViewController {
//    let loading = UIAlertController (title: nil, message: "讀取中..", preferredStyle: .alert)

    var loading: UIAlertController! = nil;
    var datas: [String] = [];
    
    func showLoading() {

        if loading == nil {
            self.loading = UIAlertController (title: nil, message: "讀取中..", preferredStyle: .alert)
    
            let indicator = UIActivityIndicatorView(activityIndicatorStyle: .gray)
            indicator.center = CGPoint(x: 25, y: 30)
            indicator.isUserInteractionEnabled = false
            indicator.startAnimating()
            self.loading.view.addSubview(indicator)
        }

        self.present (self.loading, animated: true, completion: nil)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear (animated)
        
        self.showLoading ();
        datas.append("111");
        datas.append("222");
        datas.append("333");
        datas.append("444");
        datas.append("555");
        
        self.tableView.reloadData();
        
        self.loading.dismiss(animated: true, completion: nil);
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.barTintColor = UIColor(red:0.42, green:0.61, blue:0.47, alpha:1.0)
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.barStyle = UIBarStyle.black
        self.navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
//        self.tableView.separatorStyle = .none;
        self.view.backgroundColor = UIColor(red:0.94, green:0.96, blue:0.95, alpha:1.0)
        
        self.tableView.register (MainCell.self, forCellReuseIdentifier: "Cell")
        

//        print(datas);
//        datas.append("111");
//        print(datas);
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.datas.count;
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
//        cell.textLabel?.text = self.datas[indexPath.row];
        
        
        // Configure the cell...

//        return cell
//        return nil;
//        self.tableView.register (UITableViewCell.self, forCellReuseIdentifier: "cell")

//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? UITableViewCell
//
//        if (cell == nil) {
//            let cell = UITableViewCell(style: .default, reuseIdentifier: "Cell")
//            cell.textLabel?.text = self.datas[indexPath.row];
////        print("~~~~~~~~~~``");
//
//        }
//initWithStyle
        
        
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath);
//        cell.textLabel?.text = self.datas[indexPath.row];
        
//        var cell = tableView.dequeueReusableCell(withIdentifier: "Cxx") as? MainCell
//        if cell == nil {
//            cell = MainCell.init(style: .default, reuseIdentifier: "Cxx");
//            cell?.initUI (str: self.datas[indexPath.row]);
//        }
//
//        if let cell = tableView.dequeueReusableCell(withIdentifier: "Cxx") as? MainCell {
//
//        }
        var cell = tableView.dequeueReusableCell(withIdentifier: "Cxx") as? MainCell
        
        if cell == nil {
            cell = MainCell.init(style: .default, reuseIdentifier: "Cxx");
            cell?.initUI (str: self.datas[indexPath.row]);
        }
        
        return cell!;
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 132;
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
