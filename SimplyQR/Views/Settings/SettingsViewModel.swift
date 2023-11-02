//           
//  SettingsViewModel.swift          
//  SimplyQR 
// 
//  Created by TooPlain on 10/30/23.
//

import Foundation
import AVFoundation

// TODO: Settings related to maybe scan history and sending crash data. Not much to add since no tracking of users or anything of that nature. maybe a array of scannable barcodes.
@MainActor
final class SettingsViewModel: ObservableObject {
    
    @Published var scanTypes : [AVMetadataObject.ObjectType]
    @Published var scanTypesString : [String]
    
    @Published var saveScanData = false
    
    init() {
        scanTypes = [.qr]
        scanTypesString = [".qr"]
    }
    
}
