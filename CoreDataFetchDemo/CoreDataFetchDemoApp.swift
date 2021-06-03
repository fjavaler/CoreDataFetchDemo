//
//  CoreDataFetchDemoApp.swift
//  CoreDataFetchDemo
//
//  Created by Fred Javalera on 6/3/21.
//

import SwiftUI

@main
struct CoreDataFetchDemoApp: App {
  
  // Singleton instance declared and initialized in Persistence.swift is stored for use throughout app.
  let persistenceController = PersistenceController.shared
  
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environment(\.managedObjectContext, persistenceController.container.viewContext)
      // ^ Puts persistanceController into the environment to make available globally.
    }
  }
}
