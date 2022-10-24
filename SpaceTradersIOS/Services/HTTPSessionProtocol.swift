import Foundation

protocol HTTPSessionProtocol {
    func data (for request: URLRequest) async throws -> (Data, HTTPURLResponse)
}

extension URLSession: HTTPSessionProtocol {
    func data(for request: URLRequest) async throws -> (Data, HTTPURLResponse) {
        guard let value = try await data(for: request, delegate: nil) as? (Data, HTTPURLResponse) else {
            return (Data(), HTTPURLResponse())
        }
        return value
    }
}

extension HTTPSessionProtocol where Self == URLSession {
    static var `default`: URLSession { .shared }
}
