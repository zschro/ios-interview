import SwiftUI

@main
struct InterviewExampleApp: App {
    var body: some Scene {
        WindowGroup {
            // For SwiftUI use ExampleView
            SimpleKataView()
            // For UIKit use ExampleViewController
//            ToSwiftUIView {
//                SimpleKataViewController()
//            }
        }
    }
}
