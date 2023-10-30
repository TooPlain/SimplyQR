//           
//  MainTabView.swift          
//  SimplyQR 
// 
//  Created by TooPlain on 10/30/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            NavigationStack {
                ScannerView()
            }
            .tabItem {
                Image(systemName: "qrcode.viewfinder")
            }
            
            NavigationStack {
                //ExploreView()
            }
            .tabItem {
                Image(systemName: "clock")
            }
            
            NavigationStack {
                SettingsView()
            }
            .tabItem {
                Image(systemName: "gear")
            }
        }
        .accentColor(.orange)
    }
}

#Preview {
    MainTabView()
}
