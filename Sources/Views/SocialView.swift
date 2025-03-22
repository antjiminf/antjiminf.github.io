import Foundation
import Ignite

struct SocialView: HTML {
    let title: NavOption
    let socialStack: [SocialMedia]
    
    var body: some HTML {
        Text {
            ForEach(socialStack) { social in
                Link(social.iconName, target: social.url)
                    .role(.secondary)
                    .target(.blank)
                    .relationship(.noOpener, .noReferrer)
                    .margin(.trailing, 20)
            }
        }
        .horizontalAlignment(.center)
        .margin(.top, .xLarge)
        .font(.title2)
        .id(title.rawValue)
    }
}
