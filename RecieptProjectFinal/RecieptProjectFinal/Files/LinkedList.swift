//
//  LinkedList.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 24/02/2021.
//

import Foundation

class LinkedList: ObservableObject{
    
    //PROPERTIES
    
    var head: Node?
    @Published var traversal: [String] = []
    
    //METHODS
    
    func traverse(){
        var array: Array<String> = []
        var top_of_list = self.head
        while top_of_list != nil {
            array.append(top_of_list!.data)
            if top_of_list?.next == nil{
                top_of_list = nil
            }
            else{
                top_of_list = top_of_list!.next
            }
        }
        self.traversal = array
    }
    
    func length() -> Int{
        var number = 0
        var finished = false
        var top_of_list = self.head
        while finished != true{
            if top_of_list != nil {
                number += 1
                top_of_list = top_of_list!.next
            }
            else{
                finished = true
            }
        }
        return number
    }
    
    func add(data: String){
        let top_of_list = self.head
        let newNode = Node(data: data)
        newNode.next = top_of_list?.next
        top_of_list?.next = newNode
    }
    
    func remove(data: String){
        var current = self.head
        var previous: Node?
        var found = false
        while found != true{
            if current?.data == data{
                found = true
            }
            else{
                previous = current!
                current = current?.next
            }
        }
        if previous == nil{
            self.head = current?.next
        }
        else{
            previous?.next = current?.next
        }
    }
    
    //INIT
    
    init(head: Node) {
        self.head = head
    }
    
}
