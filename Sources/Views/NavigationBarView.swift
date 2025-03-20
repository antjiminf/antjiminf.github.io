import Foundation
import Ignite

struct NavigationBarView: HTML {
    let name: String
    let language: CustomLanguage
    
    var body: some HTML {
        NavigationBar(logo: name) {
            for opt in NavOption.allCases {
                Link(opt.display(language), target: "#\(opt.rawValue)")
            }
            Link("\(language.flag+" "+(language == .spanish ? "English Version" : "Versión Española"))",
                 target: language.page)
        }
        .width(.viewport)
        .navigationItemAlignment(.trailing)
        .navigationBarStyle(.dark)
        .background(.steelBlue)
        .position(.fixedTop)
    }
}
