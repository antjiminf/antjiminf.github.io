import Foundation
import Ignite

struct ProjectsView: HTML {
    let title: NavOption
    let projects: [Project]
    let language: CustomLanguage
    
    var body: some HTML {
        Text(title.display(language).uppercased())
            .font(.title2)
            .foregroundStyle(.steelBlue)
            .margin(.top, 10)
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
                    } footer: {
                        ForEach(project.techStack) { tech in
                            Badge(tech)
                                .role(.info)
                                .badgeStyle(.subtleBordered)
                        }
                    }
                }
                .linkStyle(.button)
                .role(.none)
            }
        }
        .columns(2)
    }
}
