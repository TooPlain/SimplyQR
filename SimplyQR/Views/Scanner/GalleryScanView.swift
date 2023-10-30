//           
//  GalleryScanView.swift          
//  SimplyQR 
// 
//  Created by TooPlain on 10/30/23.
//

import SwiftUI
import CodeScanner
import PhotosUI

struct GalleryScanView: View {
    @StateObject private var viewModel = GalleryScanViewModel()
    
    @State private var isPresentingAlert = false
    @State private var scannedCode: String?
    
    @State private var selectedItem: PhotosPickerItem? = nil
    
    var body: some View {
        // For now a dialog with the scanned information for display and the option to copy to clipboard.
        // Will add like a built in web browser view or handle if the text is a link for an app (eg discord,crypto wallet, etc)
        List {
            PhotosPicker(selection: $selectedItem, matching: .images, photoLibrary: .shared()) {
                Text("Choose a image to scan from your photo libary").monospaced()
            }
        }.toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button("test") {
                    
                }
            }
        }
//        }.onChange(of: selectedItem, perform: { newValue in
//            if let newValue {
//                CodeScannerView(
//            }
//        })
//        
        
//        CodeScannerView(codeTypes: [.qr,.ean13,.code128,.dataMatrix,.pdf417], isGalleryPresented: true) { response in
//            if case let .success(result) = response {
//                scannedCode = result.string
//                isPresentingAlert = true
//            }
//        }.alert(scannedCode ?? "Nul", isPresented: $isPresentingAlert) {
//            Button("Okay", role: .cancel) {isPresentingAlert = false}
//            Button("Copy Clipboard"){
//                UIPasteboard.general.string = scannedCode
//                isPresentingAlert = false
//            }
//        }
    }
}

#Preview {
    GalleryScanView()
}
