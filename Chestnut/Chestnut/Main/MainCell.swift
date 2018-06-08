//
//  MainCell.swift
//  Chestnut
//
//  Created by 吳政賢 on 2018/6/7.
//  Copyright © 2018年 吳政賢. All rights reserved.
//

import UIKit
import SDWebImage

protocol MainCellDelegate: class {
    func showAddress(cell: MainCell)
}

class MainCell: UITableViewCell {
    var delegate: MainCellDelegate?
    
    let avatar = UIImageView ();
    let name = UILabel()
    let title = UILabel()
    let content = UILabel()

    let collection = UIButton();
    let collectionImage = UIImageView();
    let collectionLabel = UILabel();


    let address = UIButton();
    let addressImage = UIImageView();
    let addressLabel = UILabel();

    var cover: UIImageView! = nil;
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func initCover() {
        self.cover = UIImageView ();
        self.cover.translatesAutoresizingMaskIntoConstraints = false;
        self.cover.sd_setImage(with: URL(string: "https://honestbeetw.files.wordpress.com/2017/05/img_5543.jpg"))
        self.cover.layer.cornerRadius = 3;
        self.cover.clipsToBounds = true;
        self.cover.contentMode = .scaleAspectFill

        self.contentView.addSubview(self.cover);
        self.contentView.addConstraint(NSLayoutConstraint(item: self.cover, attribute: .top, relatedBy: .equal, toItem: self.contentView, attribute: .top, multiplier: 1, constant: 16 + 24 + 8))
        self.contentView.addConstraint(NSLayoutConstraint(item: self.cover, attribute: .right, relatedBy: .equal, toItem: self.contentView, attribute: .right, multiplier: 1, constant: -16))
        self.contentView.addConstraint(NSLayoutConstraint(item: self.cover, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 136 - 16 - 16 - 24 - 8))
        self.contentView.addConstraint(NSLayoutConstraint(item: self.cover, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 136 - 16 - 16 - 24))
    }
    func initAvatar () {
        self.avatar.translatesAutoresizingMaskIntoConstraints = false;
        self.avatar.sd_setImage(with: URL(string: "https://scontent.ftpe7-2.fna.fbcdn.net/v/t1.0-9/31924595_1739065359506771_6874134842745815040_n.jpg?_nc_fx=ftpe7-3&_nc_cat=0&_nc_eui2=AeFkPW472txyCRfJtnPqnFbfu24D3idEudVkkkkxBTANFEpMIkWunIS2yNi-j6W42MbCsTyhI0x7lX1NSHqoqHpg-PTxKqnV39K1LiDy6_2ikw&oh=e91cafd34c95b40407876d19f444a487&oe=5B7B0508"))
        
        self.avatar.layer.cornerRadius = 24 / 2;
        self.avatar.clipsToBounds = true;

        self.contentView.addSubview(self.avatar);
        self.contentView.addConstraint(NSLayoutConstraint(item: self.avatar, attribute: .top, relatedBy: .equal, toItem: self.contentView, attribute: .top, multiplier: 1, constant: 16))
        self.contentView.addConstraint(NSLayoutConstraint(item: self.avatar, attribute: .left, relatedBy: .equal, toItem: self.contentView, attribute: .left, multiplier: 1, constant: 16))
        self.contentView.addConstraint(NSLayoutConstraint(item: self.avatar, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 24))
        self.contentView.addConstraint(NSLayoutConstraint(item: self.avatar, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 24))
    }
    func initName () {
        self.name.translatesAutoresizingMaskIntoConstraints = false;
        self.name.text = "吳姿萱"
        self.name.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        self.name.font = self.name.font.withSize(13)

//        self.name.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1);
//        self.name.layer.borderWidth = 1.0 / UIScreen.main.scale;
//
        self.contentView.addSubview(self.name);
        self.contentView.addConstraint(NSLayoutConstraint(item: self.name, attribute: .centerY, relatedBy: .equal, toItem: self.avatar, attribute: .centerY, multiplier: 1, constant: 0));
        self.contentView.addConstraint(NSLayoutConstraint(item: self.name, attribute: .left, relatedBy: .equal, toItem: self.avatar, attribute: .right, multiplier: 1, constant: 8))
    }
    
