import SwiftUI

struct HomeView: View {
    let items = ["Apple", "Banana", "Orange", "Mango"]

    var body: some View {
        NavigationStack {
            List(items, id: \.self) { item in
                Text(item)
            }
            .navigationTitle("Home Items")
        }
    }
}
