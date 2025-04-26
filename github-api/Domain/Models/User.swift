import Foundation

struct User: Codable, Identifiable, Hashable {
    let id: Int
    let login: String
    let avatarUrl: String
    let url: String
    let name: String?
    let blog: String
    let location: String?
    let email: String?
    let bio: String?
    let publicRepos: Int
    let followers: Int
    let following: Int
    
    enum CodingKeys: String, CodingKey {
        case id
        case login
        case avatarUrl = "avatar_url"
        case url
        case name
        case blog
        case location
        case email
        case bio
        case publicRepos = "public_repos"
        case followers
        case following
    }
}
