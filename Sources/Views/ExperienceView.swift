import Foundation
import Ignite

struct ExperienceView: HTML {
    let title: NavOption
    let jobs: [MyJob]
    let language: CustomLanguage
    
    var body: some HTML {
        Text(title.display(language).uppercased())
            .font(.title3)
            .foregroundStyle(.steelBlue)
            .margin(.top, 20)
            .margin(.bottom, 8)
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
                    .margin(.bottom, -4)
                Text(job.date)
                    .font(.body)
                    .foregroundStyle(.gray.weighted(.dark))
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
