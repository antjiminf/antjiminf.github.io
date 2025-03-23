import Foundation
import Ignite

struct EducationView: HTML {
    let title: NavOption
    let educations: [Education]
    let language: CustomLanguage
    
    var body: some HTML {
        Text(title.display(language).uppercased())
            .font(.title3)
            .foregroundStyle(.steelBlue)
            .margin(.top, 80)
            .margin(.bottom, 8)
            .id(title.rawValue)
        
        ForEach(educations) { e in
            Card {
                Text(e.degree)
                    .font(.title4)
                List(e.descriptions) { text in
                    text
                }
            } header: {
                Text(e.institution)
                    .font(.title5)
                    .margin(.top, 8)
                    .margin(.bottom, -2)
                Text(e.date)
                    .font(.body)
                    .foregroundStyle(.gray.weighted(.dark))
            } footer: {
                ForEach(e.techStack) { tech in
                    Badge(tech)
                        .badgeStyle(.subtleBordered)
                        .role(.info)
                }
            }
            .cardStyle(.bordered)
            .role(.info)
        }
    }
}
