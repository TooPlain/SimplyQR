//           
//  ScanHistoryView.swift          
//  SimplyQR 
// 
//  Created by TooPlain on 10/30/23.
//

import SwiftUI

// Create a Scrollable Stack with a list of prior scan results and display each scan with Date, time and result.

struct ScanHistoryView: View {
   // @ObservedObject var viewModel : ScanHistoryViewModel
    
    //let sort = NSSortDescriptor(key: "date_", ascending: true)
    @FetchRequest(sortDescriptors: []) var scanhistories: FetchedResults<ScanHistory>
    @Environment(\.managedObjectContext) var moc
    
//    init() {
//        self.viewModel = ScanHistoryViewModel()
//        viewModel.fetchScanHistory()
//    }

    var body: some View {
        VStack {
            // TODO: look into using fetch to sort by date and add a clear all history with indiviual options aswell
            List(scanhistories) { scanhistory in
                if(scanhistory.id != nil) {
                    VStack(alignment: .leading) {
                        //Text(scanhistory.id?.uuidString  ?? "ID Invalid")
                        Text(scanhistory.scantime?.formatted() ?? "Invalid Date").monospaced()
                        Text(scanhistory.scancontent  ?? "Scan Content N/A")
                    }
                }
            }
            
            Section {
                
            }
            
            Section {
                // TODO: Clear All History
            }
            
            
        }.navigationTitle("History")
    }
}



#Preview {
    //Impl CoreData Preview.
    ScanHistoryView()
}
