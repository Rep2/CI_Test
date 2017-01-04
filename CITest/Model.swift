import Unbox
import Alamofire

struct Model {
    let name: String
}

extension Model: Unboxable {
    init(unboxer: Unboxer) throws {
        self.name = try unboxer.unbox(key: "name")
    }
}

extension Model: Boxable {}
