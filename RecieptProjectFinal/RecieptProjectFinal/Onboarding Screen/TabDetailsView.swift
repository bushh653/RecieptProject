//
//  TabDetailsView.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 24/02/2021.
//

import SwiftUI

//Stacks the items in tabs to display a simple VStack of the information

struct TabDetailsView: View {
    
    // The index refers to which page in the tabs array we are looking at
    
    let index: Int
    
    var body: some View {
        
        VStack{
            
            Image(tabs[index].image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
                .padding(.bottom)
            
            Text(tabs[index].title)
                .font(.title)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .bold()
            
            Text(tabs[index].text)
                .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
                .padding()
                
        }
        
    }
    
}
