import Foundation
import Ignite

struct ExperienceView: HTML {
    let title: NavOption
    let jobs: [MyJob]
    let language: CustomLanguage
    
    var body: some HTML {
        Text(title.display(language).uppercased())
            .font(.title2)
            .foregroundStyle(.steelBlue)
            .margin(.top, 10)
            .margin(.bottom, 8)
            .id(title.rawValue)
        
        ForEach(jobs) { job in
            
            Card {
                Text(job.role)
                    .font(.title4)
                List {
                    ForEach(job.descriptions) { text in
                        Text(text)
                            .font(.body)
                    }
                }
            } header: {
                job.companyName
            } footer: {
                ForEach(job.techStack) { tech in
                    Badge(tech)
                        .badgeStyle(.subtleBordered)
                        .role(.info)
                }
            }
        }
    }
}
