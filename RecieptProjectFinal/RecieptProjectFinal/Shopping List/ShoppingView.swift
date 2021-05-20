//
//  ShoppingView.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 18/05/2021.
//

import SwiftUI
import Combine
import Foundation


struct Task: Identifiable{
    var id = UUID()
    var toDoItem = String()
}

class TaskStore: ObservableObject{
    @Published var tasks = [Task]()
}

struct ShoppingView: View {
    
    @StateObject var taskStore = TaskStore()
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    @State var new: String = ""
    @State var errorTitle = ""
    @State var errorMessage = ""
    @State private var showingError = false
    
    var searchBar : some View {
        HStack{
            TextField("Enter in a new item", text: self.$new)
                .padding(10)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.green, lineWidth: 2))
                .background(RoundedRectangle(cornerRadius: 10).fill(Color.white))
            Button(action: {
                addNewBarChartData(data: self.new)
                self.addNewToDo()
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
                        ForEach(self.taskStore.tasks) { task in
                            Text(task.toDoItem)
                        }.onMove(perform: self.move)
                        .onDelete(perform: self.delete)
                    }
                }
            }.navigationBarItems(trailing: EditButton().foregroundColor(.white))
            .navigationBarTitle("Shopping List")
        }
    }
    func move(from source : IndexSet, to destination : Int) {
        taskStore.tasks.move(fromOffsets: source, toOffset: destination)
    }
    func delete(at offsets : IndexSet) {
        taskStore.tasks.remove(atOffsets: offsets)
    }
    func addNewToDo() {
        taskStore.tasks.append(Task(toDoItem: new))
        self.new = ""
        //Add auto generated id in the future
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
}
