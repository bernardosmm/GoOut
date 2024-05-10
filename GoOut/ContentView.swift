import SwiftUI
import MapKit

struct ContentView: View {
    
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -3.731478, longitude: -38.531036),
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        )
    )
    var body: some View {
        Map(position: $position)
            .mapStyle(.standard(elevation: .flat))
    }
}



#Preview {
    ContentView()
}
