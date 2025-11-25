/*
 Homework 11 - Holiday Activities App
 Nagihan Tokul
 10/27/2025
*/

import SwiftUI

struct ActivityDetailView: View {
    let activity: Activity

    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 16) {
                Text(activity.title)
                    .font(.largeTitle)
                    .bold()

        
                Image(activity.image)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(12)
                    .shadow(radius: 4)
                    .padding(.horizontal)

                Divider()

                Text(activity.details)
                    .font(.body)
                    .multilineTextAlignment(.center)
            }
            .padding()
        }
        .navigationTitle(activity.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}

