//
//  WineModel.swift
//  WhereToBuyWine
//
//  Created by Max Khizhniakov on 29.06.2020.
//  Copyright © 2020 Max Khizhniakov. All rights reserved.
//

import Foundation

enum WineColor: String {
    case white
    case red
    case rose
    case orange
}

enum WineType: String {
    case still
    case sparkling
}

struct WineAppearance {
    var color: WineColor
    var wineType: WineType
}

struct WineTerroir {
    var country: String
    var region: String
}

struct Wine {
    
    var photo: Data?
    
    var name: String
    var wineAppearance: WineAppearance
    var wineTerroir: WineTerroir
    
    var rating: Float?
}
