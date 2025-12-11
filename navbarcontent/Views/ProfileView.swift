import SwiftUI

struct ProfileView: View {
    let sections = ["My Orders", "Wishlist", "Settings"]

    var body: some View {
        NavigationStack {
            List(sections, id: \.self) { section in
                Text(section)
            }
            .navigationTitle("Profile")
        }
    }
}
