import Foundation
import Ignite

struct Home: HTML {
    @Environment(\.decode) var decode
    let title = "Home"
    
    let language: CustomLanguage
    
//    var portfolio = Profile? {
//        decode.callAsFunction("\(language.rawValue).json", as: Profile.self)
//    }
    
    var body: some HTML {
        NavigationBarView(name: "Antonio Jiménez", language: language)
        IntroductionView(job: "Full Stack developer / iOS developer", description: "This is my description")
    }
    
//    init(language: CustomLanguage) {
//        self.language = language
//    }
}
