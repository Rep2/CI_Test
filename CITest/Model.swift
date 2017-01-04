//import TweetFeedModels
import Unbox
import Alamofire

struct Model {
    let name: String

   // let size: Size
}

extension Model: Unboxable {
    init(unboxer: Unboxer) throws {
     //   self.size = try unboxer.unbox(key: "size")
        self.name = try unboxer.unbox(key: "name")
    }
}

extension Model: Boxable {}
