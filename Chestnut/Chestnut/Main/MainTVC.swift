//
//  MainVCTableViewController.swift
//  Chestnut
//
//  Created by 吳政賢 on 2018/6/7.
//  Copyright © 2018年 吳政賢. All rights reserved.
//

import UIKit

class MainTVC: UITableViewController, MainCellDelegate {
    
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
        self.tableView.allowsSelection = false;
        

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

    
    func showAddress(cell: MainCell) {
        guard (tableView.indexPath(for: cell)?.row) != nil else { return }
        
//        let mapVc = UIViewController();
//        mapVc.view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)

  
//        let right = UIBarButtonItem();
//        right.title = "關閉";
//        mapVc.navigationController?.navigationItem.rightBarButtonItem = right;
//        mapVc.navigationItem.rightBarButtonItem = UIBarButtonItem(
//            title:"設定" ,
//            style:.Plain ,
//            target:self ,
//            action: #selector(mapVc.close))
        
        
        
        self.present (UINavigationController (rootViewController: MainMapsVC ()), animated: true, completion: nil);

//        mapVc.root
        
//        let alert = UIAlertController(title: "title", message: "message",
//                                      preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "确定", style: .cancel))
//        let vc = ViewController();
////        vc.
//        self.present(vc, animated: true)
//        let vc = ViewController();
//        self.window?.rootViewController?.present(vc, animated: true, completion: nil)
//        self.parent?.present(vc, animated: true, completion: nil);
        
//        self.navigationController?.pushViewController(vc, animated: true);
//        self.presentedViewController = vc;
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        var cell = tableView.dequeueReusableCell(withIdentifier: "Cxx") as? MainCell
        
        if cell == nil {
            cell = MainCell.init(style: .default, reuseIdentifier: "Cxx");
            cell?.initUI (str: self.datas[indexPath.row]);
            cell?.delegate = self;
        }
        
        return cell!;
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 136;
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
