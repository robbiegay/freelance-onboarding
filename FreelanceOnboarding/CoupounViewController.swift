//
//  CoupouViewController.swift
//  FreelanceOnboarding
//
//  Created by Thomas Warner on 1/16/20.
//  Copyright © 2020 Thomas Warner. All rights reserved.
//

import UIKit
import TinyConstraints

class CouponViewController: UIViewController {

//    Data
    var numberOfCoupons = 0
    
//    Views
    let stackView = UIStackView()
    let numberOfCouponsLabelView = LabelView()
    let numberOfArrivalsLabelView = LabelView()
     
//    Sort of like componentDidMount -> fires on load of the page
    override func viewDidLoad() {
        super.viewDidLoad()
        anchorSubviews()
        styleSubviews()

        populate()
    }
    
//    Tells sub views where to go
    func anchorSubviews() {
        view.addSubview(stackView)
        stackView.centerInSuperview()
        stackView.widthToSuperview(multiplier: 0.8)
        stackView.heightToSuperview(multiplier: 0.8)
        
//        let redView = UIView()
//        let blueView = UIView()
//        redView.backgroundColor = .red
//        blueView.backgroundColor = .blue
//
//        stackView.addArrangedSubview(redView)
//        stackView.addArrangedSubview(blueView)
        
        stackView.addArrangedSubview(numberOfCouponsLabelView)
        stackView.addArrangedSubview(numberOfArrivalsLabelView)
    }
    
//    Styles subviews (fonts, etc)
    func styleSubviews() {
        view.backgroundColor = customRed
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        stackView.axis = .vertical
        
        numberOfCouponsLabelView.offset = -30
        numberOfCouponsLabelView.anchorSubviews()
        numberOfCouponsLabelView.imageView.image = #imageLiteral(resourceName: "CouponsFull")
        numberOfCouponsLabelView.descriptionLabel.text = "# Coupons"
        numberOfCouponsLabelView.countLabel.text = "3"
        
        numberOfArrivalsLabelView.offset = 30
        numberOfArrivalsLabelView.anchorSubviews()
        numberOfArrivalsLabelView.imageView.image = #imageLiteral(resourceName: "LocationsFull")
        numberOfArrivalsLabelView.descriptionLabel.text = "# Arrivals"
        numberOfArrivalsLabelView.countLabel.text = "5"
    }
    
//    Populates the data
    func populate() {
        
        
    }

}
