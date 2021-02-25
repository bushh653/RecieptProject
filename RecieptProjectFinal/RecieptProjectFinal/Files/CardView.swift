//
//  CardView.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 24/02/2021.
//

import SwiftUI

struct CardView: View {
    
    @State private var data = ""
    @Binding var recognizedText: String
    var linkedList = LinkedList(head: Node(data: "This is an example reciept"))
    
    var body: some View {
        
        VStack{
            
            HStack{
                
                let array = linkedList.traverse()
                ForEach(0..<linkedList.length(), id: \.self) { index in
                    CardItemView(data: array[index])
                }
                
            }
            VStack{
                
                TextField("Enter receipt", text: $data)
                
                HStack{
                    
                    Button {
                        linkedList.add(data: recognizedText)
                        print(linkedList.traverse())
                    } label: {
                        Text("Add Receipt")
                    }
                    
                    Button {
                        linkedList.remove(data: data)
                    } label: {
                        Text("Delete Receipt")
                    }
                    
                }
                
            }

            
        }
        
    }
}
