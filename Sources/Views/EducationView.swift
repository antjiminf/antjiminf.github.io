import Foundation
import Ignite

struct EducationView: HTML {
    let title: NavOption
    let educations: [Education]
    let language: CustomLanguage
    
    var body: some HTML {
        Text(title.display(language).uppercased())
            .font(.title2)
            .foregroundStyle(.primary)
            .margin(.top, 10)
            .margin(.bottom, 8)
            .id(title.rawValue)
        
        ForEach(educations) { e in
            Card {
                Text(e.degree)
                    .font(.title3)
                //Descriptions AQUÍ
                Text("This is card body text. This is card body text. This is card body text. This is card body text. This is card body text.")
            } header: {
                e.institution
            } footer: {
                //STACK TECNICO AQUÍ CON BADGES
                "Your footer goes here footer"
            }
        }
    }
}
