import Foundation
import Ignite

struct SocialView: HTML {
    let title: NavOption
    let socialStack: [SocialMedia]
    let language: CustomLanguage
    
    var body: some HTML {
        Divider()
//        Text(title.display(language).uppercased())
//            .font(.title2)
//            .foregroundStyle(.steelBlue)
//            .margin(.top, 10)
//            .margin(.bottom, 8)
//            .id(title.rawValue)
//        
//        ForEach(educations) { e in
//            Card {
//                Text(e.degree)
//                    .font(.title3)
//                //Descriptions AQUÍ
//                Text("This is card body text. This is card body text. This is card body text. This is card body text. This is card body text.")
//            } header: {
//                e.institution
//            } footer: {
//                //STACK TECNICO AQUÍ CON BADGES
//                "Your footer goes here footer"
//            }
//        }
    }
}
