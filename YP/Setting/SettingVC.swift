//
//  SettingVC.swift
//  YP
//
//  Created by peter on 2017/8/3.
//  Copyright © 2017年 peter. All rights reserved.
//

import UIKit
import SnapKit

class SettingVC: UIViewController {

    @IBOutlet weak var topLevelView: UIView!
    @IBOutlet weak var settingContentView: UIView!
    
    lazy var unLoginView = UnLoginView.viewInitWithNib()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.setNavigationBarHidden(true, animated: false)
        setUpSettingContentView();
    }

    func setUpSettingContentView(){
        settingContentView.addSubview(unLoginView)
        unLoginView.snp.makeConstraints { (make) -> Void in
            make.edges.equalToSuperview()
        }
    }
}
