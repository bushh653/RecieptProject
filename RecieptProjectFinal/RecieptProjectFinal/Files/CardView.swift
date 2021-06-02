//
//  CardView.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 24/02/2021.
//

import SwiftUI

struct CardView: View {
    
    @Binding var recognizedText: String
    @State var example = "Hi"
    @ObservedObject var linkedList = LinkedList(head: Node(data: "This is an example reciept, please delete this!"))
    
    var body: some View {
        ZStack{
            Color(.black).ignoresSafeArea(.all)
            ScrollView(.horizontal){
                HStack{
                    Button {
                        linkedList.add(data: recognizedText)
                        linkedList.traverse()
                    } label: {
                        Text("Add Receipt")
                    }.padding()
                    .foregroundColor(.white)
                    .background(Color("Charcoal"))
                    .cornerRadius(30)
                    ForEach(linkedList.traversal, id: \.self) { value in
                        CardItemView(data: value, linkedList: linkedList)
                    }
                }
            }
        }
    }
}
