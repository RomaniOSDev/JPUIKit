//
//  ReadyView.swift
//  JP
//
//  Created by Роман Главацкий on 04.05.2025.
//

import SwiftUI

struct ReadyView: View {
    @StateObject var vm: ChooseViewModel
    var body: some View {
        ZStack {
            Image(.back)
                .resizable()
                .ignoresSafeArea()
            VStack{
                Image(vm.chooseJoker.readytext)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Image(vm.chooseJoker.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                
                Button {
                    vm.tapToContinueButton()
                } label: {
                    Image(.continuebutton)
                        .resizable()
                        .frame(height: 100)
                }

            }.padding()
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    ReadyView(vm: ChooseViewModel())
}
