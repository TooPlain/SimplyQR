//           
//  SettingsView.swift          
//  SimplyQR 
// 
//  Created by TooPlain on 10/30/23.
//

import SwiftUI
import AVFoundation

// TODO: Use AppStorage to set and get user settings
struct SettingsView: View {
    @StateObject private var viewModel = SettingsViewModel()
    
    let scanTypeString: [String] = [".qr",".dataMatrix",".microQR",".pdf417",".microPDF417",".gs1DataBar"]
    let scanTypeSelection: [AVMetadataObject.ObjectType] = [.qr,.dataMatrix,.microQR,.pdf417,.microPDF417,.gs1DataBar]
    
    private func scanTypeIsSelected(selected: AVMetadataObject.ObjectType) -> Bool {
        viewModel.scanTypesString.contains(selected.rawValue) == true
    }
    
    
    var body: some View {
        VStack {
            List {
                Text("Hello, Expect Settings in here :3").monospaced()
            }
        }.navigationTitle("Settings")
    }
}

#Preview {
    SettingsView()
}
