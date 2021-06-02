//
//  CardView.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 24/02/2021.
//

import SwiftUI

struct CardView: View {
    
    @Binding var recognizedText: String
    @State var searchText: String = ""
    @ObservedObject var linkedList = LinkedList(head: Node(data: "This is an example reciept, please delete this!"))
    
    var body: some View {
        ZStack{
            Color(.black).ignoresSafeArea(.all)
            VStack{
                SearchBar(linkedList: linkedList, searchText: $searchText).onChange(of: searchText) { newValue in
                    linkedList.traverse(searchText: searchText)
                }
                ScrollView(.horizontal){
                    HStack{
                        Button {
                            linkedList.add(data: recognizedText)
                            linkedList.traverse(searchText: searchText)
                        } label: {
                            Text("Add Receipt")
                        }.padding()
                        .foregroundColor(.white)
                        .background(Color("Charcoal"))
                        .cornerRadius(30)
                        ForEach(linkedList.traversal, id: \.self) { value in
                            CardItemView(data: value, linkedList: linkedList, searchText: $searchText)
                        }
                    }
                }
            }
        }.onAppear(perform: {
            linkedList.traverse(searchText: searchText)
        })
    }
}
