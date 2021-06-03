//
//  CoreDataFetchDemoApp.swift
//  CoreDataFetchDemo
//
//  Created by Fred Javalera on 6/3/21.
//

import SwiftUI

@main
struct CoreDataFetchDemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
