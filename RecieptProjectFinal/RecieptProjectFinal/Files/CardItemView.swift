//
//  CardItemView.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 24/02/2021.
//

import SwiftUI

struct CardItemView: View {
    
    let data: String
    @ObservedObject var linkedList: LinkedList
    
    var body: some View {
      
        VStack{
            
            ScrollView{
                    
                    Button {
                        linkedList.remove(data: data)
                        linkedList.traverse()
                    } label: {
                        Text("Delete Receipt")
                    }
                
                    Text("Receipt")
                        .bold()
                        .padding(.top, 40)
                    
                    Text(data)
                        .foregroundColor(Color(#colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)))
                        .padding()
                
            }.frame(width: 400, height: 600, alignment: .center)
            .background(GradientView())
            .cornerRadius(30)
            .padding(.horizontal, 20)
            
        }
        
    }
}
