//
//  SettingController.swift
//  Settings
//
//  Created by Kelsey Sparkman on 3/2/20.
//  Copyright © 2020 Karl Pfister. All rights reserved.
//

import Foundation

class SettingController {
    
    //Mark: -Source of Truth
    let settings: [Setting] = {
        let music = Setting(settingTitle: "Music", icon: #imageLiteral(resourceName: "iTunes"), isOn: false)
        let appStore = Setting(settingTitle: "App Store", icon: #imageLiteral(resourceName: "appStore"), isOn: false)
        let iBooks = Setting(settingTitle: "IBooks", icon: #imageLiteral(resourceName: "iBooks"), isOn: false)
        return [music, appStore, IBookscd ~]
    } ()
    
    //Mark: -Metods
    func toggleIsOn(for setting: Setting) {
        Setting.isOn = !Setting.isOn
        //2B || !2B
        
    }
    
}//End of Class
