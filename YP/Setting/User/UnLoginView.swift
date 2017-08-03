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
    
    lazy var dataArray: Array<SettingType> = {
        var dataArray = Array<SettingType>()
        dataArray.append(SettingType.setting)
        return dataArray
    }()
    
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
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = SettingCell.cellWith(tableView: tableView)
        let settingType: SettingType = dataArray[indexPath.row]
        switch settingType {
        case .setting:
            cell.refreshCellWith(leftStr: "设置", centerStr: nil, rightStr: nil, textFiledStr: nil, switchVisiable: false)
        default:
            break
        }
        
        return cell
    }
}