    func initTitle() {
        self.title.translatesAutoresizingMaskIntoConstraints = false;
        self.title.text = "阿玉水餃"
        self.title.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        self.title.font = UIFont.boldSystemFont(ofSize: 19)
        self.contentView.addSubview(self.title);
        
        self.contentView.addConstraint(NSLayoutConstraint(item: self.title, attribute: .left, relatedBy: .equal, toItem: self.avatar, attribute: .left, multiplier: 1, constant: 0));
        self.contentView.addConstraint(NSLayoutConstraint(item: self.title, attribute: .top, relatedBy: .equal, toItem: self.avatar, attribute: .bottom, multiplier: 1, constant: 8));
    }
    func initContent() {
        self.content.translatesAutoresizingMaskIntoConstraints = false;
        self.content.text = "超級推薦，超級好吃！每個月必吃一次的超大超好吃水餃～～～～～"
        self.content.textColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        self.content.font = self.content.font.withSize(16)
        self.content.adjustsFontSizeToFitWidth = false;
        self.content.lineBreakMode = .byTruncatingTail
               // self.content.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1);
               // self.content.layer.borderWidth = 1.0 / UIScreen.main.scale;
       
        self.contentView.addSubview(self.content);
        self.contentView.addConstraint(NSLayoutConstraint(item: self.content, attribute: .left, relatedBy: .equal, toItem: self.avatar, attribute: .left, multiplier: 1, constant: 0));
        self.contentView.addConstraint(NSLayoutConstraint(item: self.content, attribute: .top, relatedBy: .equal, toItem: self.title, attribute: .bottom, multiplier: 1, constant: 4));

        if self.cover != nil {
            self.contentView.addConstraint(NSLayoutConstraint(item: self.content, attribute: .right, relatedBy: .equal, toItem: self.cover, attribute: .left, multiplier: 1, constant: -8));
        } else {
            self.contentView.addConstraint(NSLayoutConstraint(item: self.content, attribute: .width, relatedBy: .equal, toItem: self.contentView, attribute: .width, multiplier: 1, constant: -16 - 16));
        }
        
    }
    @objc func collectionEvent(sender: UIButton) {
        if self.collectionImage.image == #imageLiteral(resourceName: "collection1") {
            self.collectionImage.image = #imageLiteral(resourceName: "collection2")
            self.collectionLabel.text = "已收藏"
        } else {
            self.collectionImage.image = #imageLiteral(resourceName: "collection1")
            self.collectionLabel.text = "收藏"
        }
    }
    func initCollection() {
        self.collection.translatesAutoresizingMaskIntoConstraints = false;
        self.collection.addTarget(self, action: #selector(collectionEvent(sender:)), for: .touchUpInside)

        // self.collection.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1);
        // self.collection.layer.borderWidth = 1.0 / UIScreen.main.scale;
        
        self.contentView.addSubview(self.collection);
        self.contentView.addConstraint(NSLayoutConstraint(item: self.collection, attribute: .left, relatedBy: .equal, toItem: self.avatar, attribute: .left, multiplier: 1, constant: 0));
        self.contentView.addConstraint(NSLayoutConstraint(item: self.collection, attribute: .top, relatedBy: .equal, toItem: self.content, attribute: .bottom, multiplier: 1, constant: 8));
        self.contentView.addConstraint(NSLayoutConstraint(item: self.collection, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 60));
        self.contentView.addConstraint(NSLayoutConstraint(item: self.collection, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 22));

        self.collectionImage.translatesAutoresizingMaskIntoConstraints = false;
        self.collectionImage.image = #imageLiteral(resourceName: "collection1")
        
        self.collection.addSubview(self.collectionImage);
        self.collection.addConstraint(NSLayoutConstraint(item: self.collectionImage, attribute: .left, relatedBy: .equal, toItem: self.collection, attribute: .left, multiplier: 1, constant: 0));
        self.collection.addConstraint(NSLayoutConstraint(item: self.collectionImage, attribute: .centerY, relatedBy: .equal, toItem: self.collection, attribute: .centerY, multiplier: 1, constant: 0));
        self.collection.addConstraint(NSLayoutConstraint(item: self.collectionImage, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 14));
        self.collection.addConstraint(NSLayoutConstraint(item: self.collectionImage, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 14));

        self.collectionLabel.translatesAutoresizingMaskIntoConstraints = false;
        self.collectionLabel.text = "收藏";
        self.collectionLabel.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        self.collectionLabel.font = self.collectionLabel.font.withSize(13)

        self.collection.addSubview(self.collectionLabel);
        self.collection.addConstraint(NSLayoutConstraint(item: self.collectionLabel, attribute: .left, relatedBy: .equal, toItem: self.collectionImage, attribute: .right, multiplier: 1, constant: 4));
        self.collection.addConstraint(NSLayoutConstraint(item: self.collectionLabel, attribute: .centerY, relatedBy: .equal, toItem: self.collection, attribute: .centerY, multiplier: 1, constant: 0));

    }
    @objc func addressEvent(sender: UIButton) {
        
        self.delegate?.showAddress(cell: self)
    }
    func initAddress () {
        self.address.translatesAutoresizingMaskIntoConstraints = false;
        self.address.addTarget(self, action: #selector(addressEvent(sender:)), for: .touchUpInside)
        // self.address.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1);
        // self.address.layer.borderWidth = 1.0 / UIScreen.main.scale;
        
        self.contentView.addSubview(self.address);
        self.contentView.addConstraint(NSLayoutConstraint(item: self.address, attribute: .left, relatedBy: .equal, toItem: self.collection, attribute: .right, multiplier: 1, constant: 8));
        self.contentView.addConstraint(NSLayoutConstraint(item: self.address, attribute: .centerY, relatedBy: .equal, toItem: self.collection, attribute: .centerY, multiplier: 1, constant: 0));
        self.contentView.addConstraint(NSLayoutConstraint(item: self.address, attribute: .right, relatedBy: .equal, toItem: self.content, attribute: .right, multiplier: 1, constant: 0));
        self.contentView.addConstraint(NSLayoutConstraint(item: self.address, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 22));
        

        self.addressImage.translatesAutoresizingMaskIntoConstraints = false;
        self.addressImage.image = #imageLiteral(resourceName: "mapsVC")
        
        self.address.addSubview(self.addressImage);
        self.address.addConstraint(NSLayoutConstraint(item: self.addressImage, attribute: .left, relatedBy: .equal, toItem: self.address, attribute: .left, multiplier: 1, constant: 0));
        self.address.addConstraint(NSLayoutConstraint(item: self.addressImage, attribute: .centerY, relatedBy: .equal, toItem: self.address, attribute: .centerY, multiplier: 1, constant: 0));
        self.address.addConstraint(NSLayoutConstraint(item: self.addressImage, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 16));
        self.address.addConstraint(NSLayoutConstraint(item: self.addressImage, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1, constant: 16));


        self.addressLabel.translatesAutoresizingMaskIntoConstraints = false;
        self.addressLabel.text = "台北市大安區辛亥路二段217號";

        self.addressLabel.textColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
        self.addressLabel.font = self.addressLabel.font.withSize(13)

        self.addressLabel.adjustsFontSizeToFitWidth = false;
        self.addressLabel.lineBreakMode = .byTruncatingTail

        self.address.addSubview(self.addressLabel);
        self.address.addConstraint(NSLayoutConstraint(item: self.addressLabel, attribute: .left, relatedBy: .equal, toItem: self.addressImage, attribute: .right, multiplier: 1, constant: 4));
        self.address.addConstraint(NSLayoutConstraint(item: self.addressLabel, attribute: .centerY, relatedBy: .equal, toItem: self.address, attribute: .centerY, multiplier: 1, constant: 0));
        self.address.addConstraint(NSLayoutConstraint(item: self.addressLabel, attribute: .right, relatedBy: .equal, toItem: self.address, attribute: .right, multiplier: 1, constant: 0));
    }
    func initUI(str: String) {
        
//        self.textLabel?.text = str;
//        self.contentView.
        
//        self.contentView.backgroundColor = UIColor(red:0.94, green:0.94, blue:0.95, alpha:1.00)
//        self.contentView.layer.borderColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1);
//        self.contentView.layer.borderWidth = 1.0 / UIScreen.main.scale;
        
        self.initCover ()

        self.initAvatar ()
        self.initName ();
        self.initTitle ();
        self.initContent ();
        self.initCollection ();
        self.initAddress ();
        
//        self.contentView.layer.cornerRadius = 3;
//        self.contentView.clipsToBounds = true;
        
        
        
    }

}
