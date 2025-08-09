//
//  ProfileView.swift
//  JP
//
//  Created by Роман Главацкий on 18.05.2025.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var vm: ChooseViewModel
    var body: some View {
        ZStack{
            Image(.back)
                .resizable()
                .ignoresSafeArea()
            VStack{
                Image(.profileText)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.horizontal, 20)
                Spacer()
                
                LazyVGrid(columns: [GridItem(),GridItem(),GridItem()]) {
                    ForEach(JPEnum.allCases , id: \.self) { jp in
                        ProfileRowView(image: vm.checkOpenedJP(jp: jp))
                    }
                }
                
                Spacer()
                
                Button {
                    vm.navigatonPath.removeLast(vm.navigatonPath.count)
                } label: {
                    Image(.backToMenuButton)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250)
                }

            }.padding()
        }
    }
}

#Preview {
    ProfileView(vm: ChooseViewModel())
}

struct ProfileRowView: View {
    var image: ImageResource?
    var body: some View {
        Image(image ?? .entry)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}
