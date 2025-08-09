//
//  GameModel.swift
//  JP
//
//  Created by Роман Главацкий on 18.05.2025.
//
import Foundation

struct JPModel: Identifiable {
    var id = UUID()
    var question: String
    var answers1: String
    var answers2: String
    
    static var allCases: [JPModel] = [JPModel(question: "LUCK OR SKILL?", answers1: "LUCK", answers2: "SKILL"),
    JPModel(question: "FAST OR SLOW", answers1: "FAST", answers2: "SLOW"),
                                      JPModel(question: "DARK OR LIGHT", answers1: "DARK", answers2: "LIGHT"),
                                      JPModel(question: "HARD OR EASY", answers1: "HARD", answers2: "EASY"),
                                      JPModel(question: "WATER OR FIRE", answers1: "WATER", answers2: "FIRE"),
                                      JPModel(question: "GOOD OR BAD", answers1: "GOOD", answers2: "BAD"),
                                      JPModel(question: "LOVE OR HATE", answers1: "LOVE", answers2: "HATE"),
                                      JPModel(question: "RIGHT OR WRONG", answers1: "RIGHT", answers2: "WRONG"),
                                      JPModel(question: "HAPPY OR SAD", answers1: "HAPPY", answers2: "SAD"),
                                      JPModel(question: "YES OR NO", answers1: "YES", answers2: "NO")
    ]
}
