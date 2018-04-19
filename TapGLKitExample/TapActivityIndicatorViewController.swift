//
//  TapActivityIndicatorViewController.swift
//  TapGLKit
//
//  Copyright © 2018 Tap Payments. All rights reserved.
//

import class TapGLKit.TapActivityIndicatorView
import class UIKit.UISlider.UISlider
import class UIKit.UISwitch.UISwitch
import class UIKit.UIView.UIView

internal class TapActivityIndicatorViewController: BaseViewController {

    //MARK: - Private -
    //MARK: Properties
    
    @IBOutlet private weak var activityIndicator: TapActivityIndicatorView?
    
    @IBOutlet private weak var startingProgressContainerView: UIView?
    
    //MARK: Methods
    
    @IBAction private func animatingSwitchValueChanged(_ sender: UISwitch) {
        
        self.activityIndicator?.isAnimating = sender.isOn
        
        self.startingProgressContainerView?.alpha = sender.isOn ? 0.5 : 1.0
        self.startingProgressContainerView?.isUserInteractionEnabled = !sender.isOn
    }
    
    @IBAction private func usesCustomColorsSwitchValueChanged(_ sender: UISwitch) {
        
        self.activityIndicator?.usesCustomColors = sender.isOn
    }
    
    @IBAction private func startingProgressSliderValueChanged(_ sender: UISlider) {
        
        self.activityIndicator?.startingProgress = sender.value
    }
}
