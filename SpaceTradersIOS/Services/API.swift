import Foundation

public final class API {
    public static var shared = API()
    public let baseURL = URL(string: "https://api.spacetraders.io")
    let session: HTTPSessionProtocol
    init(session: HTTPSessionProtocol) {
        self.session = session
    }
    public func login() async throws -> AccountModel {
        let endpoint = APIEndpoint.loginAccount
        let url = endpoint.url(for: baseURL!)
        let request = URLRequest(url: url)
        let (data, _) = try await session.data(for: request)
        let account = try JSONDecoder().decode(AccountModel.self, from: data)
        return account
    }
}

extension API {
    @_disfavoredOverload
    public convenience init (session: URLSession = .shared) {
        self.init(session: session)
    }
}
