import Mapbox

class CircleOptions: Options<PointGeometry> {
    static let KEY_CIRCLE_RADIUS = "circle-radius"
    static let KEY_CIRCLE_COLOR = "circle-color"
    static let KEY_CIRCLE_BLUR = "circle-blur"
    static let KEY_CIRCLE_OPACITY = "circle-opacity"
    static let KEY_CIRCLE_STROKE_WIDTH = "circle-stroke-width"
    static let KEY_CIRCLE_STROKE_COLOR = "circle-stroke-color"
    static let KEY_CIRCLE_STROKE_OPACITY = "circle-stroke-opacity"
    
    var geometry: PointGeometry?
    var properties = [String: AnyEncodable]()
    
    func setGeometry(geometry: [Double]) {
        let latLng = CLLocationCoordinate2D(latitude: geometry[0], longitude: geometry[1])
        if CLLocationCoordinate2DIsValid(latLng) {
            self.geometry = PointGeometry(coordinates: [latLng.longitude, latLng.latitude])
        }
    }

    func setDraggable(draggable: Bool) {
        //TODO: Implement
    }
    
    func setCircleRadius(circleRadius: Float) {
        properties[CircleOptions.KEY_CIRCLE_RADIUS] = AnyEncodable(circleRadius)
    }
    
    func setCircleColor(circleColor: String) {
        properties[CircleOptions.KEY_CIRCLE_COLOR] = AnyEncodable(circleColor)
    }
    
    func setCircleBlur(circleBlur: Float) {
        properties[CircleOptions.KEY_CIRCLE_BLUR] = AnyEncodable(circleBlur)
    }
    
    func setCircleOpacity(circleOpacity: Float) {
        properties[CircleOptions.KEY_CIRCLE_OPACITY] = AnyEncodable(circleOpacity)
    }
    
    func setCircleStrokeWidth(circleStrokeWidth: Float) {
        properties[CircleOptions.KEY_CIRCLE_STROKE_WIDTH] = AnyEncodable(circleStrokeWidth)
    }
    
    func setCircleStrokeColor(circleStrokeColor: String) {
        properties[CircleOptions.KEY_CIRCLE_STROKE_COLOR] = AnyEncodable(circleStrokeColor)
    }
    
    func setCircleStrokeOpacity(circleStrokeOpacity: Float) {
        properties[CircleOptions.KEY_CIRCLE_STROKE_OPACITY] = AnyEncodable(circleStrokeOpacity)
    }
    
    func build(id: Float) -> Circle? {
        if let geometry = geometry  {
            return Circle(id: id, geometry: geometry, properties: properties)
        }
        return nil
    }
}
