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
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
