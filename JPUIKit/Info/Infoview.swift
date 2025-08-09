//
//  Infoview.swift
//  JP
//
//  Created by Роман Главацкий on 18.05.2025.
//

import SwiftUI

struct Infoview: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            Image(.back)
                .resizable()
                .ignoresSafeArea()
            VStack{
                Image(.infoButton)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("This app does not collect personal data. It is intended for enjoyment.  All content is purely fictional and for fun.")
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
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
    Infoview()
}
