import Foundation

enum NetworkError: Error {
    case invalidURL
    case requestFailed(Int)
    case invalidResponse
    case invalidData
    case decodingError(Error)
    case userNotFound
    case unknown
}

struct NetworkHelper {
    func handleNetworkError(_ error: NetworkError) -> String {
        switch error {
        case .userNotFound:
            return "User not found. Please check the username."
        case .invalidURL:
            return "Invalid URL. Please contact support."
        case .requestFailed(let statusCode):
            return "Request failed with status code: \(statusCode)"
        case .decodingError(let decodingError):
            return "Error processing data: \(decodingError.localizedDescription)"
        case .invalidResponse:
            return "Invalid response from server."
        case .invalidData:
            return "Invalid data received."
        case .unknown:
            return "An unknown error occurred."
        }
    }
}
