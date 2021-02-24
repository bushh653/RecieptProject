//
//  WalkthroughView.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 24/02/2021.
//

import SwiftUI

// Create the onboarding screens

struct WalkthroughView: View {
    
    @State private var selection = 0
    @Binding var onboarding: Bool
    
    var body: some View {
        ZStack{
            VStack{
                PageTabView(selection: $selection, onboarding: $onboarding)
                    .padding()
                AccountButtonView(onboarding: $onboarding)
            }
        }
        .transition(.move(edge: .bottom))
    }
}
