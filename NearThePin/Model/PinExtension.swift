import Foundation
import MapKit

extension Pin {
    var coordinate: CLLocationCoordinate2D {
        set {
            longitude = newValue.longitude
            latitude = newValue.latitude
        }
        get {
            return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        }
    }
    
    func compare(to coordinate: CLLocationCoordinate2D) -> Bool {
        return(latitude == coordinate.latitude && longitude == coordinate.longitude)
    }
    
    public override func awakeFromInsert() {
        super.awakeFromInsert()
        creationDate = Date()
    }
}
