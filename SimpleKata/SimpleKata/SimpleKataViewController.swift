import SwiftUI
import UIKit

class SimpleKataViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let instructions = UILabel()
        instructions.text = "Please read the README file."

        let stackView = UIStackView(arrangedSubviews: [
            instructions,
        ])

        stackView.axis = .vertical
        stackView.spacing = UIStackView.spacingUseSystem
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)

        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.readableContentGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor),
        ])
    }
}

struct ToSwiftUIView: UIViewControllerRepresentable {
    let viewController: () -> UIViewController

    init(_ viewController: @escaping () -> UIViewController) {
        self.viewController = viewController
    }

    typealias UIViewControllerType = UIViewController

    func makeUIViewController(context _: Context) -> UIViewController {
        viewController()
    }

    func updateUIViewController(_: UIViewController, context _: Context) {}
}
