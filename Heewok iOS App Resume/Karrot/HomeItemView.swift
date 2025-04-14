import SwiftUI
import ComposableArchitecture

@Reducer
struct HomeItem {
    @ObservableState
    struct State: Equatable, Identifiable {
        let id: UUID
        var chatCount: Int = 0
        var likeCount: Int = 0
    }
    enum Action {
        case contentTapped
        case moreButtonTapped
    }
    
    var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            case .contentTapped:
                return .none
                
            case .moreButtonTapped:
                return .none
            }
        }
    }
}

struct HomeItemView: View {
    let store: StoreOf<HomeItem>
    
    var body: some View {
        HStack(spacing: 5) {
            AsyncImage(url: "https://picsum.photos/200".url)
                .size(90)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            
            VStack(alignment: .leading) {
                HStack {
                    Text("snsnsn")
                    Spacer()
                    Image(systemName: "circle")
                }
                HStack {
                    Text("500M.소소동.24분전")
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                Text("소소")
                    .fontWeight(.bold)
                HStack(spacing: 5) {
                    Spacer()
                    HStack(spacing: 3) {
                        Image(systemName: "message.fill")
                            .resizable()
                            .size(15)
                        Text(store.chatCount.description)
                            .font(.caption)
                    }
                    HStack(spacing: 3) {
                        Image(systemName: "heart.fill")
                            .resizable()
                            .size(15)
                        Text(store.likeCount.description)
                            .font(.caption)
                    }
                }
                .foregroundStyle(.secondary)
            }
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    List {
        HomeItemView(
            store: Store(
                initialState: HomeItem.State(id: UUID(), chatCount: 30, likeCount: 30),
                reducer: { HomeItem() }
            )
        )
        HomeItemView(
            store: Store(
                initialState: HomeItem.State(id: UUID(), chatCount: 12, likeCount: 87),
                reducer: { HomeItem() }
            )
        )
        HomeItemView(
            store: Store(
                initialState: HomeItem.State(id: UUID(), chatCount: 0, likeCount: 4),
                reducer: { HomeItem() }
            )
        )
    }
}
