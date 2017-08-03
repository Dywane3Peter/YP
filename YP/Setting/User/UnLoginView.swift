//
//  UnLoginView.swift
//  YP
//
//  Created by peter on 2017/8/3.
//  Copyright © 2017年 peter. All rights reserved.
//

import UIKit

class UnLoginView: UIView {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!

    override func awakeFromNib() {
        super.awakeFromNib()
        loginButton.layer.cornerRadius = 5
        loginButton.layer.masksToBounds = true
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension UnLoginView: UITableViewDataSource, UITableViewDelegate{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
}
