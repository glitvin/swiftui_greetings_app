import SwiftUI
import TipKit

@main
struct GretingsApp: App {
    @AppStorage("language") var language: String = "en"
    @AppStorage("languageDirectionString") var languageDirectionString: String = LEFT_TO_RIGHT

    var layoutDirection : LayoutDirection {
        languageDirectionString == LEFT_TO_RIGHT ? .leftToRight : .rightToLeft
    }
    var body: some Scene {
        WindowGroup {
            MainView(
                language: $language,
                layoutDirectionString: $languageDirectionString)
            .environment(\.locale, Locale(identifier: language))
            .environment(\.layoutDirection, layoutDirection)
            .task {
                            // Configure and load your tips at app launch.
                            do {
                                try Tips.configure()
                            }
                            catch {
                                // Handle TipKit errors
                                print("Error initializing TipKit \(error.localizedDescription)")
                            }
                        }
        }
    }
}
