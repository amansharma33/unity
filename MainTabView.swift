

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            AboutView()
                .tabItem {
                    Label("About", systemImage: "person.circle")
                }

            ProjectsView()
                .tabItem {
                    Label("Projects", systemImage: "folder")
                }

            ContentView()
                .tabItem {
                    Label("Contact", systemImage: "envelope")
                }
        }
    }
}
