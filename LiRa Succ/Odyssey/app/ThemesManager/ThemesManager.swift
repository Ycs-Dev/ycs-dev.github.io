//
//  ThemesManager.swift
//  Odyssey
//
//  Created by CoolStar on 7/6/20.
//  Copyright © 2020 coolstar. All rights reserved.
//

import UIKit

class ThemesManager {
    static let shared = ThemesManager()
    static let themeChangeNotification = NSNotification.Name("ThemeChangeNotification")
    
    private let themes: [String: Theme] = [
        "default": Theme(
        colorViewBackgrounds: [
            .init(baseColour: .black, linearGradients: [
                .init(colours: [.black], angle: 0)
            ], overlayImage: nil)
        ],
        backgroundImage: UIImage(named: "azurLane"),
        backgroundCenter: CGPoint(x: 1510, y: 800),
        backgroundOverlay: UIColor(white: 0, alpha: 0.3),
        enableBlur: true,
        copyrightString: "Odyssey Team\nCoolStar (Lead Developer)\nHayden Seay (Developer)\nTihmstar (Exploit Developer)\nAdam (Installation Guide)\nSlimShadyIAm (Site Contributor)\nMegaDev (Site Contributor)\nHoà Huỳnh (App Developer)"),
        
        "dark": Theme(
        colorViewBackgrounds: [
            .init(baseColour: .black, linearGradients: [
                .init(colours: [.black], angle: 0)
            ], overlayImage: nil)
        ],
        backgroundImage: UIImage(named: "azurLane"),
        backgroundCenter: CGPoint(x: 1510, y: 800),
        backgroundOverlay: UIColor(white: 0, alpha: 0.3),
        enableBlur: true,
        copyrightString: "Odyssey Team\nCoolStar (Lead Developer)\nHayden Seay (Developer)\nTihmstar (Exploit Developer)\nAdam (Installation Guide)\nSlimShadyIAm (Site Contributor)\nMegaDev (Site Contributor)\nHoà Huỳnh (App Developer)"),
        
        "meridianDark": Theme(
        colorViewBackgrounds: [
            .init(baseColour: .black, linearGradients: [
                .init(colours: [.black], angle: 0)
            ], overlayImage: nil)
        ],
        backgroundImage: UIImage(named: "azurLane"),
        backgroundCenter: CGPoint(x: 1510, y: 800),
        backgroundOverlay: UIColor(white: 0, alpha: 0.3),
        enableBlur: true,
        copyrightString: "Odyssey Team\nCoolStar (Lead Developer)\nHayden Seay (Developer)\nTihmstar (Exploit Developer)\nAdam (Installation Guide)\nSlimShadyIAm (Site Contributor)\nMegaDev (Site Contributor)\nHoà Huỳnh (App Developer)"),

        "azurLane": Theme(
            colorViewBackgrounds: [
                .init(baseColour: .black, linearGradients: [
                    .init(colours: [.black], angle: 0)
                ], overlayImage: nil)
            ],
            backgroundImage: UIImage(named: "azurLane"),
            backgroundCenter: CGPoint(x: 1510, y: 800),
            backgroundOverlay: UIColor(white: 0, alpha: 0.3),
            enableBlur: true,
            copyrightString: "Odyssey Team\nCoolStar (Lead Developer)\nHayden Seay (Developer)\nTihmstar (Exploit Developer)\nAdam (Installation Guide)\nSlimShadyIAm (Site Contributor)\nMegaDev (Site Contributor)\nHoà Huỳnh (App Developer)"),
        
        "pokemon": Theme(
            colorViewBackgrounds: [
                .init(baseColour: .black, linearGradients: [
                    .init(colours: [.black], angle: 0)
                ], overlayImage: nil)
            ],
            backgroundImage: UIImage(named: "pokemon"),
            backgroundCenter: CGPoint(x: 720, y: 720),
            backgroundOverlay: UIColor(white: 0, alpha: 0.3),
            enableBlur: true,
            copyrightString: "Odyssey Team\nCoolStar (Lead Developer)\nHayden Seay (Developer)\nTihmstar (Exploit Developer)\nAdam (Installation Guide)\nSlimShadyIAm (Site Contributor)\nMegaDev (Site Contributor)\nHoà Huỳnh (App Developer)"),
        
        "overwatch": Theme(
            colorViewBackgrounds: [
                .init(baseColour: .black, linearGradients: [
                    .init(colours: [.black], angle: 0)
                ], overlayImage: nil)
            ],
            backgroundImage: UIImage(named: "overwatch"),
            backgroundCenter: CGPoint(x: 600, y: 480),
            backgroundOverlay: UIColor(white: 1, alpha: 0.1),
            enableBlur: true,
            copyrightString: "Odyssey Team\nCoolStar (Lead Developer)\nHayden Seay (Developer)\nTihmstar (Exploit Developer)\nAdam (Installation Guide)\nSlimShadyIAm (Site Contributor)\nMegaDev (Site Contributor)\nHoà Huỳnh (App Developer)"),
        
        "league": Theme(
            colorViewBackgrounds: [
                .init(baseColour: .black, linearGradients: [
                    .init(colours: [.black], angle: 0)
                ], overlayImage: nil)
            ],
            backgroundImage: UIImage(named: "league"),
            backgroundCenter: CGPoint(x: 750, y: 540),
            backgroundOverlay: UIColor(white: 0, alpha: 0.1),
            enableBlur: true,
            copyrightString: "Odyssey\nCoolStar (Lead Developer)\nHayden Seay (Developer)\nTihmstar (Exploit Developer)\nAdam (Installation Guide)\nSlimShadyIAm (Site Contributor)\nMegaDev (Site Contributor)\nHoà Huỳnh (App Developer)"),
    
        "Sierra": Theme(
            colorViewBackgrounds: [
                .init(baseColour: .black, linearGradients: [
                    .init(colours: [.black], angle: 0)
                ], overlayImage: nil)
            ],
            backgroundImage: UIImage(named: "Sierra"),
            backgroundCenter: CGPoint(x: 1440, y: 900),
            backgroundOverlay: UIColor(white: 0, alpha: 0.1),
            enableBlur: true)
    ]
    
    public var currentTheme: Theme {
        let currentThemeName = UserDefaults.standard.string(forKey: "theme") ?? "default"
        return themes[currentThemeName] ?? themes["default"]!
    }
    
    init() {
        if UserDefaults.standard.string(forKey: "theme") == nil {
            UserDefaults.standard.set("default", forKey: "theme")
        }
    }
}
