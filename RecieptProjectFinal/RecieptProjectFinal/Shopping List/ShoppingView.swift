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
            Button(action: self.addNewToDo, label: {
                Text("Add")
                    .fontWeight(.bold)
            })
        }
    }
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack {
                    searchBar.padding()
                    List {
                        ForEach(self.taskStore.tasks) { task in
                            Text(task.toDoItem)
                        }.onMove(perform: self.move)
                        .onDelete(perform: self.delete)
                    }
                }
            }.navigationBarItems(trailing: EditButton())
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
}
