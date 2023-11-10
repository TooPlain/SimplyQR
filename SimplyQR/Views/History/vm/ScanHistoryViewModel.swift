//           
//  ScanHistoryViewModel.swift          
//  SimplyQR 
// 
//  Created by TooPlain on 10/30/23.
//

import Foundation
import CoreData

class ScanHistoryViewModel: ObservableObject {
    private let viewContext = DataController.shared.viewContext
    @Published var scanHistoryArray: [ScanHistory] = []
    
    init() {
        fetchScanHistory()
    }
    
    func fetchScanHistory() {
        let req = NSFetchRequest<ScanHistory>(entityName: "ScanHistory")
        
        do {
            scanHistoryArray = try viewContext.fetch(req)
        }catch {
            print("Failed to Fetch Scan History from coredata")
        }
    }
    
    func createScanRecord(name: String?,scandata: String,date: Date) {
        let record = ScanHistory(context: viewContext)
        record.id = UUID()
        record.name = name
        record.scancontent = scandata
        record.scantime = date
        
        save()
        self.fetchScanHistory()
    }
    
    func save() {
        do{
            try viewContext.save()
        }catch {
            print("Failed to save data")
        }
    }
    
}
