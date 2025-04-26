import SwiftUI

struct HomeView: View {
    @State private var viewModel = HomeViewModel()
    @FocusState private var isSearchFieldFocused: Bool
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                HeaderImageView()
                
                SearchField(
                    text: $viewModel.searchText,
                    placeholder: "GitHub username",
                    isFocused: $isSearchFieldFocused,
                    onClear: { viewModel.clearSearch() }
                )
                
                if let errorMessage = viewModel.errorMessage {
                    ErrorBanner(
                        message: errorMessage,
                        onDismiss: { viewModel.clearError() }
                    )
                    .transition(.move(edge: .top).combined(with: .opacity))
                }
                
                ActionButton(
                    title: "Search User",
                    icon: "arrow.right.circle.fill",
                    action: {
                        isSearchFieldFocused = false
                        Task { await viewModel.performSearch() }
                    },
                    isEnabled: !viewModel.searchText.isEmpty && !viewModel.isLoading
                )
                
                Spacer()
                
                FooterInfoView()
            }
            .padding()
            .navigationDestination(item: $viewModel.searchedUser) { user in
                UserView(user: user)
                    .navigationTitle(user.name ?? user.login)
            }
            .navigationTitle("GitHub Finder")
            .navigationBarTitleDisplayMode(.large)
            .alert("Error", isPresented: $viewModel.showErrorAlert) {
                Button("OK") { }
            } message: {
                Text(viewModel.errorMessage ?? "Unknown error occurred")
            }
            .overlay {
                if viewModel.isLoading {
                    LoadingOverlay(message: "Searching...")
                }
            }
            .onSubmit(of: .text) {
                Task { await viewModel.performSearch() }
            }
            .animation(.smooth, value: viewModel.errorMessage)
            .animation(.smooth, value: viewModel.isLoading)
        }
    }
}

#Preview {
    HomeView()
}
