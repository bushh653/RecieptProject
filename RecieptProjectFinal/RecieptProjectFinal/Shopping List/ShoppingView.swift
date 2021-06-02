//
//  ShoppingView.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 18/05/2021.
//

import SwiftUI
import Combine
import Foundation
import CoreData

struct ShoppingView: View {
    
    @Environment(\.managedObjectContext) var moc
    @FetchRequest(entity: ShoppingItem.entity(), sortDescriptors: []) var items: FetchedResults<ShoppingItem>
    
    @State var new: String = ""
    @Binding var barchartdata: [(String, Int)]
    @Binding var linegraphdata: [Double]
    
    var searchBar : some View {
        HStack{
            TextField("Enter in a new item", text: self.$new)
                .padding(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.green, lineWidth: 2))
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
            Button(action: {
                addNewBarChartData(data: self.new)
                addNewLineGraphData()
                let item = ShoppingItem(context: self.moc)
                item.name = new
                try? self.moc.save()
                self.new = ""
            }, label: {
                Text("Add")
                    .fontWeight(.bold)
            }).padding()
            .foregroundColor(.white)
            .background(Capsule().fill(Color.green))
        }
    }
    
    var body: some View {
        NavigationView{
            ZStack{
                Color(.black).ignoresSafeArea(.all)
                VStack {
                    searchBar.padding()
                    List {
                        ForEach(items, id: \.id) { item in
                            Text(item.name ?? "No Items")
                        }.onDelete(perform: { indexSet in
                            for index in indexSet{
                                moc.delete(items[index])
                            }
                            do{
                                try moc.save()
                            }catch{
                                print("Error")
                            }
                        })
                    }
                }
            }.navigationBarItems(trailing: EditButton().foregroundColor(.white))
            .navigationBarTitle("Shopping List")
        }
    }
    func addNewBarChartData(data: String) {
        var found = false
        for i in barchartdata{
            if data == i.0{
                let temp = i.1
                found = true
                if let idx = barchartdata.firstIndex(where: { $0.0 == data }) {
                    barchartdata[idx].1 = temp + 1
                }
            }
        }
        if found == false{
            barchartdata.append(("\(data)", 1))
        }
    }
    func addNewLineGraphData(){
        var total = 0
        for i in barchartdata{
            total += i.1
        }
        linegraphdata.append(Double(total))
    }
}
