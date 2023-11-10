//           
//  DataController.swift          
//  SimplyQR 
// 
//  Created by TooPlain on 11/10/23.
//

import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "SimplyQR")
    
    init() {
        container.loadPersistentStores { desciption,  error in
            if let error = error {
                print("Core Data Failed to load: \(error.localizedDescription)")
            }
        }
    }
}
