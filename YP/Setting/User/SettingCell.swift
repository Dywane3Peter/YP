//
//  SettingCell.swift
//  YP
//
//  Created by 魏翔 on 2017/8/3.
//  Copyright © 2017年 peter. All rights reserved.
//

import UIKit

class SettingCell: UITableViewCell {
    
    @IBOutlet weak var leftLabel: UILabel!
    @IBOutlet weak var centerLabel: UILabel!
    @IBOutlet weak var rightLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    class func cellWith(tableView: UITableView)->SettingCell {
        let settingCellId: String = "SettingCell"
        var cell = tableView.dequeueReusableCell(withIdentifier: settingCellId) as? SettingCell
        if(cell == nil) {
            cell = Bundle.main.loadNibNamed(settingCellId, owner: nil, options: nil)?.first as? SettingCell
        }
        return cell!
    }
}

extension SettingCell {
    
    func refreshCellWith(leftStr: String?, centerStr: String?, rightStr: String?, textFiledStr: String?, switchVisiable: Bool) {
        leftLabel.isHidden = leftStr == nil ? true : false
        leftLabel.text = leftStr ?? ""
        
        centerLabel.isHidden = centerStr == nil ? true : false
        centerLabel.text = centerStr ?? ""
        
        rightLabel.isHidden = rightStr == nil ? true : false
        rightLabel.text = rightStr ?? ""
        
        textField.isHidden = textFiledStr == nil ? true : false
        textField.text = textFiledStr ?? ""
        
        settingSwitch.isHidden = !switchVisiable
    }
}
