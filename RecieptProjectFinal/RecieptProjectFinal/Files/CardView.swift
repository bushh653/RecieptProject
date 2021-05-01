//
//  CardView.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 24/02/2021.
//

import SwiftUI

struct CardView: View {
    
    @Binding var recognizedText: String
    @ObservedObject var linkedList = LinkedList(head: Node(data: "This is an example reciept"))
    
    var body: some View {
        
        VStack{
            
            HStack{
                
                ForEach(linkedList.traversal, id: \.self) { value in
                    CardItemView(data: value)
               }
                
            }
            VStack{
                    
                Button {
                    linkedList.add(data: recognizedText)
                    linkedList.traverse()
                    print(linkedList.traverse())
                } label: {
                    Text("Add Receipt")
                }
                
            }

            
        }
        
    }
    
}
