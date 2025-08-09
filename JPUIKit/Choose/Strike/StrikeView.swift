//
//  StrikeView.swift
//  JP
//
//  Created by Роман Главацкий on 04.05.2025.
//

import SwiftUI

struct StrikeView: View {
    @StateObject var vm: ChooseViewModel
    var body: some View {
        ZStack {
            Image(.back)
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image(vm.chooseJoker.howDoes)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Spacer()
                
                LazyHGrid(rows: [GridItem(.flexible(minimum: 150, maximum: 150)), GridItem(.flexible(minimum: 150, maximum: 150))]) {
                   
                    ForEach(StrikeEnum.allCases, id: \.self) { strike in
                        Button {
                            vm.tapToStrikeButton(strike: strike)
                        } label: {
                            Image(strike.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                    }
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    Image(.questionText)
                        .resizable()
                        .frame(width: 300, height: 100)
                        .aspectRatio(contentMode: .fit)
                }
            }.padding()
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    StrikeView(vm: ChooseViewModel())
}
