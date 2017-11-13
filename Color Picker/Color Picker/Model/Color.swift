//
//  Color.swift
//  Color Picker
//
//  Created by David Auger on 11/13/17.
//  Copyright © 2017 David Auger. All rights reserved.
//

import UIKit

struct Color
{
    let name: String
    let value: UIColor
    // Computed property of the Hex value
    var hex: String?
    {
        return self.value.toHex
    }
    // Computed property of the RGB value
    var rgb: String?
    {
        return self.value.toRGB
    }
}

extension UIColor
{
    // Creates a String containing the Hexadecimal value of the current UIColor
    var toHex: String
    {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        
        self.getRed( &r, green: &g, blue: &b, alpha: &a )
        
        return String(
            format: "#%02X%02X%02X",
            Int( r * 0xff ),
            Int( g * 0xff ),
            Int( b * 0xff )
        )
    }
    
    // Creates a String containing the RGB value of the current UIColor
    var toRGB: String
    {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        
        self.getRed( &r, green: &g, blue: &b, alpha: &a )
        
        return String(
            format: "rgb( %d, %d, %d )",
            Int( r * 255.0 ),
            Int( g * 255.0 ),
            Int( b * 255.0 )
        )
    }
}
