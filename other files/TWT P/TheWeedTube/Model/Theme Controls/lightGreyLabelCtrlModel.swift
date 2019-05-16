//
//  ThemeView.swift
//  TheWeedTube
//
//  Created by Sagar Moradia on 07/02/19.
//  Copyright © 2019 Sagar Moradia. All rights reserved.
//

import UIKit

class lightGreyLabelCtrlModel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        
        var dictTheme: Themes!
        
        for theme in GLOBAL.sharedInstance.arrThemes {
            if theme.themeID == GLOBAL.sharedInstance.strSelectedThemeID && theme.themeName == GLOBAL.sharedInstance.strSelectedThemeName{
                dictTheme = theme
            }
        }
        
        
        //Background Color
        let r = dictTheme.themeProperties?.lightGreyLabelCtrl?.labelBackgroundColor?.r ?? "0"
        let g = dictTheme.themeProperties?.lightGreyLabelCtrl?.labelBackgroundColor?.g ?? "0"
        let b = dictTheme.themeProperties?.lightGreyLabelCtrl?.labelBackgroundColor?.b ?? "0"
        let a = dictTheme.themeProperties?.lightGreyLabelCtrl?.labelBackgroundColor?.a ?? "1"
        
        let bgColor = UIColor.init(red: r, green: g, blue: b, alpha: a)
        self.backgroundColor = bgColor
        
        //Background Color
        let r1 = dictTheme.themeProperties?.lightGreyLabelCtrl?.labelForegroundColor?.r ?? "0"
        let g1 = dictTheme.themeProperties?.lightGreyLabelCtrl?.labelForegroundColor?.g ?? "0"
        let b1 = dictTheme.themeProperties?.lightGreyLabelCtrl?.labelForegroundColor?.b ?? "0"
        let a1 = dictTheme.themeProperties?.lightGreyLabelCtrl?.labelForegroundColor?.a ?? "1"
        
        let txtColor = UIColor.init(red: r1, green: g1, blue: b1, alpha: a1)
        self.textColor = txtColor
    }
    
}
