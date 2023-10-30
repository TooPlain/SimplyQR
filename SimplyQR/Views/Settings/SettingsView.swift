//           
//  SettingsView.swift          
//  SimplyQR 
// 
//  Created by TooPlain on 10/30/23.
//

import SwiftUI
import AVFoundation

struct SettingsView: View {
    @StateObject private var viewModel = SettingsViewModel()
    
    let scanTypeSelection: [AVMetadataObject.ObjectType] = [.qr,.dataMatrix,.microQR,.pdf417,.microPDF417,.gs1DataBar]
    private func scanTypeIsSelected(selected: AVMetadataObject.ObjectType) -> Bool {
        viewModel.scanTypes.contains(selected) == true
    }
    //AVMetadataObject.ObjectType(rawValue: selected)
    var body: some View {
        VStack {
            List {
                Text("Hello, Expect Settings in here :3").monospaced()
                HStack {
                    ForEach(scanTypeSelection, id: \.self) { string in
                        Button(string.rawValue) {
                            if scanTypeIsSelected(selected: string) {
                                viewModel.removeScanType(text: string)
                            } else {
                                viewModel.addScanType(text: string)
                            }
                        }
                        .font(.headline)
                        .buttonStyle(.borderedProminent)
                        .tint(scanTypeIsSelected(selected: AVMetadataObject.ObjectType) ? .green : .red)
                    }
                }
                
                
            }
        }.navigationTitle("Settings")
    }
}

#Preview {
    SettingsView()
}
