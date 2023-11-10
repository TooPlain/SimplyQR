//           
//  SettingsView.swift          
//  SimplyQR 
// 
//  Created by TooPlain on 10/30/23.
//

import SwiftUI
import AVFoundation

struct SettingsView: View {
    //@AppStorage(key: "save_scan_results", container: .standard, defaultValue: true) var saveScanResults: Bool
    
    @Preference(\.saveScanResults) var saveScanResults
    @Preference(\.sendCrashReport) var sendCrashReport
    
    
    var body: some View {
        VStack {
            Toggle("Save Scan Results", isOn: $saveScanResults).toggleStyle(.switch).padding(3)
            Toggle("Share Crash Reports", isOn: $sendCrashReport).toggleStyle(.switch).padding(3)
        }
        .padding()
        .frame(maxHeight: .infinity,alignment: .top)
        .navigationTitle("Settings")
        
    }
}

#Preview {
    SettingsView()
}
