//           
//  SettingsView.swift          
//  SimplyQR 
// 
//  Created by TooPlain on 10/30/23.
//

import SwiftUI

struct SettingsView: View {
    @StateObject private var viewModel = SettingsViewModel()
    
    var body: some View {
        Text("Hello, Expect Settings in here :3").monospaced()
    }
}

#Preview {
    SettingsView()
}
