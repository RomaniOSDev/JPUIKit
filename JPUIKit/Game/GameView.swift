//
//  MenuView.swift
//  JP
//
//  Created by Роман Главацкий on 13.05.2025.
//

import SwiftUI

struct GameView: View {
    @StateObject var vm: ChooseViewModel
    @State private var jpquestion = JPModel.allCases
    @State private var selectedIndex: Int = 1
    
    @State private var chooseAnswer1: Bool = false
    @State private var chooseAnswer2: Bool = false
    
    @Environment(\.dismiss) var dismiss
    var body: some View {
        TabView(selection: $vm.selectedPageQuesttion) {
            ZStack{
                Image(.back)
                    .resizable()
                    .ignoresSafeArea()
                VStack{
                    HStack{
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "xmark.circle")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .foregroundStyle(.red)
                        }
                        Spacer()

                    }
                    .padding()
                    QestionView(number: vm.selectedPageQuesttion)
                    
                    Text(jpquestion[vm.selectedPageQuesttion-1].question)
                        .foregroundStyle(.white)
                        .font(.system(size: 36, weight: .bold, design: .default))
                    
                    AnswerView(anser: jpquestion[vm.selectedPageQuesttion-1].answers1)
                        .shadow(color: .red, radius: chooseAnswer1 ? 10 : 0)
                        .onTapGesture {
                            if chooseAnswer2{
                                chooseAnswer2 = false
                            }
                            chooseAnswer1 = true
                        }
                    
                    AnswerView(anser: jpquestion[vm.selectedPageQuesttion-1].answers2)
                        .shadow(color: .red, radius: chooseAnswer2 ? 10 : 0)
                        .onTapGesture {
                            if chooseAnswer1{
                                chooseAnswer1 = false
                            }
                            chooseAnswer2 = true
                        }
                    
                    
                    Spacer()
                    
                    Button {
                        nextQuestion()
                        chooseAnswer1 = false
                        chooseAnswer2 = false
                    } label: {
                        Image(.nextButton)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 250, height: 160)
                    }
                    .opacity(chooseAnswer1 || chooseAnswer2 ? 1 : 0.5)
                    .disabled(!chooseAnswer1 && !chooseAnswer2)
                    
                }
            }
            .navigationBarBackButtonHidden()
            .animation(.bouncy, value: vm.selectedPageQuesttion)
        }
    }
    private func nextQuestion() {
        if vm.selectedPageQuesttion < jpquestion.count {
            vm.selectedPageQuesttion += 1
        }else{
            vm.tapToUnlock()
        }
        
    }
}

#Preview {
    GameView(vm: ChooseViewModel())
}

struct AnswerView: View {
    var anser: String
    var body: some View {
        ZStack{
            Image(.backAnswer)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.vertical, -40)
                .padding(.horizontal,100)
            Text(anser)
                .font(.system(size: 30, weight: .bold, design: .default))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
    }
}

struct QestionView: View {
    var number: Int
    var body: some View {
        ZStack{
            Image(.backQestions)
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("QUESTION\n№\(number)")
                .font(.system(size: 30, weight: .bold, design: .default))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
        }
    }
}
