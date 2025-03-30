//
//  SwiftUI+Font.swift
//  SwiftUITutorial
//
//  Created by Admin on 3/22/25.
//

import SwiftUI

extension Font{
    static func poppins(fontStyle: Font.TextStyle = .body, fontWeight: Font.Weight = .regular) -> Font{
        return Font.custom(CustomFont(weight: fontWeight).rawValue, size: fontStyle.size)
    }
}

extension Font.TextStyle{
    var size : CGFloat{
        switch self {
        case .largeTitle : return 34
        case .title : return 30
        case .title2 : return 22
        case .title3 : return 20
        case .headline : return 18
        case .body : return 16
        case .callout : return 15
        case .subheadline : return 14
        case .footnote : return 13
        case .caption : return 12
        case .caption2 : return 11
        @unknown default : return 8
        }
    }
}

enum CustomFont : String{
    case regular = "Poppins-Regular"
    case semiBold = "Poppins-SemiBold"
    
    init(weight : Font.Weight){
        switch weight
        {
        case .regular:
            self = .regular
        case .semibold:
            self = .semiBold
            
        default:
            self = .regular
        }
    }
}
