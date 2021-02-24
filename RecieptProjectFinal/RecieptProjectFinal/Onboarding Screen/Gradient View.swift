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
            Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)),
            Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1))
        ]), startPoint: .top, endPoint: .bottom)
        .ignoresSafeArea(.all)
    }
}

