//
//  MainMapsVC.swift
//  Chestnut
//
//  Created by 吳政賢 on 2018/6/8.
//  Copyright © 2018年 吳政賢. All rights reserved.
//

import UIKit
import GoogleMaps

class MainMapsVC: UIViewController {
    @objc func close () {
        self.dismiss(animated: true, completion: nil);
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.barTintColor = UIColor(red:0.42, green:0.61, blue:0.47, alpha:1.0)
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationController?.navigationBar.barStyle = UIBarStyle.black
        self.navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        self.navigationItem.rightBarButtonItem = UIBarButtonItem (title: "確定", style: .plain, target: self, action: #selector(close))
        self.navigationItem.rightBarButtonItem?.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0);
        
        self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0);

        if let key = OATool.getPlist (fileName: "keys")["GoogleKey"] {
            GMSServices.provideAPIKey(key)

            let camera = GMSCameraPosition.camera(withLatitude: 25.048661051439602, longitude: 121.52743663260901, zoom: 13.0)
            let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
            mapView.isMyLocationEnabled = true
            self.view = mapView
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
