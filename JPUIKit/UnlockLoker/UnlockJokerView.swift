//
//  UnlockJokerView.swift
//  JP
//
//  Created by Роман Главацкий on 18.05.2025.
//

import SwiftUI

struct UnlockJokerView: View {
    @ObservedObject var vm: ChooseViewModel
    var body: some View {
        ZStack{
            Image(.back)
                .resizable()
                .ignoresSafeArea()
            Image(vm.simpleJP.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
            
            VStack{
                Text("YOU'VE UNLOCKED\n THE \(vm.simpleJP.rawValue) JOKER")
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                Button {
                    vm.tapToNextAfterQuestion()
                } label: {
                    Image(.nextButton)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 252, height: 168)
                }

            }.padding()
        }
        .onAppear {
            vm.getRandomJP()
        }
    }
}

#Preview {
    UnlockJokerView(vm: ChooseViewModel())
}
