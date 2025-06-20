import SwiftUI

struct SectionHeader: View {
    var title: String

    var body: some View {
        Text(title)
            .font(.title2)
            .bold()
            .frame(maxWidth: .maximum(180, 180), alignment: .leading)
            .padding(.top)
    }
}
