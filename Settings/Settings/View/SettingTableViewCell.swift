//
//  SettingViewController.swift
//  Settings
//
//  Created by Kelsey Sparkman on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import UIKit

protocol SettingTableViewCellDelegate: class {
    //Step one
    func settingSwitchTapped (for cell: SettingTableViewCell)
}

class SettingTableViewCell: UITableViewCell {
    
    //Mark: - Outlets

    @IBOutlet weak var settingIconImageView: UIImageView!
    
    @IBOutlet weak var settingNameLabel: UILabel!
    
    @IBOutlet weak var settingSwitch: UISwitch!

    //Mark: - Properties
    //Step 2
    weak var delegate: SettingTableViewCellDelegate?
    //Mark: - Action
    
    @IBAction func settingSwitchToggled(_ sender: Any) {
   delegate?.settingSwitchTapped(for: self)

    //TODO: - Add this
    }
   
    //Mark: - Helper Methods
    func updateViews(with setting: Setting) {
        settingIconImageView.image = setting.icon
        settingNameLabel.text = setting.settingTitle
        settingSwitch.isOn = setting.isOn
        
        //Ternary Operator
        backgroundColor = setting.isOn ? .green : .white
//        if setting.isOn == true {
//            backgroundColor = .green
//        } else {
//            backgroundColor = .white
//        }
    }

}
