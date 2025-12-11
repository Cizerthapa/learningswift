import SwiftUI

struct ProductRow: View {
    let product: Product

    var body: some View {
        HStack(spacing: 16) {
            AsyncImage(url: URL(string: product.thumbnail)) { image in
                image.resizable()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 70, height: 70)
            .cornerRadius(8)

            VStack(alignment: .leading, spacing: 6) {
                Text(product.title)
                    .font(.headline)

                Text("$\(product.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
            }

            Spacer()
        }
        .padding(.vertical, 5)
    }
}
