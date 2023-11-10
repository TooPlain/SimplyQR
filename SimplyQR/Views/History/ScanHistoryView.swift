//           
//  ScanHistoryView.swift          
//  SimplyQR 
// 
//  Created by TooPlain on 10/30/23.
//

import SwiftUI

// Create a Scrollable Stack with a list of prior scan results and display each scan with Date, time and result.

struct ScanHistoryView: View {
    @FetchRequest(sortDescriptors: [NSSortDescriptor(key: "scantime", ascending: false)]) var scanhistories: FetchedResults<ScanHistory>
    @Environment(\.managedObjectContext) var moc
    

    var body: some View {

            // TODO: Create a clear all button and create a modal interface for results
//            List(scanhistories) { scanhistory in
//                if(scanhistory.id != nil) {
//                    VStack(alignment: .leading) {
//                        //Text(scanhistory.id?.uuidString  ?? "ID Invalid")
//                        Text(scanhistory.scantime?.formatted() ?? "Invalid Date").monospaced()
//                        Text(scanhistory.scancontent ?? "Scan Content N/A")
//                    }
//                }
//            }
        VStack {
            ScrollView(.vertical, showsIndicators: true) {
                VStack {
                    ForEach(scanhistories) { scanhistory in
                        if(scanhistory.id != nil) {
                            VStack(alignment: .leading) {
                                //Text(scanhistory.id?.uuidString  ?? "ID Invalid")
                                Text(scanhistory.scantime?.formatted() ?? "Invalid Date").monospaced()
                                Text(scanhistory.scancontent ?? "Scan Content N/A")
                            }
                            .frame(width: 350,height: 100)
                            .padding(5)
                            .background(Color.indigo)
                            .cornerRadius(10)
                        }
                    }
                }
            }
            Button("Delete All", role: .destructive) {
                deleteAll()
            }.buttonStyle(.borderedProminent)
        }.navigationTitle("History")
    }
    
    func deleteAll() {
        for obj in scanhistories {
            moc.delete(obj)
        }
    }
}



#Preview {
    //Impl CoreData Preview.
    ScanHistoryView()
}
