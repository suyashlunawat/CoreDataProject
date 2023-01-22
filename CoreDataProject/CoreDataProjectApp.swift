//
//  CoreDataProjectApp.swift
//  CoreDataProject
//
//  Created by Suyash Lunawat on 20/01/23.
//
import CoreData
import SwiftUI

@main
struct CoreDataProjectApp: App {
   @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView3()
                .environment((\.managedObjectContext), dataController.container.viewContext)
        }
    }
}
