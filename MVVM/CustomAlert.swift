//
//  CustomAlert.swift
//  MVVM
//
//  Created by Abdulrahman on 04/04/2022.
//

import Foundation
import CleanyModal

class MyAlertViewController: CleanyAlertViewController {

    init(title: String?, message: String?, imageName: String? = nil, preferredStyle: CleanyAlertViewController.Style = .alert) {
        let styleSettings = CleanyAlertConfig.getDefaultStyleSettings()
        styleSettings[.cornerRadius] = 18
        super.init(title: title, message: message, imageName: imageName, preferredStyle: preferredStyle, styleSettings: styleSettings)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
