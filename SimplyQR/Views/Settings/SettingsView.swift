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
    
    let scanTypeString: [String] = [".qr",".dataMatrix",".microQR",".pdf417",".microPDF417",".gs1DataBar"]
    let scanTypeSelection: [AVMetadataObject.ObjectType] = [.qr,.dataMatrix,.microQR,.pdf417,.microPDF417,.gs1DataBar]
    private func scanTypeIsSelected(selected: AVMetadataObject.ObjectType) -> Bool {
        viewModel.scanTypesString.contains(selected.rawValue) == true
    }
    //AVMetadataObject.ObjectType(rawValue: selected)
    var body: some View {
        VStack {
            List {
                Text("Hello, Expect Settings in here :3").monospaced()
//                HStack {
//                    ForEach(scanTypeSelection, id: \.self) { string in
//                        
//                        Button(string.rawValue) {
//                            if scanTypeIsSelected(selected: string) {
//                                viewModel.removeScanType(text: string)
//                            } else {
//                                viewModel.addScanType(text: string)
//                            }
//                        }
//                        .font(.headline)
//                        .buttonStyle(.borderedProminent)
//                        .tint(scanTypeIsSelected(selected: string) ? .green : .red)
//                    }
//                }
                
                
            }
        }.navigationTitle("Settings")
    }
}

#Preview {
    SettingsView()
}
