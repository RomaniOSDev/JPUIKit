//
//  ChooseViewModel.swift
//  JP
//
//  Created by Роман Главацкий on 04.05.2025.
//



import Foundation
import SwiftUI

final class ChooseViewModel: ObservableObject {
    @Published var chooseJoker: JokerType = .electric
    @Published var strike: StrikeEnum = .precision
    @Published var simpleJP: JPEnum = .crystal
    @Published var navigatonPath = NavigationPath()
    
    @Published var selectedPageQuesttion: Int = 1
    
    func getRandomJP(){
        simpleJP = JPEnum.allCases.randomElement() ?? .crystal
    }
    
    func checkOpenedJP(jp: JPEnum) -> ImageResource? {
            if UserDefaults.standard.bool(forKey: jp.rawValue) {
                return jp.image
            }else{
                return nil
            }
    }
    
    //MARK: - Tap to Button
    func tapToChooseButton(joker: JokerType){
        chooseJoker = joker
        navigatonPath.append(NavigationDestination.strike)
    }
    
    func tapToStrikeButton(strike: StrikeEnum){
        self.strike = strike
        navigatonPath.append(NavigationDestination.ready)
    }
    
    func tapToContinueButton(){
        navigatonPath.append(NavigationDestination.final)
    }
    
    func tapToMainMenu(){
        navigatonPath.removeLast(navigatonPath.count)
    }
    
    func tapToNextAfterQuestion(){
        navigatonPath.removeLast(navigatonPath.count)
        UserDefaults.standard.set(true, forKey: simpleJP.rawValue)
        
    }
    func tapToPlay(){
        navigatonPath.append(NavigationDestination.game)
    }
    func tapToUnlock(){
        navigatonPath.append(NavigationDestination.unlock)
        selectedPageQuesttion = 1
    }
}
