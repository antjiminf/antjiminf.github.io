import Foundation
import Ignite

struct ProjectsView: HTML {
    let title: NavOption
    let projects: [Project]
    let language: CustomLanguage
    
    var body: some HTML {
        Text(title.display(language).uppercased())
            .id(title.rawValue)
            .margin(.top, 60)
            .margin(.bottom, 8)
            .font(.title3)
            .foregroundStyle(.steelBlue)
        
        Grid {
            ForEach(projects) { project in
                Link(target: project.url) {
                    Card {
                        Text(project.description)
                            .font(.body)
                    } header: {
                        project.name
                            .font(.title5)
                    } footer: {
                        ForEach(project.techStack) { tech in
                            Badge(tech)
                                .role(.info)
                                .badgeStyle(.subtleBordered)
                        }
                    }
                    .cardStyle(.bordered)
                    .role(.info)
                }
                .linkStyle(.button)
                .relationship(.noOpener, .noReferrer)
                .role(.none)
                .width(4)
            }
        }
    }
}
