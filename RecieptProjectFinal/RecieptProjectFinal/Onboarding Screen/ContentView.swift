//
//  ContentView.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 24/02/2021.
//

import SwiftUI

//Checks if we should display the onboarding screens with the value in the AppStorage or goes to MainView

struct ContentView: View {
    
    @AppStorage("onboarding") var onboarding = true
    
    var body: some View {
        Group{
            if onboarding{
                ZStack{
                    VStack{
                        WalkthroughView(onboarding: $onboarding)
                    }
                }
            }
            else{
                MainView()
            }
        }
    }
}
