//
//  SettingsView.swift
//  JP
//
//  Created by Роман Главацкий on 18.05.2025.
//

import SwiftUI
import StoreKit

struct SettingsView: View {
    @StateObject var vm: ChooseViewModel
    @Environment(\.dismiss) var dismiss
    @State private var isAboutUsPresented: Bool = false
    var body: some View {
        ZStack{
            Image(.back)
                .resizable()
                .ignoresSafeArea()
            VStack{
                if isAboutUsPresented {
                    VStack {
                        Image(.aboutButton)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Spacer()
                        Text("Joker Parade is a colorful and engaging entertainment app. It’s designed to offer players moments of fun, challenge, and surprise. Dive into the atmosphere, explore, and enjoy the parade of imagination. No registration or personal data is required. Just launch and play.")
                            .font(.system(size: 30, weight: .bold, design: .rounded))
                            .foregroundStyle(.white)
                            .multilineTextAlignment(.center)
                        Spacer()
                            
                    }
                }else{
                    VStack{
                        Image(.settingbutton)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        Spacer()
                        
                        Button {
                            SKStoreReviewController.requestReview()
                        } label: {
                            Image(.rateUsButton)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 250)
                        }
                        Button {
                            if let url = URL(string: "https://www.termsfeed.com/live/b7eb7eec-d8dd-42a4-9c87-933d93bc8f4d") {
                                UIApplication.shared.open(url)
                            }
                        } label: {
                            Image(.privacyButton)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 250)
                        }

                        Button {
                           isAboutUsPresented = true
                        } label: {
                            Image(.aboutButton)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 250)
                        }

                        Spacer()
                    }
                }
                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    Image(.backToMenuButton)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 100)
                }

                
            }.padding()
        }
    }
}

#Preview {
    SettingsView(vm: ChooseViewModel())
}
