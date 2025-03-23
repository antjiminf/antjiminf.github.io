import Foundation
import Ignite

struct ExperienceView: HTML {
    let title: NavOption
    let jobs: [MyJob]
    let language: CustomLanguage
    
    var body: some HTML {
        Text(title.display(language).uppercased())
            .margin(.top, 60)
            .margin(.bottom, 8)
            .font(.title3)
            .foregroundStyle(.steelBlue)
            .id(title.rawValue)
        
        ForEach(jobs) { job in
            
            Card {
                Text(job.role)
                    .font(.title4)
                List(job.descriptions) { text in
                    text
                }
            } header: {
                Text(job.companyName)
                    .font(.title5)
                    .margin(.top, 8)
                    .margin(.bottom, 2)
                Text(job.date)
                    .font(.body)
                    .foregroundStyle(.gray.weighted(.semiDark))
            } footer: {
                ForEach(job.techStack) { tech in
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
