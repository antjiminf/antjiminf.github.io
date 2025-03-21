import Foundation
import Ignite

struct ExperienceView: HTML {
    let title: NavOption
    let jobs: [MyJob]
    let language: CustomLanguage
    
    var body: some HTML {
        Text(title.display(language).uppercased())
            .font(.title2)
            .foregroundStyle(.primary)
            .margin(.top, 10)
            .margin(.bottom, 8)
            .id(title.rawValue)
        
        ForEach(jobs) { job in
            
            Card {
                Text(job.role)
                    .font(.title3)
                Text("This is card body text. This is card body text. This is card body text. This is card body text. This is card body text.")
            } header: {
                job.companyName
            } footer: {
                //STACK TECNICO AQUÍ CON BADGES
                "Your footer goes here footer"
            }
        }
    }
}
