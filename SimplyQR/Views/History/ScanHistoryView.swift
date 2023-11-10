//           
//  ScanHistoryView.swift          
//  SimplyQR 
// 
//  Created by TooPlain on 10/30/23.
//

import SwiftUI

// Create a Scrollable Stack with a list of prior scan results and display each scan with Date, time and result.

struct ScanHistoryView: View {
    @State var isShowingDeleteConfirmation = false
    @FetchRequest(sortDescriptors: [NSSortDescriptor(key: "scantime", ascending: false)]) var scanhistories: FetchedResults<ScanHistory>
    @Environment(\.managedObjectContext) var moc
    

    var body: some View {
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
            Button("Clear All", role: .destructive) {
                isShowingDeleteConfirmation = true
            }.buttonStyle(.borderedProminent)
        }.navigationTitle("History")
            .padding(3)
            .alert("This will clear ALL History!", isPresented: $isShowingDeleteConfirmation) {
                Button("Cancel", role: .cancel) {
                    isShowingDeleteConfirmation = false
                }
                Button("Okay",role: .destructive){
                    deleteAll()
                    isShowingDeleteConfirmation = false
                }
            }
    }
    
    func deleteAll() {
        for obj in scanhistories {
            moc.delete(obj)
        }
        try? moc.save()
    }
}



#Preview {
    //Impl CoreData Preview.
    ScanHistoryView()
}
