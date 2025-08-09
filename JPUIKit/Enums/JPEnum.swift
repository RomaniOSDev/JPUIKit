//
//  JPEnum.swift
//  JP
//
//  Created by Роман Главацкий on 18.05.2025.
//

import Foundation

enum JPEnum: String, CaseIterable {
    case crystal
    case electric
    case energy
    case fire
    case lucky
    case shadow
    case stone
    case sun
    case water
    
    var image: ImageResource {
        switch self {
            
        case .crystal:
                .crystal
        case .electric:
                .elecric
        case .energy:
                .energy
        case .fire:
                .fire
        case .lucky:
                .lucky
        case .shadow:
                .shadow
        case .stone:
                .stone
        case .sun:
                .sun
        case .water:
                .water            
        }
    }
}
