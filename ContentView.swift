import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    // Profile Image
                    Image("profile") // Add this image in Assets
                        .resizable()
                        .frame(width: 150, height: 150)
                        .clipShape(Circle())
                        .shadow(radius: 10)
                        .padding(.top)

                    // Name
                    Text("Aman Sharma")
                        .font(.largeTitle)
                        .bold()

                    // Title
                    Text("iOS Developer Intern")
                        .font(.title3)
                        .foregroundColor(.gray)

                    Divider()

                    // Skills
                    SectionHeader(title: "Skills")
                    SkillTagList(tags: ["Swift", "SwiftUI", "Xcode", "REST API", "Git"])

                    // Projects
                    SectionHeader(title: "Projects")
                    ProjectItem(name: "Public Holiday App", description: "An app showing Indian public holidays using API.")
                    ProjectItem(name: "Mini App Browser", description: "A lightweight in-app browser demo.")

                    // Contact Info
                    SectionHeader(title: "Contact")
                    HStack {
                        Link("LinkedIn", destination: URL(string: "https://linkedin.com/in/sharmaman18")!)
                        Link("GitHub", destination: URL(string: "https://github.com/amansharma33")!)
                        Text("Email: amandanoda7@gmail.com")
                    }
                    .font(.subheadline)
                    .foregroundColor(.blue)
                }
                .padding()
            }
            .navigationTitle("My Portfolio")
        }
    }
}
