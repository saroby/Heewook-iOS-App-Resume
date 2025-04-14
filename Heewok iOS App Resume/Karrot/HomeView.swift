import SwiftUI
import ComposableArchitecture

@Reducer
struct Home {
    @ObservableState
    struct State: Equatable {
        var items: IdentifiedArrayOf<HomeItem.State> = []
    }
    enum Action {
        case townTapped
        case serviceListTapped
        case searchTapped
        case notificationTapped
        case items(IdentifiedActionOf<HomeItem>)
    }
    
    var body: some Reducer<State, Action> {
        Reduce { state, action in
            switch action {
            case .townTapped:
                return .none
            case .serviceListTapped:
                return .none
            case .searchTapped:
                return .none
            case .notificationTapped:
                return .none
            case .items:
                return .none
            }
        }
    }
}

struct HomeView: View {
    let store: StoreOf<Home>
    
    var body: some View {
        VStack {
            HStack {
                Text("도도동")
                    .font(.title2)
                Image(systemName: "chevron.down")
                Spacer()
                Image(systemName: "line.3.horizontal")
                Image(systemName: "magnifyingglass")
                Image(systemName: "bell")
            }
            .padding()
            
            ScrollView(.vertical) {
                HStack {
                    Button {
                        
                    } label: {
                        Label("부동산", systemImage: "circle")
                    }
                    Button {
                        
                    } label: {
                        Label("중고차", systemImage: "circle")
                    }
                    Button {
                        
                    } label: {
                        Label("알바", systemImage: "circle")
                    }
                }
                .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
                
                let itemStores = Array(zip(store.state.items.indices, store.scope(state: \.items, action: \.items)))
                ForEach(itemStores, id: \.1.id) { index, store in
                    if index != 0 {
                        Divider()
                    }

                    HomeItemView(store: store)
                }
            }
            .contentMargins(10)
        }
        .overlay(alignment: .bottomTrailing) {
            Button {
                
            } label: {
                Text("+ 글쓰기")
                    .foregroundStyle(Color.white)
                    .padding(10)
            }
            .background(.tint)
            .cornerRadius(999)
            .offset(x: -20, y: -15)
        }
    }
}


extension IdentifiedArrayOf<HomeItem.State> {
  static let mock: Self = [
    HomeItem.State(id: .init()),
    HomeItem.State(id: .init()),
    HomeItem.State(id: .init()),
    HomeItem.State(id: .init()),
  ]
}


#Preview {
    HomeView(store: .init(initialState: Home.State(items: .mock), reducer: { Home() }))
        .preferredColorScheme(.dark)
}


extension String {
    var url: URL? {
        URL(string: self)
    }
}
