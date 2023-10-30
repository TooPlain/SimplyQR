//           
//  ScanDataModel.swift          
//  SimplyQR 
// 
//  Created by TooPlain on 10/30/23.
//

import Foundation

// Data object of a succesful scan for history use.
struct ScanDataModel {
    var scanDate = Date.now // Date and time of a scan object
    var scannedCode = "" // Scanned Data Deciphered from code
    var incognitoScan = false // Should a scan be deleted after scan or kept for history use
}
