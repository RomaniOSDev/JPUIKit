//
//  StrikeEnum.swift
//  JP
//
//  Created by Роман Главацкий on 04.05.2025.
//

import Foundation

enum StrikeEnum: String, CaseIterable {
    case precision
    case risk
    case surprise
    case focus
    case chaos
    case logic
    
    var image: ImageResource{
        switch self {
            case .precision:
            return .pecision
        case .risk:
            return .risk
        case .surprise:
            return .surprise
        case .focus:
            return .focus
        case .chaos:
            return .chaos
        case .logic:
            return .logic
        }
    }
}
