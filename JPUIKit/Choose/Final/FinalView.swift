//
//  FinalView.swift
//  JP
//
//  Created by Роман Главацкий on 04.05.2025.
//

import SwiftUI

struct FinalView: View {
    @StateObject var vm: ChooseViewModel
    var body: some View {
        ZStack {
            Image(.back)
                .resizable()
                .ignoresSafeArea()
            VStack{
                Text("certified:")
                    .foregroundStyle(.yellow)
                    .font(.system(size: 22, weight: .regular, design: .serif))
                    .textCase(.uppercase)
                Text("\(vm.chooseJoker.rawValue) joker")
                    .foregroundStyle(.yellow)
                    .font(.system(size: 30, weight: .bold, design: .serif))
                    .textCase(.uppercase)
                    
                Text("class: \(vm.strike.rawValue)")
                    .foregroundStyle(.yellow)
                    .font(.system(size: 22, weight: .regular, design: .serif))
                    .textCase(.uppercase)
               
                
                Spacer()
                Button {
                    vm.tapToMainMenu()
                } label: {
                    Image(.mainMenuButton)
                        .resizable()
                        .frame(height: 100)
                }

            }.padding()
            Image(vm.chooseJoker.mask)
                .resizable()
                .aspectRatio(contentMode: .fit)
                //.offset(y: -55)
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    FinalView(vm: ChooseViewModel())
}
