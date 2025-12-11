import SwiftUI

struct ProductListView: View {
    @StateObject var viewModel = ProductViewModel()

    var body: some View {
        NavigationStack {
            List(viewModel.products) { product in
                ProductRow(product: product)
            }
            .navigationTitle("Products")
        }
        .task {
            await viewModel.fetchProducts()
        }
    }
}
