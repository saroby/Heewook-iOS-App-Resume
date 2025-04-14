import SwiftUI
import MapKit
import ComposableArchitecture

struct TownMapView: View {
    var body: some View {
        ZStack {
            Map()
        }        
    }
}

#Preview {
    TownMapView()
}
