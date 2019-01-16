//
//  LinearGradientViewController.swift
//  TapGLKit
//
//  Copyright © 2019 Tap Payments. All rights reserved.
//

import class TapGLKit.LinearGradientView
import class UIKit.UISwitch.UISwitch
import class UIKit.UIViewController.UIViewController

internal class LinearGradientViewController: BaseViewController {

    //MARK: - Internal -
    //MARK: Properties
    
    @IBOutlet private weak var linearGradientView: LinearGradientView?
    
    //MARK: Methods
    
    @IBAction private func gradientDirectionSwitchValueChanged(_ sender: UISwitch) {
        
        self.linearGradientView?.gradientDirection = sender.isOn ? .topToBottom : .leftToRight
    }
}
