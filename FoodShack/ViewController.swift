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
        
        self.topThumbButton.setImage(UIImage(named: "burger"), for: .normal)
        self.topTitleLabel.text = "FOOD SHACK"
        self.topTitleLabel.textColor = UIColor(red: 39.0/255.0, green: 61.0/255.0, blue: 71.0/255.0, alpha: 1.0)
        
        self.topViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.mainThumbViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.buttonViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.bottomViewHolder.translatesAutoresizingMaskIntoConstraints = false
        self.topThumbButton.translatesAutoresizingMaskIntoConstraints = false
        self.topTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(topViewHolder)
        self.view.addSubview(mainThumbViewHolder)
        self.view.addSubview(buttonViewHolder)
        self.view.addSubview(bottomViewHolder)
        
        self.topViewHolder.addSubview(self.topThumbButton)
        self.topViewHolder.addSubview(self.topTitleLabel)
        
        self.views["topViewHolder"] = topViewHolder
        self.views["mainThumbViewHolder"] = mainThumbViewHolder
        self.views["buttonViewHolder"] = buttonViewHolder
        self.views["bottomViewHolder"] = bottomViewHolder
        self.views["topThumbButton"] = topThumbButton
        self.views["topTitleLabel"] = topTitleLabel
        
        setConstraints()
    }
    
    func setConstraints() {
        
        /** Top View Holder **/
        addContraint(format: "V:|-[topViewHolder(50)]-0-[mainThumbViewHolder]")
        addContraint(format: "H:|-0-[topViewHolder]-0-|")
        
        /** Main View Holder **/
        addContraint(format: "V:[mainThumbViewHolder(<=250@250)]-0-[buttonViewHolder]")
        addContraint(format: "V:[mainThumbViewHolder(>=150@250)]")
        addContraint(format: "H:|-0-[mainThumbViewHolder(==topViewHolder)]-0-|")
        
        /** Main Button Holder **/
        addContraint(format: "V:[buttonViewHolder(<=200)]-0-[bottomViewHolder]")
        addContraint(format: "V:[buttonViewHolder(>=100)]")
        addContraint(format: "H:|-0-[buttonViewHolder(mainThumbViewHolder)]-0-|")
        
        /** Main Bottom Holder **/
        addContraint(format: "V:[bottomViewHolder(50@1000)]-|")
        addContraint(format: "H:|-0-[bottomViewHolder(buttonViewHolder)]-0-|")
        
        /** Top Thumb Button **/
        addContraint(format: "V:|-5-[topThumbButton(40)]")
        addContraint(format: "H:|-5-[topThumbButton(40)]-10-[topTitleLabel]")
        
        /** Top Title Label **/
        addContraint(format: "V:|-5-[topTitleLabel(40)]")
        addContraint(format: "H:[topTitleLabel(>=50)]")
        
        NSLayoutConstraint.activate(self.constraints)
    }
    
    func addContraint(format: String) {
        let newConstraints = NSLayoutConstraint.constraints(withVisualFormat: format, options: [], metrics: nil, views: self.views)
        self.constraints += newConstraints
    }
}













