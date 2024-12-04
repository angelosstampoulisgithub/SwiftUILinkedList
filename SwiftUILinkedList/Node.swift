//
//  Node.swift
//  SwiftUILinkedList
//
//  Created by Angelos Staboulis on 5/12/24.
//

import Foundation
class Node<T> {
    var value: T
    var next: Node<T>?
    
    init(value: T, next: Node<T>? = nil) {
        self.value = value
        self.next = next
    }
}

