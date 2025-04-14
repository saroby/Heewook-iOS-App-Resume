import SwiftUI
import GenesicSwiftUI
import ComposableArchitecture

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
                .padding(.horizontal)
                
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
                .padding(.horizontal)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                ScrollView(.vertical) {
                    ForEach(0..<100, id: \.self) { _ in
                        HStack {
                            UserCircleView(size: .medium, imageURL: nil)
                            
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
                .contentMargins(10)
            }
        }
    }
}

#Preview {
    ChatView()
}
