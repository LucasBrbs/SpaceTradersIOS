public struct UserModel: Decodable {
    var user: AccountModel
}

public struct AccountModel: Decodable {
    var username: String
    var credits: Int
}
