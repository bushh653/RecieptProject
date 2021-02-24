//
//  CardView.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 24/02/2021.
//

import SwiftUI

struct CardView: View {
    
    let linkedList = LinkedList(head: Node(data: "This is an example reciept"))
    
    var body: some View {
        
        HStack{
            let array = linkedList.traverse()
            ForEach(0..<linkedList.length(), id: \.self) { index in
                CardItemView(data: array[index])
            }
        }
        
    }
}
