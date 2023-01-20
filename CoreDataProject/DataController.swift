//
//  DataController.swift
//  CoreDataProject
//
//  Created by Suyash Lunawat on 20/01/23.
//

import Foundation
import CoreData

import CoreData
import Foundation



class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "CoreDataProject")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core data failed to load: \(error.localizedDescription)")
                   return
            }
            self.container.viewContext.mergePolicy = NSMergePolicy.mergeByPropertyObjectTrump
        }
    }
}

