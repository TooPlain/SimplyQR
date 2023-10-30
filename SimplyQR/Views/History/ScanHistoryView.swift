//           
//  ScanHistoryView.swift          
//  SimplyQR 
// 
//  Created by TooPlain on 10/30/23.
//

import SwiftUI

// Create a Scrollable Stack with a list of prior scan results and display each scan with Date, time and result.

struct ScanHistoryView: View {
    var body: some View {
        VStack {
            List{
                Text("Historic Scan Data Results will be displayed here").monospaced()
            }
        }.navigationTitle("History")
    }
}

#Preview {
    ScanHistoryView()
}
