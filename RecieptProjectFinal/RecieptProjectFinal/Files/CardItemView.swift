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
                            .foregroundColor(.white)
                    }.padding()
                    .background(Color("Charcoal"))
                    .cornerRadius(30)
                    .padding()
                
                    Text("Receipt")
                        .bold()
                        .foregroundColor(.white)
                        .padding(.top, 40)
                    
                    Text(data)
                        .foregroundColor(.white)
                        .padding()
                
            }.frame(width: 400, height: 600, alignment: .center)
            .background(GradientView())
            .cornerRadius(30)
            .padding(.horizontal, 20)
            
        }
        
    }
}
