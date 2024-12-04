//
//  SwiftUILinkedListApp.swift
//  SwiftUILinkedList
//
//  Created by Angelos Staboulis on 5/12/24.
//

import SwiftUI

@main
struct SwiftUILinkedListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(linkedinList: .init(), listArray: []).frame(width: 520, height: 250)
                .windowResizeBehavior(.disabled)
        }.windowResizability(.contentSize)
    }
}
