//
//  Gradient View.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 24/02/2021.
//

import SwiftUI

// Made a nice Linear Gradient to be the background for the card of the onboarding screen

struct GradientView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [
            Color("OxfordBlue"),
            Color("Charcoal"),
            Color("Charcoal"),
            Color("OxfordBlue")
        ]), startPoint: .top, endPoint: .bottom)
        .ignoresSafeArea(.all)
    }
}

