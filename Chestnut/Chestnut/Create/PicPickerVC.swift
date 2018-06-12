//
//  PicPickerVC.swift
//  Chestnut
//
//  Created by 吳政賢 on 2018/6/12.
//  Copyright © 2018年 吳政賢. All rights reserved.
//

import UIKit
import Photos
import Fusuma

class PicPickerVC: UIViewController, FusumaDelegate {
    func fusumaImageSelected(_ image: UIImage, source: FusumaMode) {
        
    }
    
    func fusumaMultipleImageSelected(_ images: [UIImage], source: FusumaMode) {
        
    }
    
    func fusumaVideoCompleted(withFileURL fileURL: URL) {
        
    }
    
    func fusumaCameraRollUnauthorized() {
        
    }
    
//    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        self.title = "挑選照片"
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "取消", style: .plain, target: self, action: #selector(close))
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "下一步", style: .plain, target: self, action: #selector(nextStep))
        self.navigationItem.rightBarButtonItem?.isEnabled = false;
        self.view.backgroundColor = UIColor(red:1, green:1, blue:1, alpha:1.0)

        
        let button = UIButton();
        button.translatesAutoresizingMaskIntoConstraints = false;
        button.setTitle("點我", for: .normal);
        button.setTitleColor(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1), for: .normal)
        button.addTarget(self, action: #selector(sss), for: .touchUpInside)
        self.view.addSubview(button);

        OATool.layout(self.view, button, .centerY, .equal, self.view, .centerY, 1, 0);
        OATool.layout(self.view, button, .centerX, .equal, self.view, .centerX, 1, 0);

//        imagePicker.delegate = self;
        self.checkPermission ();
    }
    @objc func sss () {
        
//        imagePicker.allowsEditing = false
//        imagePicker.sourceType = .photoLibrary
//
//        self.present(imagePicker, animated: true, completion: nil)
        
        let fusuma = FusumaViewController()
        fusuma.delegate = self
//        fusuma.hasVideo = false //To allow for video capturing with .library and .camera available by default
        fusuma.cropHeightRatio = 1 // Height-to-width ratio. The default value is 1, which means a squared-size photo.
        fusuma.allowMultipleSelection = false // You can select multiple photos from the camera roll. The default value is false.
        self.present(fusuma, animated: true, completion: nil)

        
    }
    func checkPermission() {
        let photoAuthorizationStatus = PHPhotoLibrary.authorizationStatus()
        switch photoAuthorizationStatus {
        case .authorized:
            print("Access is granted by user")
        case .notDetermined:
            PHPhotoLibrary.requestAuthorization({
                (newStatus) in
                print("status is \(newStatus)")
                if newStatus ==  PHAuthorizationStatus.authorized {
                    /* do stuff here */
                    print("success")
                }
            })
            print("It is not determined until now")
        case .restricted:
            // same same
            print("User do not have access to photo album.")
        case .denied:
            // same same
            print("User has denied the permission.")
        }
    }
//    @objc func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
//
//
//        print("~~~~~~~~~~~~~~~~~~~~~~~~~```1");
////        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
////            print("~~~~~~~~~~~~~~~~~~~~~~~~~```");
//////            imageView.contentMode = .ScaleAspectFit
//////            imageView.image = pickedImage
////        }
////        self.dismiss(animated: true, completion: nil);
//
//    }
////    func checkPermission() {
////    let photoAuthorizationStatus = PHPhotoLibrary.authorizationStatus() switch photoAuthorizationStatus {
////    case .authorized: print("Access is granted by user")
////    case .notDetermined: PHPhotoLibrary.requestAuthorization({
////        (newStatus) in print("status is \(newStatus)") if newStatus == PHAuthorizationStatus.authorized { /         do stuff here */ print("success") }
////        })
////        case .restricted: / print("User do not have access to photo album.")
////        case .denied: / print("User has denied the permission.")
////        }
////    }
//
//    internal func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
//        dismiss(animated: true, completion: nil)
//        print("~~~~~~~~~~~~~~~~~~~~~~~~~```2");
//    }
//
    @objc func close () {
        self.dismiss(animated: true, completion: nil)
    }
    @objc func nextStep () {
//        self.push
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
