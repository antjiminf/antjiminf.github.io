import Foundation
import Ignite

struct EnglishPage: StaticPage {
    let title: String
    
    init() {
        self.title = "antjiminf"
    }
    
    var body: some HTML {
        Home(language: .english)
    }
}
