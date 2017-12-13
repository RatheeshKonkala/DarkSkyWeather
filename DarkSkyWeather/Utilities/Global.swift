//
//  Global.swift
//  DarkSkyWeather
//
//  Created by Ratheesh Reddy on 12/09/17.
//  Copyright © 2017 Ratheesh Reddy. All rights reserved.
//

import Foundation
import UIKit
import MBProgressHUD

class Global {
    //MARK: - Global Functions - MBProgressHUD
    public static func showProgressHUDWithStatus(_ status: String, fromView view: UIView) {
        let hud = MBProgressHUD.showAdded(to: view, animated: true)
        hud.label.text = status
        hud.bezelView.color = UIColor.black.withAlphaComponent(0.5)
        // Change the background view style and color.
        hud.backgroundView.color = UIColor(white: 0.0, alpha: 1)
    }
    public static func hideProgressHUD(for view: UIView) {
        DispatchQueue.main.async {
            MBProgressHUD.hide(for: view, animated: true)
        }
    }
    
    //MARK: - Global Functions - Simple User info Alert message
    public static func showAlert(message: String, fromViewController: UIViewController) {
        let alert = UIAlertController(title: "Problem", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        DispatchQueue.main.async {
            fromViewController.present(alert, animated: true, completion: nil)
        }
    }
}


