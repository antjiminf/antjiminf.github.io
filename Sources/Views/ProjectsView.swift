import Foundation
import Ignite

struct ProjectsView: HTML {
    let title: NavOption
    let projects: [Project]
    let language: CustomLanguage
    
    var body: some HTML {
        Text(title.display(language).uppercased())
            .margin(.top, 60)
            .margin(.bottom, 8)
            .font(.title3)
            .foregroundStyle(.steelBlue)
            .id(title.rawValue)
        
        Grid {
            ForEach(projects) { project in
                Spacer(size: .medium)
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
                .role(.none)
                .linkStyle(.button)
                .target(.blank)
                .relationship(.noOpener, .noReferrer)
                .hint(text: project.url)
                .width(4)
            }
        }
    }
}
