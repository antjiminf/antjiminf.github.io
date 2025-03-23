import Foundation
import Ignite

struct MyLightTheme: Theme {
    var colorScheme: Ignite.ColorScheme = .light
    
    static var name: String = "light"
    var syntaxHighlighterTheme: HighlighterTheme = .xcodeLight
}

struct MyDarkTheme: Theme {
    var colorScheme: Ignite.ColorScheme = .dark
    
    static var name: String = "dark"
    var syntaxHighlighterTheme: HighlighterTheme = .xcodeDark
}
