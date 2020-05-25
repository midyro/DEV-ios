//
//  Themes.swift
//  DEV-Simple
//
//  Created by Mitch Rob on 25/05/2020.
//  Copyright © 2020 DEV. All rights reserved.
//

import Foundation
import UIKit

class ThemeManager {
    var translucent: Bool
    var barTintColor: UIColor
    var webViewButtonTintColor: UIColor
    var forwardButtonTintColor: UIColor
    var backButtonTintColor: UIColor
    var refreshButtonTintColor: UIColor
    var backgroundColor: UIColor
    var activityIndicatorColor: UIColor
    var darkContent: Bool

    init() {
        self.translucent = false
        self.darkContent = false
        self.barTintColor = UIColor.white
        self.webViewButtonTintColor = UIColor.white
        self.backButtonTintColor = UIColor.black
        self.forwardButtonTintColor = UIColor.black
        self.refreshButtonTintColor = UIColor.black
        self.backgroundColor = UIColor.white
        self.activityIndicatorColor = UIColor.black
    }
    
    func loadTheme(withUserConfig configBodyClass: String ) {
        if configBodyClass.contains("night-theme") {
            darkTheme()
        } else if configBodyClass.contains("pink-theme") {
            pinkTheme()
        } else if configBodyClass.contains("ten-x-hacker-theme") {
            tenXHackerTheme()
        } else if configBodyClass.contains("minimal-light-theme") {
            minimaLightTheme()
        } else {
            lightTheme()
        }
    }

    func darkTheme() {
        translucent = false
        darkContent = true
        barTintColor = UIColor(red: 26/255, green: 38/255, blue: 52/255, alpha: 1)
        webViewButtonTintColor = UIColor.white
        backButtonTintColor = UIColor.white
        forwardButtonTintColor = UIColor.white
        refreshButtonTintColor = UIColor.white
        backgroundColor = UIColor(red: 26/255, green: 38/255, blue: 52/255, alpha: 1)
        activityIndicatorColor = UIColor.white
    }

    func pinkTheme() {
        translucent = false
        darkContent = false
        barTintColor = UIColor(red: 250/255, green: 71/255, blue: 128/255, alpha: 1)
        webViewButtonTintColor = UIColor.white
        backButtonTintColor = UIColor.white
        forwardButtonTintColor = UIColor.white
        refreshButtonTintColor = UIColor.white
        backgroundColor = UIColor(red: 250/255, green: 71/255, blue: 128/255, alpha: 1)
        activityIndicatorColor = UIColor.white
    }

    func tenXHackerTheme() {
        let greenColor = UIColor(red: 44/255, green: 254/255, blue: 123/255, alpha: 1)
        translucent = false
        darkContent = true
        barTintColor = UIColor(red: 27/255, green: 28/255, blue: 27/255, alpha: 1)
        webViewButtonTintColor = greenColor
        backButtonTintColor = greenColor
        forwardButtonTintColor = greenColor
        refreshButtonTintColor = greenColor
        backgroundColor = UIColor(red: 27/255, green: 28/255, blue: 27/255, alpha: 1)
        activityIndicatorColor = greenColor
    }
    
    func minimaLightTheme() {
        translucent = false
        darkContent = false
        barTintColor = UIColor.white
        webViewButtonTintColor = UIColor.black
        backButtonTintColor = UIColor.black
        forwardButtonTintColor = UIColor.black
        refreshButtonTintColor = UIColor.black
        backgroundColor = UIColor.white
        activityIndicatorColor = UIColor.black
    }
    
    func lightTheme() {
        translucent = false
        darkContent = false
        barTintColor = UIColor(red: 254/255, green: 255/255, blue: 254/255, alpha: 1)
        webViewButtonTintColor = UIColor.black
        backButtonTintColor = UIColor.black
        forwardButtonTintColor = UIColor.black
        refreshButtonTintColor = UIColor.black
        backgroundColor = UIColor(red: 254/255, green: 255/255, blue: 254/255, alpha: 1)
        activityIndicatorColor = UIColor.black
    }
}
