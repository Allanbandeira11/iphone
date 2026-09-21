import UIKit
import WebKit

/// TROQUE pela URL pública quando publicar (ex: https://seu-app.onrender.com/admin.html)
/// Em Wi-Fi local use o IP do PC: http://192.168.1.145:8080/admin.html
private let HOME = "http://192.168.1.145:8080/admin.html"

final class ViewController: UIViewController {
    private var web: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        let cfg = WKWebViewConfiguration()
        web = WKWebView(frame: .zero, configuration: cfg)
        web.translatesAutoresizingMaskIntoConstraints = false
        web.isOpaque = false
        web.backgroundColor = .black
        web.scrollView.backgroundColor = .black
        view.addSubview(web)
        NSLayoutConstraint.activate([
            web.topAnchor.constraint(equalTo: view.topAnchor),
            web.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            web.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            web.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
        if let url = URL(string: HOME) {
            web.load(URLRequest(url: url))
        }
    }
}
