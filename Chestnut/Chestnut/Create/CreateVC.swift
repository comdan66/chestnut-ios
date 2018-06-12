//
//  CreateVC.swift
//  Chestnut
//
//  Created by 吳政賢 on 2018/6/11.
//  Copyright © 2018年 吳政賢. All rights reserved.
//

import UIKit

class CreateVC: UIViewController, UITextViewDelegate {
    let scrollView = UIScrollView ();
    let userView = UIView ();
    let input = UITextView ();
    let button = UIButton ();
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "舉個栗子"

        self.navigationItem.leftBarButtonItem = UIBarButtonItem(title: "取消", style: .plain, target: self, action: #selector(close))
        self.view.backgroundColor = UIColor(red:1, green:1, blue:1, alpha:1.0)
        
        self.initUI ();
    }
    @objc func close () {
        self.dismiss(animated: true, completion: nil)
    }
    func initScrollView () {
        self.scrollView.translatesAutoresizingMaskIntoConstraints = false;
        
        self.view.addSubview(self.scrollView)
        self.view.addConstraint(NSLayoutConstraint(item: self.scrollView, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 0));
        self.view.addConstraint(NSLayoutConstraint(item: self.scrollView, attribute: .left, relatedBy: .equal, toItem: self.view, attribute: .left, multiplier: 1, constant: 0));
        self.view.addConstraint(NSLayoutConstraint(item: self.scrollView, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1, constant: 0));
        self.view.addConstraint(NSLayoutConstraint(item: self.scrollView, attribute: .right, relatedBy: .equal, toItem: self.view, attribute: .right, multiplier: 1, constant: 0));
        self.view.addConstraint(NSLayoutConstraint(item: self.scrollView, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0));
        self.view.addConstraint(NSLayoutConstraint(item: self.scrollView, attribute: .centerY, relatedBy: .equal, toItem: self.view, attribute: .centerY, multiplier: 1, constant: 0));
    }
    func initUserInfo() {
        self.userView.translatesAutoresizingMaskIntoConstraints = false;
        self.userView.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1);
        self.userView.layer.borderWidth = 1.0 / UIScreen.main.scale;
        
        self.scrollView.addSubview(self.userView)
        self.scrollView.addConstraint(NSLayoutConstraint(item: self.userView, attribute: .top, relatedBy: .equal, toItem: self.scrollView, attribute: .top, multiplier: 1, constant: 0))
        self.scrollView.addConstraint(NSLayoutConstraint(item: self.userView, attribute: .left, relatedBy: .equal, toItem: self.scrollView, attribute: .left, multiplier: 1, constant: 0))
        self.scrollView.addConstraint(NSLayoutConstraint(item: self.userView, attribute: .right, relatedBy: .equal, toItem: self.scrollView, attribute: .right, multiplier: 1, constant: 0))
        self.scrollView.addConstraint(NSLayoutConstraint(item: self.userView, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 60))
        self.scrollView.addConstraint(NSLayoutConstraint(item: self.userView, attribute: .width, relatedBy: .equal, toItem: self.scrollView, attribute: .width, multiplier: 1, constant: 0))
        
        let avatar = UIImageView();
        avatar.translatesAutoresizingMaskIntoConstraints = false;
        avatar.sd_setImage(with: URL(string: "https://scontent.ftpe7-2.fna.fbcdn.net/v/t1.0-9/32455255_2091757684170896_2172689668598923264_o.jpg?_nc_fx=ftpe7-3&_nc_cat=0&oh=17afe085caa724f06b2e7a1d99db9567&oe=5BC4B2D5"))
        avatar.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1);
        avatar.layer.borderWidth = 1.0 / UIScreen.main.scale;
        
        avatar.layer.cornerRadius = 36 / 2;
        avatar.clipsToBounds = true;
        
        self.userView.addSubview(avatar);
        self.userView.addConstraint(NSLayoutConstraint(item: avatar, attribute: .top, relatedBy: .equal, toItem: self.userView, attribute: .top, multiplier: 1, constant: 12))
        self.userView.addConstraint(NSLayoutConstraint(item: avatar, attribute: .left, relatedBy: .equal, toItem: self.userView, attribute: .left, multiplier: 1, constant: 12))
        self.userView.addConstraint(NSLayoutConstraint(item: avatar, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 36))
        self.userView.addConstraint(NSLayoutConstraint(item: avatar, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 36))
        
        let name = UILabel()
        name.translatesAutoresizingMaskIntoConstraints = false;
        name.text = "吳政賢"
