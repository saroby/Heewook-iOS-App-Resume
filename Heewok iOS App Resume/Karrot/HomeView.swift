import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
            HStack {
                Text("도도동")
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
                
                LazyVStack {
                    ForEach(0..<10) { _ in
                        HStack(spacing: 5) {
                            AsyncImage(url: "https://picsum.photos/200".url)
                                .size(90)
                                .clipped()
                            
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("snsnsn")
                                    Spacer()
                                    Image(systemName: "circle")
                                }
                                HStack {
                                    Text("500M.소소동.24분전")
                                }
                                Text("소소")
                                HStack {
                                    Spacer()
                                    HStack {
                                        Image(systemName: "circle")
                                        Text("30")
                                    }
                                    HStack {
                                        Image(systemName: "circle")
                                        Text("30")
                                    }
                                }
                            }
                        }
                        .padding()
                        .frame(maxWidth: .infinity)
                    }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}


extension String {
    var url: URL? {
        URL(string: self)
    }
}
