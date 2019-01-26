//
//  NavbarView.swift
//  CustomNavBar
//
//  Created by Praveenkumar Somu on 26/1/2562 BE.
//  Copyright © 2562 Praveenkumar Somu. All rights reserved.
//

import UIKit

class NavbarSuperView: UIView {
    var navbarView: NavbarView?
    override func awakeFromNib() {
        super.awakeFromNib()
        if  let navbarView = Bundle.main.loadNibNamed("NavbarView", owner: self, options: nil)?.first as? NavbarView{
            navbarView.frame = frame
            self.navbarView = navbarView
            addSubview(navbarView)
        }
    }
}

class NavbarView: UIView {
    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var subtitleLabel: UILabel!
    @IBOutlet private weak var backButton: UIButton!

    var context:UIViewController?
    
    @IBAction func backAction(_ sender: UIButton) {
        dismiss()
    }
    
    func dismiss() {
        context?.dismiss(animated: true, completion: nil)
    }
    
    // You can add your own parameters to this function to customize more
    func setUpTheme(backgroundColor:UIColor? = nil,titleFont:UIFont? = nil,subtitleFont:UIFont? = nil,title:String,subTitle:String,showBackButton:Bool = true){
        titleLabel.font = titleFont
        if let backgroundcolor = backgroundColor{
            self.backgroundColor = backgroundcolor
        }
        subtitleLabel.font = subtitleFont
        titleLabel.text = title
        subtitleLabel.text = subTitle
        backButton.isHidden = !showBackButton
    }
    
}
