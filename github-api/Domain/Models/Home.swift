import SwiftData

@Observable
final class HomeViewModel {
    var searchText = ""
    var errorMessage: String?
    var searchedUser: User?
    var isLoading = false
    var showErrorAlert = false
    
    private let service = UserService()
    private let networkHelper = NetworkHelper()
    
    @MainActor
    func performSearch() async {
        let trimmedText = searchText.trimmingCharacters(in: .whitespacesAndNewlines)
        
        guard !trimmedText.isEmpty else {
            errorMessage = "Please enter a username"
            return
        }
        
        errorMessage = nil
        isLoading = true
        
        do {
            searchedUser = try await service.getUser(name: trimmedText)
        } catch let error as NetworkError {
            errorMessage = networkHelper.handleNetworkError(error)
            showErrorAlert = true
        } catch {
            errorMessage = "Unexpected error: \(error.localizedDescription)"
            showErrorAlert = true
        }
        
        isLoading = false
    }
    
    func clearError() {
        errorMessage = nil
    }
    
    func clearSearch() {
        searchText = ""
    }
}
