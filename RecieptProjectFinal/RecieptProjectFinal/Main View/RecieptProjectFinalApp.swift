//
//  RecieptProjectFinalApp.swift
//  RecieptProjectFinal
//
//  Created by Harry Bush on 24/02/2021.
//

import SwiftUI
import CoreData

@main
struct RecieptProjectFinalApp: App {
    let persistenceController = PersistenceController.shared
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
