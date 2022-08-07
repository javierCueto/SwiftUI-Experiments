//
//  SwiftUI_ExperimentsApp.swift
//  SwiftUI Experiments
//
//  Created by Javier Cueto on 05/08/22.
//

import SwiftUI

@main
struct SwiftUI_ExperimentsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ScrollViewReaderExample()
//            LazyHGridPinned()
//            LazyGridExample()
//            GeometryReaderExample()
//            ZStackExample()
//            LazyHStack_HeadersFooters()
//            LazyHStack_WithScrolling()
//            LazyVStack_WithScrolling()
//           Features1()
//            ContentView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
