//
//  ViewController.swift
//  CustomNavBar
//
//  Created by Praveenkumar Somu on 26/1/2562 BE.
//  Copyright © 2562 Praveenkumar Somu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var customNavbarView: NavbarSuperView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavbar()
    }
    
    func setupNavbar(){
        customNavbarView.navbarView?.setUpTheme(title: "First Screen", subTitle: "Sub title wqjhdjhsd sjdjhdjd sjdgshjdsd sjdjshds djsdsjd sgdsd Sub title wqjhdjhsd sjdjhdjd sjdgshjdsd sjdjshds djsdsjd sgdsd",showBackButton:false)
    }
}

