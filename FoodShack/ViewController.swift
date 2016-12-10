//
//  ViewController.swift
//  FoodShack
//
//  Created by Vyacheslav Horbach on 10/12/16.
//  Copyright © 2016 Vjaceslav Horbac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let burgerButton = UIButton()
    let pizzaButton = UIButton()
    let sandwichButton = UIButton()
    let tacoButton = UIButton()
    let orderNowButton = UIButton()
    let selectedItemThumImage = UIImageView(image: UIImage(named: "Burger"))
    let topViewHolder = UIView()
    let mainThumbViewHolder = UIView()
    let buttonViewHolder = UIView()
    let bottomViewHolder = UIView()
    let topThumbButton = UIButton()
    let topTitleLabel = UILabel()
    
    var views = Dictionary<String, AnyObject>()
    var constraints = [NSLayoutConstraint]()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.purple
        self.topViewHolder.backgroundColor = UIColor.white
        self.mainThumbViewHolder.backgroundColor = UIColor(red: 220.0/255.0, green: 224.0/255.0, blue: 210.0/255.0, alpha: 1.0)
        self.buttonViewHolder.backgroundColor = UIColor(red: 242.0/255.0, green: 241.0/255.0, blue: 239.0/255.0, alpha: 1.0)
        self.bottomViewHolder.backgroundColor = UIColor(red: 39.0/255.0, green: 61.0/255.0, blue: 71.0/255.0, alpha: 1.0)
        
        self.topViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.mainThumbViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.buttonViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.bottomViewHolder.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(topViewHolder)
        self.view.addSubview(mainThumbViewHolder)
        self.view.addSubview(buttonViewHolder)
        self.view.addSubview(bottomViewHolder)
        
        self.views["topViewHolder"] = topViewHolder
        self.views["mainThumbViewHolder"] = mainThumbViewHolder
        self.views["buttonViewHolder"] = buttonViewHolder
        self.views["bottomViewHolder"] = bottomViewHolder
        
        setConstraints()
    }
    
    func setConstraints() {
        
        /** Top View Holder **/
        var formatString = "V:|-[topViewHolder(50)]"
        var newConstraints = NSLayoutConstraint.constraints(withVisualFormat: formatString, options: [], metrics: nil, views: self.views)
        self.constraints += newConstraints
        
        formatString = "H:|-0-[topViewHolder]-0-|"
        newConstraints = NSLayoutConstraint.constraints(withVisualFormat: formatString, options: [], metrics: nil, views: self.views)
        self.constraints += newConstraints
        
        NSLayoutConstraint.activate(self.constraints)
    }
}













