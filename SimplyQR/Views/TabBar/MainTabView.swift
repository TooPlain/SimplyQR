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
                //HomeView()
            }
            .tabItem {
                Image(systemName: "camera")
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
