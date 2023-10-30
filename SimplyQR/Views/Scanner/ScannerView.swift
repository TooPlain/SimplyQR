//           
//  ScannerView.swift          
//  SimplyQR 
// 
//  Created by TooPlain on 10/30/23.
//

import SwiftUI
import CodeScanner

struct ScannerView: View {
    @State private var isPresentingAlert = false
    @State private var scannedCode: String?

    //Maybe since we have a tab bar call this view directly?
    
    // TODO: Implment handling links, etc
    var body: some View {
        
        //For now a dialog with the scanned information for display and the option to copy to clipboard.
        CodeScannerView(codeTypes: [.qr,.ean13,.code128,.dataMatrix,.pdf417], showViewfinder: true) { response in
            if case let .success(result) = response {
                scannedCode = result.string
                isPresentingAlert = true
            }
        }.alert(scannedCode ?? "Nul", isPresented: $isPresentingAlert) {
            Button("Okay", role: .cancel) {isPresentingAlert = false}
            Button("Copy Clipboard"){
                UIPasteboard.general.string = scannedCode
                isPresentingAlert = false
            }
        }
    }
}

#Preview {
    ScannerView()
}
