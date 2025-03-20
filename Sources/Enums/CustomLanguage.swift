import Foundation
import Ignite

enum CustomLanguage: String {
    case english = "English"
    case spanish = "Spanish"
    
    var flag: String {
        switch self {
            case .english: "🇪🇸"
            case .spanish: "🇬🇧"
        }
    }
    
    @MainActor
    var page: any StaticPage {
        switch self {
        case .english: SpanishPage()
        case .spanish: EnglishPage()
        }
    }
}
