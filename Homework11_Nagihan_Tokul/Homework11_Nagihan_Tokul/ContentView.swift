// Homework 11 - Holiday Activities App
// Nagihan Tokul
// 10/27/2025

// This app shows three holiday pages using a TabView.
// Each tab has a holiday name, picture, and short description.
// Under each holiday, there is a list of fun activities.
// When you tap an activity, it opens a detail page with more information.
// A context menu also appears when you press and hold an activity.

import SwiftUI

struct ContentView: View {
    let holidays: [Holiday] = Bundle.main.decode("holidays.json")

    var body: some View {
        NavigationStack {
            TabView {
                ForEach(holidays) { holiday in
                    List {
                        VStack(spacing: 12) {
                            Text(holiday.name)
                                .font(.title)
                                .bold()

                            Image(holiday.image)
                                .resizable()
                                .scaledToFit()
                                .clipShape(RoundedRectangle(cornerRadius: 16))
                                .shadow(radius: 5)

                            Text(holiday.about)
                                .font(.body)
                                .multilineTextAlignment(.center)
                                .padding(.vertical, 4)
                        }
                        .frame(maxWidth: .infinity, alignment: .center)

                        Section(header:
                            Text("Activities")
                                .font(.headline)
                                .frame(maxWidth: .infinity, alignment: .center)
                        ) {
                            ForEach(holiday.activities) { activity in
                                NavigationLink(destination: ActivityDetailView(activity: activity)) {
                                    Text(activity.title)
                                }
                                .contextMenu {
                                    Button("Add to Favorites") {}
                                    Button("More Info") {}
                                }
                            }
                        }
                    }
                    .listSectionSpacing(17)
                    .navigationTitle(holiday.name)
                    .tabItem {
                        Text(holiday.name)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

