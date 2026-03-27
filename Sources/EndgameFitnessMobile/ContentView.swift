import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "figure.run")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Endgame Fitness")
                .font(.largeTitle)
                .bold()
        }
        .padding()
    }
}
