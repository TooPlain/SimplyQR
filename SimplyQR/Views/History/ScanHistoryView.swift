//           
//  ScanHistoryView.swift          
//  SimplyQR 
// 
//  Created by TooPlain on 10/30/23.
//

import SwiftUI

// Create a Scrollable Stack with a list of prior scan results and display each scan with Date, time and result.

struct ScanHistoryView: View {
    // TODO: Sort the history by date
    @FetchRequest(sortDescriptors: []) var scanhistories: FetchedResults<ScanHistory>
    @Environment(\.managedObjectContext) var moc
    

    var body: some View {
        VStack {
            // TODO: Create a clear all button and create a modal interface for results
            List(scanhistories) { scanhistory in
                if(scanhistory.id != nil) {
                    VStack(alignment: .leading) {
                        //Text(scanhistory.id?.uuidString  ?? "ID Invalid")
                        Text(scanhistory.scantime?.formatted() ?? "Invalid Date").monospaced()
                        Text(scanhistory.scancontent ?? "Scan Content N/A")
                    }
                }
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
