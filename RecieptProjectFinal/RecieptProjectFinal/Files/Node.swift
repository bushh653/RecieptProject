//
//  Node.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 24/02/2021.
//

import Foundation

class Node{
    
    //PROPERTIES
    
    var data: String
    var next: Node?
    
    //METHODS
    
    init(data: String) {
        self.data = data
        self.next = nil
    }
}
