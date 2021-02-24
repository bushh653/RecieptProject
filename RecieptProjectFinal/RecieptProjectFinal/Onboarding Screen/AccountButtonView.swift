//
//  AccountButtonView.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 24/02/2021.
//

import SwiftUI

// Button to dimiss the onboarding screen

struct AccountButtonView: View {
    
    //Connects to the AppStorage to see whether the onboading screens are shown or not
    
    @Binding var onboarding: Bool
    
    var body: some View {
        
        VStack{
            
            Button(action: {
                dismiss()
            }, label: {
                Text("Let's Get Going")
                    .bold()
                    .font(.title2)
                    .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                    .padding()
            })
            .background(Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)))
            .cornerRadius(30)
            
        }
        
    }
    
    //METHOD
    
    func dismiss(){
        withAnimation {
            onboarding.toggle()
        }
    }
    
}