//        name.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1);
//        name.layer.borderWidth = 1.0 / UIScreen.main.scale;
        
        self.userView.addSubview(name);
        self.userView.addConstraint(NSLayoutConstraint(item: name, attribute: .left, relatedBy: .equal, toItem: avatar, attribute: .right, multiplier: 1, constant: 8))
        self.userView.addConstraint(NSLayoutConstraint(item: name, attribute: .centerY, relatedBy: .equal, toItem: avatar, attribute: .centerY, multiplier: 1, constant: 0))
    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        if textView.textColor == UIColor.lightGray {
            textView.text = nil
            textView.textColor = UIColor.black
        }
    }
    func textViewDidEndEditing(_ textView: UITextView) {
        if textView.text.isEmpty {
            textView.text = "在想些什麼？"
            textView.textColor = UIColor.lightGray
        }
    }
    func textViewDidChangeSelection(_ textView: UITextView) {
        if self.view.window != nil {
            if textView.textColor == UIColor.lightGray {
                textView.selectedTextRange = textView.textRange(from: textView.beginningOfDocument, to: textView.beginningOfDocument)
            }
        }
    }
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        let currentText:String = textView.text
        let updatedText = (currentText as NSString).replacingCharacters(in: range, with: text)
        
        if updatedText.isEmpty {
            textView.text = "在想些什麼？"
            textView.textColor = UIColor.lightGray
            textView.selectedTextRange = textView.textRange(from: textView.beginningOfDocument, to: textView.beginningOfDocument)
        } else if textView.textColor == UIColor.lightGray && !text.isEmpty {
            textView.textColor = UIColor.black
            textView.text = text
        } else {
            return true
        }
        
        return false
    }
    func initInput() {
        self.input.translatesAutoresizingMaskIntoConstraints = false;
        self.input.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1);
        self.input.layer.borderWidth = 1.0 / UIScreen.main.scale;
        self.input.delegate = self
        
        self.input.text = "在想些什麼？"
        self.input.textColor = UIColor.lightGray
        self.input.font = self.input.font?.withSize(18);
        
        self.input.sizeToFit()
        self.input.isScrollEnabled = false
        
//        self.input.becomeFirstResponder()
        self.input.selectedTextRange = self.input.textRange(from: self.input.beginningOfDocument, to: self.input.beginningOfDocument)
        
        self.input.textContainerInset = UIEdgeInsetsMake(12, 10, 12, 10);
        
        self.scrollView.addSubview(self.input)
        self.scrollView.addConstraint(NSLayoutConstraint(item: self.input, attribute: .top, relatedBy: .equal, toItem: self.userView, attribute: .bottom, multiplier: 1, constant: 0))
        self.scrollView.addConstraint(NSLayoutConstraint(item: self.input, attribute: .left, relatedBy: .equal, toItem: self.userView, attribute: .left, multiplier: 1, constant: 0))
        self.scrollView.addConstraint(NSLayoutConstraint(item: self.input, attribute: .right, relatedBy: .equal, toItem: self.userView, attribute: .right, multiplier: 1, constant: 0))
        self.scrollView.addConstraint(NSLayoutConstraint(item: self.input, attribute: .bottom, relatedBy: .equal, toItem: self.scrollView, attribute: .bottom, multiplier: 1, constant: 0))
    }
    
    
//    @objc func keyboardWillShow(sender: NSNotification) {
//        self.scrollView.frame.origin.y = -150 // Move view 150 points upward
//    }
//    
//    @objc func keyboardWillHide(sender: NSNotification) {
//        self.scrollView.frame.origin.y = 0 // Move view to original position
//    }


    func initUI () {
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:NSNotification.Name.UIKeyboardWillShow, object: nil);
//        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:NSNotification.Name.UIKeyboardWillHide, object: nil);

        
        self.initScrollView ();
        self.initUserInfo ();
        self.initInput ();
//        self.initInput ();
//        self.initInput ();
        
//        let image = UIImageView()
//        image.image = #imageLiteral(resourceName: "d4Pic")
//        image.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//        image.contentMode = .scaleAspectFit
//        image.translatesAutoresizingMaskIntoConstraints = false;
//        image.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1);
//        image.layer.borderWidth = 1.0 / UIScreen.main.scale;
//        image.layer.cornerRadius = 3;
//
//        self.scrollView.addSubview(image);
//        self.scrollView.addConstraint(NSLayoutConstraint(item: image, attribute: .top, relatedBy: .equal, toItem: self.scrollView, attribute: .top, multiplier: 1, constant: 8))
//        self.scrollView.addConstraint(NSLayoutConstraint(item: image, attribute: .left, relatedBy: .equal, toItem: self.scrollView, attribute: .left, multiplier: 1, constant: 8))
//        self.scrollView.addConstraint(NSLayoutConstraint(item: image, attribute: .right, relatedBy: .equal, toItem: self.scrollView, attribute: .right, multiplier: 1, constant: -8))
//        self.scrollView.addConstraint(NSLayoutConstraint(item: image, attribute: .width, relatedBy: .equal, toItem: self.scrollView, attribute: .width, multiplier: 1, constant: -16))
//        self.scrollView.addConstraint(NSLayoutConstraint(item: image, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100))
        
        
//        let a = UILabel();
//        a.translatesAutoresizingMaskIntoConstraints = false;
//        a.text = "aaaaaaaa"
//        a.backgroundColor = #colorLiteral(red: 0.4392156899, green: 0.01176470611, blue: 0.1921568662, alpha: 1);
//
//        self.scrollView.addSubview(a);
//        self.scrollView.addConstraint(NSLayoutConstraint(item: a, attribute: .top, relatedBy: .equal, toItem: self.scrollView, attribute: .top, multiplier: 1, constant: 10));
//        self.scrollView.addConstraint(NSLayoutConstraint(item: a, attribute: .left, relatedBy: .equal, toItem: self.scrollView, attribute: .left, multiplier: 1, constant: 10));
//        self.scrollView.addConstraint(NSLayoutConstraint(item: a, attribute: .right, relatedBy: .equal, toItem: self.scrollView, attribute: .right, multiplier: 1, constant: -10));
//        self.scrollView.addConstraint(NSLayoutConstraint(item: a, attribute: .bottom, relatedBy: .equal, toItem: self.scrollView, attribute: .bottom, multiplier: 1, constant: -10));
//        self.scrollView.addConstraint(NSLayoutConstraint(item: a, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 100));
//        self.scrollView.addConstraint(NSLayoutConstraint(item: a, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 1000));
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
