import SwiftUI

struct AppStoreView: View {
    var body: some View {
        TabView {
            Tab {
                NavigationStack {
                    ScrollView(.vertical) {
                        LazyVStack {
                            HStack(alignment: .bottom) {
                                Text("투데이")
                                    .font(.title)
                                    .fontWeight(.bold)
                                Text(Date(), style: .date)
                                Spacer()
                                AsyncImage(url: nil)
                                    .size(40)
                            }
                            
                            RoundedRectangle(cornerSize: .init(width: 10, height: 10))
                                .frame(height: 400)
                            
                            RoundedRectangle(cornerSize: .init(width: 10, height: 10))
                                .frame(height: 200)
                            
                            VStack(alignment: .leading) {
                                Text("업데이트")
                                    .font(.footnote)
                                Text("주목해야 할 업데이트")
                                    .font(.title2)
                                    .fontWeight(.bold)
                                ForEach(0..<5) { _ in
                                    HStack {
                                        AsyncImage(url: nil)
                                            .size(40)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                        
                                        VStack(alignment: .leading) {
                                            Text("애플스토어")
                                                .lineLimit(2)
                                            Text("맞추고 합치기 미스터리!")
                                        }
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        
                                        VStack {
                                            Button {
                                                
                                            } label: {
                                                
                                            }
                                            Text("앱 내 구입")
                                        }
                                    }
                                }
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .background(Color.gray)
                        }
                    }
                    .contentMargins(5)
                }
            } label: {
                Text("투데이")
            }
            Tab {
                NavigationStack {
                    ScrollView {
                        
                    }
                    .navigationTitle("게임")
                    .toolbarTitleDisplayMode(.inlineLarge)
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            AsyncImage(url: nil)
                                .size(40)
                        }
                    }
                }
            } label: {
                Text("게임")
            }
            Tab {
                NavigationStack {
                    
                }
            } label: {
                Text("앱")
            }
            Tab {
                NavigationStack {
                    
                }
            } label: {
                Text("Arcade")
            }
            Tab {
                NavigationStack {
                    
                }
            } label: {
                Text("검색")
            }
        }
    }
}

#Preview {
    AppStoreView()
}
