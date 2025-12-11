import Foundation
import Combine

@MainActor
class ProductViewModel: ObservableObject {
    @Published var products: [Product] = []
    @Published var isLoading: Bool = false

    init() {
        // Optional: start loading on init
        Task {
            await fetchProducts()
        }
    }

    func fetchProducts() async {
        guard let url = URL(string: "https://dummyjson.com/products") else { return }

        isLoading = true
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let decoded = try JSONDecoder().decode(ProductResponse.self, from: data)
            // @MainActor ensures these runs on main thread
            self.products = decoded.products
            self.isLoading = false
        } catch {
            print("API Error: \(error)")
            self.isLoading = false
        }
    }
}
