import SwiftUI
import MapKit

struct Location: Identifiable {
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
}

extension Int: Identifiable {
    public var id: Int {
        self
    }
}

struct ContentView: View {
    @State private var selectedTag: Int?
//    @State var detents: PresentationDetent = .medium//.height(60)
    
    let locations = [
        Location(name: "Passeio de caiaque", coordinate: CLLocationCoordinate2D(latitude: -3.724818, longitude: -38.492178)),
        Location(name: "Trilha no cocó", coordinate: CLLocationCoordinate2D(latitude: -3.765658, longitude: -38.468657)),
        Location(name: "Feira da messejana", coordinate: CLLocationCoordinate2D(latitude: -3.832369, longitude: -38.498518)),
        Location(name: "Happy hour do Academy", coordinate: CLLocationCoordinate2D(latitude: -3.742856, longitude: -38.536823))
    ]
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -3.731478, longitude: -38.531036),
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        )
    )
    var body: some View {
        NavigationStack {
            Map(selection: $selectedTag) {
                //            ForEach(locations) { location in
                Marker(locations[2].name, coordinate: locations[2].coordinate)
                    .tag(locations.index(2, offsetBy: 0))
                Marker(locations[3].name, coordinate: locations[3].coordinate)
                    .tag(locations.index(3, offsetBy: 0))
                Marker(locations[1].name, coordinate: locations[1].coordinate)
                    .tag(locations.index(1, offsetBy: 0))
                Marker(locations[0].name, coordinate: locations[0].coordinate)
                    .tag(locations.index(0, offsetBy: 0))
                //                        }
            }
            .sheet(item: $selectedTag) { tag in
                Group {
                    if tag == 1 {
                        EventoTrilhaView()
                    }
                    if tag == 2 {
                        EventoFeiraView()
                    }
                    if tag == 0 {
                        Evento()
                    }
                    if tag == 3 {
                        EventoHappyHour()
                    }
                }
            }
//            .safeAreaInset(edge: .bottom) {
//                VStack(spacing: 0, content: {
//                    if let selectedTag {
//                        Button("testea") {
//                            print(selectedTag)
//                        }
//                        if selectedTag == 1 {
//                            EventoTrilhaView()
//                        }
//                        if selectedTag == 2 {
//                            EventoFeiraView()
//                        }
//                    }
//                })
//            }
    }
//        .presentationDetents([.height(60), .medium, .large], selection: $detents)
    }
}

#Preview {
    ContentView() // View do Bernardo com Pedro
}
