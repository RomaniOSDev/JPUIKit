//
//  JokersEmun.swift
//  JP
//
//  Created by Роман Главацкий on 04.05.2025.
//

import Foundation

enum JokerType: String, CaseIterable {
    case fire
    case frost
    case electric
    
    var mask: ImageResource {
        switch self {
            
        case .fire:
            return .fireMask
        case .frost:
            return .frostMask
        case .electric:
            return .electroMask
        }
    }
    
    var image: ImageResource {
        switch self {
        case .fire:
            return .fire
        case .frost:
            return .frost
        case .electric:
            return .electro
        }
    }
    
    var readytext: ImageResource {
        switch self {
        case .fire:
            return .readyFire
        case .frost:
            return .readyFrost
        case .electric:
            return .readyElctro
        }
    }
    
    var buttonImage: ImageResource {
        switch self {
        case .fire:
            return .firebutton
            case .frost:
            return .frostbbutton
        case .electric:
            return .electricbutton
        }
    }
    
    var howDoes: ImageResource {
       switch self {
       case .fire:
            return .howDoesFire
        case .frost:
            return .howDoesFrost
        case .electric:
            return .howDoesElectric
        }
    }
}
