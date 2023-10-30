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
    
    @State private var isPresetingPicker = false

    //Maybe since we have a tab bar call this view directly?
    
    // TODO: Implment handling links, etc
    var body: some View {
        
        // For now a dialog with the scanned information for display and the option to copy to clipboard.
        // Will add like a built in web browser view or handle if the text is a link for an app (eg discord,crypto wallet, etc)
        NavigationStack{
            VStack{
                CodeScannerView(codeTypes: [.qr,.ean13,.code128,.dataMatrix,.pdf417]) { response in
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
        }.toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button(action: {
                    
                }) {
                    Image(systemName: "photo.on.rectangle.angled")
                }
            }
        }
    }
}

#Preview {
    ScannerView()
}
