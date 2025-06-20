//
//  AboutView.swift
//  myportfolio
//
//  Created by Ravi Sharma on 20/06/25.
//

import SwiftUI

struct AboutView: View {
    @State private var animate = false

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Image("profile")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .shadow(radius: 10)
                    .scaleEffect(animate ? 1 : 0.5)
                    .opacity(animate ? 1 : 0)
                    .animation(.easeOut(duration: 1), value: animate)
                    .onAppear {
                        animate = true
                    }

                Text("Aman Pandit")
                    .font(.largeTitle).bold()

                Text("iOS Developer Intern")
                    .font(.title3).foregroundColor(.gray)

                SectionHeader(title: "Skills")
                SkillTagList(tags: ["Swift", "SwiftUI", "REST API", "Xcode", "Git"])
                    .padding(50)
                    .background(.black)
                Button(action: {
                    // Resume download logic here (placeholder)
                    print("Resume download tapped")
                }) {
                    Text("Download Resume")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.black)
                        .cornerRadius(50)
                }
                .padding(.top)
            }
            .padding()
        }
        .navigationTitle("About")
    }
}
