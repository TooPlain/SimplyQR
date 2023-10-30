//           
//  ScannerView.swift          
//  SimplyQR 
// 
//  Created by TooPlain on 10/30/23.
//

import SwiftUI
import CodeScanner
import PhotosUI

struct ScannerView: View {
    @State private var isPresentingAlert = false
    @State private var scannedCode: String?
    
    @State private var isPresetingPicker = false
    @State private var selectedItem: PhotosPickerItem? = nil
    @State private var isTorchOn = false

    //Maybe since we have a tab bar call this view directly?
    
    // TODO: Implment handling links, etc
    var body: some View {
        
        // For now a dialog with the scanned information for display and the option to copy to clipboard.
        // Will add like a built in web browser view or handle if the text is a link for an app (eg discord,crypto wallet, etc)
        // Work on failure handling when scan code is malformed etc
        NavigationStack{
            VStack{
                CodeScannerView(codeTypes: [.qr,.ean13,.code128,.dataMatrix,.pdf417],isTorchOn: isTorchOn, isGalleryPresented: $isPresetingPicker) { response in
                    if case let .success(result) = response {
                        scannedCode = result.string
                        isPresentingAlert = true
                    }
                }.alert(scannedCode ?? "Nul", isPresented: $isPresentingAlert) {
                    Button("Okay", role: .cancel) {
                        isPresentingAlert = false
                    }
                    Button("Copy Clipboard"){
                        UIPasteboard.general.string = scannedCode
                        isPresentingAlert = false
                    }
                }
            }
        }.toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    isTorchOn = !isTorchOn
                } label: {
                    Image(systemName: "flashlight.on.fill")
                }

            }
            ToolbarItem(placement: .topBarTrailing) {
//                PhotosPicker(selection: $selectedItem, matching: .images, photoLibrary: .shared()) {
//                    Image(systemName: "photo.on.rectangle.angled")
//                }
                Button {
                    isPresetingPicker = !isPresetingPicker
                } label: {
                    Image(systemName: "photo.on.rectangle.angled")
                }
            }
        }
    }
}

#Preview {
    ScannerView()
}
