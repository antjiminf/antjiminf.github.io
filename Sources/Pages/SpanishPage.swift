import Foundation
import Ignite

struct SpanishPage: StaticPage {
    let title: String
    
    init() {
        self.title = "antjiminf"
    }
    
    var body: some HTML {
        Home(language: .spanish)
    }
}
