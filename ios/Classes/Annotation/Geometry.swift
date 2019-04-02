
struct PointGeometry: Point {
    let type = "Point"
    var coordinates: [Double]
}

struct LineGeometry: LineString {
    let type = "LineString"
    var coordinates: [[Double]]
}

protocol Geometry: Encodable {
    var type: String { get }
}

protocol Point: Geometry {
    var coordinates: [Double] { get set }
}

protocol MultiPoint: Geometry {
    var coordinates: [[Double]] { get set }
}

protocol LineString: Geometry {
    var coordinates: [[Double]] { get set }
}

protocol MultiLineString: Geometry {
    var coordinates: [[[Double]]] { get set }
}

protocol Polygon: Geometry {
    var coordinates: [[[Double]]] { get set }
}

protocol MultiPolygon: Geometry {
    var coordinates: [[[Double]]] { get set }
}

