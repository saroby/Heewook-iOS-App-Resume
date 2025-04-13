import SwiftUI

struct ChatView: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("채팅")
                    Spacer()
                    Button {
                        
                    } label: {
                        Image(systemName: "circle")
                    }
                    Button {
                        
                    } label: {
                        Image(systemName: "circle")
                    }
                    Button {
                        
                    } label: {
                        Image(systemName: "circle")
                    }
                }
                
                HStack {
                    Button {
                        
                    } label: {
                        Text("전체")
                    }
                    .buttonStyle(.bordered)
                    Button {
                        
                    } label: {
                        Text("판매")
                    }
                    .buttonStyle(.bordered)
                    Button {
                        
                    } label: {
                        Text("구매")
                    }
                    .buttonStyle(.bordered)
                    Button {
                        
                    } label: {
                        Text("안 읽은 채팅방")
                    }
                    .buttonStyle(.bordered)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
                ScrollView(.vertical) {
                    ForEach(0..<100, id: \.self) { _ in
                        HStack {
                            AsyncImage(url: nil)
                                .size(60)
                            
                            VStack(alignment: .leading) {
                                HStack {
                                    Text("튼튼")
                                    Text("삼전동.4일전")
                                }
                                
                                Text("sdljflksdjflksdjfklsdjflksjdlkfj")
                            }
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ChatView()
}
