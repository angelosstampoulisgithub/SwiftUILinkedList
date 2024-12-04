//
//  LnkedList.swift
//  SwiftUILinkedList
//
//  Created by Angelos Staboulis on 5/12/24.
//

import Foundation
struct LinkedList<T> {
    var head: Node<T>?
    var tail: Node<T>?
    
    var isEmpty: Bool { head == nil }
    
    mutating func push(_ value: T) {
        
        head = Node(value: value, next: head)
        
        if tail == nil {
            tail = head
        }
    }
    
    mutating func pop() -> T? {
        
        defer {
            head = head?.next
            if isEmpty {
                tail = nil
            }
        }
        return head?.value
    }
    
}
