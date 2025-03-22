import Foundation
import Ignite

struct ProjectsView: HTML {
    let title: NavOption
    let projects: [Project]
    let language: CustomLanguage
    
    var body: some HTML {
        Text(title.rawValue.uppercased())
            .font(.title2)
            .foregroundStyle(.steelBlue)
            .margin(.top, 10)
            .margin(.bottom, 8)
        
        Grid {
            ForEach(projects) { project in
                Link(target: project.url) {
                    Card {
                        Text(project.description)
                            .font(.title4)
                    } header: {
                        project.name
                    } footer: {
                        ForEach(project.techStack) { tech in
                            Badge(tech)
                                .role(.info)
                                .badgeStyle(.subtleBordered)
                        }
                    }
                }
            }
        }
        .columns(2)
    }
}
