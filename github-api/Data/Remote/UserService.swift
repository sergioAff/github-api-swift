import Foundation

actor UserService {
    private let baseURL = "https://api.github.com/users/"
    private let session: URLSession
    
    init(session: URLSession = .shared) {
        let config = URLSessionConfiguration.default
        config.timeoutIntervalForRequest = 15
        config.waitsForConnectivity = true
        self.session = session
    }
    
    func getUser(name: String) async throws -> User {
        guard let url = URL(string: baseURL + name.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed)!) else {
            throw NetworkError.invalidURL
        }
        
        do {
            let (data, response) = try await session.data(from: url)
            
            guard let httpResponse = response as? HTTPURLResponse else {
                throw NetworkError.invalidResponse
            }
            
            switch httpResponse.statusCode {
            case 200:
                do {
                    let decoder = JSONDecoder()
                    return try decoder.decode(User.self, from: data)
                } catch {
                    throw NetworkError.decodingError(error)
                }
            case 404:
                throw NetworkError.userNotFound
            default:
                throw NetworkError.requestFailed(httpResponse.statusCode)
            }
        } catch let networkError as NetworkError {
            throw networkError
        } catch {
            throw NetworkError.unknown
        }
    }
}
