import Foundation

enum APIEndpoint: String {
    case loginAccount = "/my/account"
    func url(for baseURL: URL) -> URL {
        return baseURL.appendingPathComponent(rawValue)
    }
}

extension APIEndpoint: CaseIterable { }
