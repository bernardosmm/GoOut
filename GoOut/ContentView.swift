
import SwiftUI
import MapKit  // Importando biblioteca do mapa


struct ContentView: View {
    @State var locations = [
        Locations(name: "Tabernas", coordinate: CLLocationCoordinate2D(latitude: -3.744751, longitude: -38.537488)),
        Locations(name: "Praia Nautico", coordinate: CLLocationCoordinate2D(latitude: -3.7246985883163584, longitude: -38.491181818998) )
    ]
    
    var body: some View {
//        @State var locations = [
//            Locations(name: "Tabernas", coordinate: CLLocationCoordinate2D(latitude: -3.744751, longitude: -38.537488)),
//            Locations(name: "Praia Nautico", coordinate: CLLocationCoordinate2D(latitude: -3.7246985883163584, longitude: -38.491181818998) )
//        ]
        VStack {
            let praiaDoNautico = CLLocationCoordinate2D(latitude: -3.7246985883163584, longitude: -38.491181818998)
            Map(){
                ForEach(locations) { location in
                    Marker(location.name, coordinate: location.coordinate)
                }
            }   // Inicializando o mapa
        }
        .mapStyle(.standard(elevation: .flat))  // Estilizando o mapa
    }

}

#Preview {
    ContentView()
}


