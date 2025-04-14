import SwiftUI
import ComposableArchitecture

struct TownLifeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Text("금호동")
                    Image(systemName: "chevron.down")
                    
                    Spacer()
                    Image(systemName: "circle")
                    Image(systemName: "circle")
                    Image(systemName: "circle")
                }

                ScrollView(.vertical) {
                    
                }
            }
            .padding()
        }
        
    }
}

#Preview {
    TownLifeView()
}
