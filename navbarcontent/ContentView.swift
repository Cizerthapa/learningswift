import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {

            ProductListView()
                .tabItem {
                    Label("Products", systemImage: "cart")
                }

            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
        }
    }
}
