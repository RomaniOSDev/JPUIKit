//
//  ContentView.swift
//  JP
//
//  Created by Роман Главацкий on 04.05.2025.
//

import SwiftUI

struct StartView: View {
    @State private var showChooseLevel = false
    @State private var isStart = false
    @StateObject var vm = ChooseViewModel()
    
    
    var body: some View {
        NavigationStack(path: $vm.navigatonPath) {
            ZStack{
                Image(.back)
                    .resizable()
                    .ignoresSafeArea()
                VStack{
                    Image(.startText)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    Spacer()
                    if isStart {
                        VStack{
                            Button {
                                vm.tapToChooseButton(joker: .electric)
                            } label: {
                                ZStack {
                                    Image(.backQestions)
                                        .resizable()
                                    Text("Choose Joker")
                                        .foregroundStyle(.yellow)
                                        .font(.system(size: 35, weight: .bold, design: .default))
                                }
                                .frame(width: 400, height: 190)
                                .padding(-40)
                                    
                            }
                            Button {
                                vm.tapToPlay()
                            } label: {
                                Image(.playButton)
                                    .resizable()
                        
                            }
                            
                            Button {
                                vm.navigatonPath.append(NavigationDestination.settings)
                            } label: {
                                Image(.settingbutton)
                                    .resizable()
                                    .frame(height: 110)
                                    //.aspectRatio(contentMode: .fit)
                                
                            }
                            Button {
                                vm.navigatonPath.append(NavigationDestination.info)
                            } label: {
                                Image(.infoButton)
                                    .resizable()
                                    .frame(height: 100)
                            }
                            Button {
                                vm.navigatonPath.append(NavigationDestination.profile)
                            } label: {
                                Image(.profilebutton)
                                    .resizable()
                                    .frame(height: 100)
                                    .aspectRatio(contentMode: .fit)
                            }
                        }.frame(width: 350)
                        
                        
                    }else{
                        VStack{
                            Image(.startJoker)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                            Button {
                                isStart = true
                            } label: {
                                Image(.startbutton)
                                    .resizable()
                            }
                            .frame(height: 100)
                            .padding(.top, -20)
                        }
                    }
                    
                }.padding()
                    .padding(.bottom)
            }
            .animation(.bouncy, value: isStart)
            .navigationDestination(for: NavigationDestination.self) { destination in
                switch destination {
                case .choose:
                    ChooseJPView(vm: vm)
                case .final:
                    FinalView(vm: vm)
                case .ready:
                    ReadyView(vm: vm)
                case .strike:
                    StrikeView(vm: vm)
                    
                case .game:
                    GameView(vm: vm)
                        .navigationBarBackButtonHidden(true)
                case .unlock:
                    UnlockJokerView(vm: vm)
                        .navigationBarBackButtonHidden()
                case .profile:
                    ProfileView(vm: vm)
                        .navigationBarBackButtonHidden(true)
                case .info:
                    Infoview()
                        .navigationBarBackButtonHidden()
                case .settings:
                    SettingsView(vm: vm)
                        .navigationBarBackButtonHidden()
                    
                }
            }
        }
    }
}

#Preview {
    StartView()
}
