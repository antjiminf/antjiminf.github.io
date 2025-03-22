import Foundation
import Ignite

struct EducationView: HTML {
    let title: NavOption
    let educations: [Education]
    let language: CustomLanguage
    
    var body: some HTML {
        Text(title.display(language).uppercased())
            .font(.title2)
            .foregroundStyle(.steelBlue)
            .margin(.top, 10)
            .margin(.bottom, 8)
            .id(title.rawValue)
        
        ForEach(educations) { e in
            Card {
                Text(e.degree)
                    .font(.title4)
                List {
                    ForEach(e.descriptions) { text in
                        text
                    }
                }
            } header: {
                Text(e.institution)
                    .font(.title5)
                Text(e.date)
                    .font(.body)
                    .foregroundStyle(.secondary)
            } footer: {
                ForEach(e.techStack) { tech in
                    Badge(tech)
                        .badgeStyle(.subtleBordered)
                        .role(.info)
                }
            }
        }
    }
}
