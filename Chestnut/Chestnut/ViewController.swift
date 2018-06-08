//
//  ViewController.swift
//  Chestnut
//
//  Created by 吳政賢 on 2018/6/5.
//  Copyright © 2018年 吳政賢. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {
    
    @objc func aaa () {
        let vc = ViewController();
        self.present(vc, animated: true, completion: nil);
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        let button = UIButton();
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("點我", for: .normal);
        button.setTitleColor(#colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1), for: .normal)
        button.addTarget(self, action: #selector(aaa), for: .touchUpInside);
        
        self.view.addSubview(button);
        self.view.addConstraint(NSLayoutConstraint (item: button, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0))
        self.view.addConstraint(NSLayoutConstraint (item: button, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1, constant: 0))
        
        self.view.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
//        self.window!.rootViewController = nav
        
//        var keys: NSDictionary?

//        if let path = Bundle.main.path(forResource: "keys", ofType: "plist") {
//            keys = NSDictionary(contentsOfFile: path)
//            print(keys)
//        }
////
//        let myApiKey = keys?["myApiKey"] as? String ?? "{myApiKey}"
        
        
//        print("myApiKey: \(myApiKey)")
        
//        GMSServices.provideAPIKey("")
        
//        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
//        let mapView = GMSMapView.map(withFrame: CGRect.zero, camera: camera)
//        mapView.isMyLocationEnabled = true
//        view = mapView
//
//        // Creates a marker in the center of the map.
//        let marker = GMSMarker()
//        marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
//        marker.title = "Sydney"
//        marker.snippet = "Australia"
//        marker.map = mapView
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

