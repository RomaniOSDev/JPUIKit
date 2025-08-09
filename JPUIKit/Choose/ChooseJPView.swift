//
//  ChooseJPView.swift
//  JP
//
//  Created by Роман Главацкий on 04.05.2025.
//

import SwiftUI

struct ChooseJPView: View {
    
    @StateObject var vm: ChooseViewModel
    
    var body: some View {
        ZStack {
            Image(.back)
                .resizable()
                .ignoresSafeArea()
            VStack {
                Image(.chooseText)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .offset(y: -40)
                
                Spacer()
                HStack(alignment: .bottom) {
                    ForEach(JokerType.allCases , id: \.self) { joker in
                        Button {
                            vm.tapToChooseButton(joker: joker)
                        } label: {
                            Image(joker.buttonImage)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                        }
                    }
                }
                Spacer()
                Image(.cupBack)
                    .resizable()
                    .padding(-20)
                    .aspectRatio(contentMode: .fit)
            }.padding()
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    ChooseJPView(vm: ChooseViewModel())
}
