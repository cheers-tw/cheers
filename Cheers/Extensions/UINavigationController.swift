//
//  UINavigationController.swift
//  cheers
//
//  Created by Dong on 2024/3/20.
//

import Foundation
import UIKit

extension UINavigationController: UIGestureRecognizerDelegate {
    override open func viewDidLoad() {
        UIApplication.shared.sendAction(
            #selector(UIResponder.resignFirstResponder),
            to: nil,
            from: nil,
            for: nil
        )
        super.viewDidLoad()
        interactivePopGestureRecognizer?.delegate = self
    }
    
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return viewControllers.count > 1
    }
}
