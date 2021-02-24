//
//  PageTabView.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 24/02/2021.
//

import SwiftUI

// Created a Card View that takes the TabDetailsView at each index and formats it into a card

struct PageTabView: View {
    
    @Binding var selection: Int
    @Binding var onboarding: Bool
    
    var body: some View {
        
        TabView(selection: $selection){
            
            ForEach(tabs.indices, id: \.self) { index in
                TabDetailsView(index: index)
            }
            
        }.tabViewStyle(PageTabViewStyle())
        .frame(width: 400, height: 600, alignment: .center)
        .background(GradientView())
        .cornerRadius(30)
        .padding(.horizontal, 20)
        
    }
}

