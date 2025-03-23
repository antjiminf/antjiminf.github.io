import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = MySite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct MySite: Site {
    var name = "antjiminf"
    var titleSuffix = " – Portfolio"
    var url = URL(static: "https://antjiminf.github.io")
    var builtInIconsEnabled = true
    var pageWidth = 12
//    var favicon = URL(string: "example.com")
    var author = "Antonio Jiménez Infante"
    var feedConfiguration = FeedConfiguration(mode: .full, contentCount: 20, image: .init(url: "https://example.png", width: 32, height: 32))

    var homePage = EnglishPage()
    var layout = MainLayout()
    var darkTheme: (any Theme)? = MyDarkTheme()
    var lightTheme: (any Theme)? = MyLightTheme()
    
    var staticPages: [any StaticPage] = [EnglishPage(), SpanishPage()]
}
