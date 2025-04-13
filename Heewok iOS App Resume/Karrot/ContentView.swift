import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab {
                EmptyView()
            } label: {
                Image(.iconHome)
                Text("홈")
            }
            Tab {
                EmptyView()
            } label: {
                Image(.iconTownLife)
                Text("동네생활")
            }
            Tab {
                EmptyView()
            } label: {
                Image(.iconTownMap)
                Text("동네지도")
            }
            Tab {
                EmptyView()
            } label: {
                Image(.iconChat)
                Text("채팅")
            }
            Tab {
                EmptyView()
            } label: {
                Image(.iconMyKarrot)
                Text("나의 당근")
            }
        }
        
    }
}

#Preview {
    ContentView()
}
