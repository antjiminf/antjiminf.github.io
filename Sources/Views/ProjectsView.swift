import Foundation
import Ignite

struct ProjectsView: HTML {
    let title: NavOption
    let projects: [Project]
    let language: CustomLanguage
    
    var body: some HTML {
        Text(title.display(language).uppercased())
            .font(.title3)
            .foregroundStyle(.steelBlue)
            .margin(.top, 20)
            .margin(.bottom, 8)
            .id(title.rawValue)
        
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
                .role(.none)
                .width(4)
            }
        }
    }
}
