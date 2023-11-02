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
        // Make the UI nicer and figure out why there is a slight hick-up whenever selecting photo picker
        NavigationStack{
                CodeScannerView(codeTypes: SettingsViewModel().scanTypes,scanMode: .continuous, scanInterval: 1.5 ,isTorchOn: isTorchOn, isGalleryPresented: $isPresetingPicker) { response in
                    if case let .success(result) = response {
                        scannedCode = result.string
                        // Create history record here
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
        }.toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button {
                    isTorchOn = !isTorchOn
                } label: { 
                    if(isTorchOn) {
                        Image(systemName: "flashlight.on.fill")
                    } else {
                        Image(systemName: "flashlight.slash")
                    }
                }
            }
            ToolbarItem(placement: .topBarTrailing) {
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
