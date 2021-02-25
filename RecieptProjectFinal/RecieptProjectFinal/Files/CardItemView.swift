//
//  CardItemView.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 24/02/2021.
//

import SwiftUI

struct CardItemView: View {
    
    let data: String
    
    var body: some View {
        
        VStack{
            
            Text("Item")
                .bold()
            
            Text(data)
                .foregroundColor(Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)))
                .padding()
            
        }
        
    }
}
