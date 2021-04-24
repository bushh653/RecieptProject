//
//  CardView.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 24/02/2021.
//

import SwiftUI

struct CardView: View {
    
    @Binding var recognizedText: String
    @State var linkedList = LinkedList(head: Node(data: "This is an example reciept"))
    
    var body: some View {
        
        VStack{
            
            HStack{
                
                
                //ForEach(0..<linkedList.length(), id: \.self) { index in
                    //CardItemView(data: index)
               // }
                
            }
            VStack{
                    
                Button {
                    linkedList.add(data: recognizedText)
                    print(linkedList.traverse())
                } label: {
                    Text("Add Receipt")
                }
                
            }

            
        }
        
    }
    
}
