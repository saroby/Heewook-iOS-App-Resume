import SwiftUI
import ComposableArchitecture

@Reducer
struct HomeItem {
    @ObservableState
    struct State: Equatable, Identifiable {
        let id: UUID
        var chatCount: Int = 0
        var likeCount: Int = 0
        var thumbnailImageURL: URL? = "https://picsum.photos/200".url
        var title: String = ""
        var price: Double = 0
        var townName: String = ""
        var updatedAt: Date = .now
        var isTraden = false
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
            AsyncImage(url: store.thumbnailImageURL)
                .size(90)
                .clipShape(RoundedRectangle(cornerRadius: 5))
            
            VStack(alignment: .leading) {
                HStack {
                    Text(store.title)
                    Spacer()
                    Image(systemName: "circle")
                }
                HStack(spacing: 3) {
                    Text("500M")
                    Text("·")
                    Text(store.updatedAt, style: .relative)
                }
                .font(.caption)
                .foregroundStyle(.secondary)

                HStack {
                    if store.isTraden {
                        Text(store.price == .zero ? "나눔완료" : "거래완료")
                            .font(.caption2)
                            .padding(3)
                            .foregroundStyle(Color.white)
                            .fontWeight(.semibold)
                            .background(.tint)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                    }
                    Text(store.price == .zero ? "나눔🧡" : store.price.description)
                        .fontWeight(.bold)

                }
                
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
