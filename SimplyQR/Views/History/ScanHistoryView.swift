//           
//  ScanHistoryView.swift          
//  SimplyQR 
// 
//  Created by TooPlain on 10/30/23.
//

import SwiftUI

// Create a Scrollable Stack with a list of prior scan results and display each scan with Date, time and result.

struct ScanHistoryView: View {
    @FetchRequest(sortDescriptors: []) var scanhistories: FetchedResults<ScanHistory>
    @Environment(\.managedObjectContext) var moc

    var body: some View {
        VStack {
                //Text("Historic Scan Data Results will be displayed here").monospaced()
            
            //make it display it more nicely and also by date
            List(scanhistories) { scanhistory in
                Text(scanhistory.scancontent  ?? "Scan Content N/A")
                Text(scanhistory.id?.uuidString  ?? "ID Invalid")
            }
        }.navigationTitle("History")
    }
}

#Preview {
    ScanHistoryView()
}
