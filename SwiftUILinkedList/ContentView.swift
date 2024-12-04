//
//  ContentView.swift
//  SwiftUILinkedList
//
//  Created by Angelos Staboulis on 5/12/24.
//

import SwiftUI

struct ContentView: View {
    @State var linkedinList:LinkedList<Int>
    @State var listArray:[Int]
    var body: some View {
        VStack {
            List(listArray,id:\.self){item in
                Text(String(describing:item))
            }
        }.onAppear(perform: {
            createLinkedList()
            fillList()
        })
        .padding()
    }
    func createLinkedList(){
        linkedinList.push(100)
        linkedinList.push(200)
        linkedinList.push(300)
        linkedinList.push(400)
        linkedinList.push(500)
    }
    func fillList(){
        guard let firstItem = linkedinList.pop() else{
            return
        }
        guard let secondItem = linkedinList.pop() else{
            return
        }
        guard let thirdItem = linkedinList.pop() else{
            return
        }
        guard let fourthItem = linkedinList.pop() else{
            return
        }
        guard let fifthItem = linkedinList.pop() else{
            return
        }
        listArray.append(firstItem)
        listArray.append(secondItem)
        listArray.append(thirdItem)
        listArray.append(fourthItem)
        listArray.append(fifthItem)
        
    }
}

#Preview {
    ContentView(linkedinList: .init(), listArray: .init())
}
