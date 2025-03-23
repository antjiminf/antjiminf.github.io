import Foundation
import Ignite

struct Home: HTML {
    @Environment(\.decode) var decode
    @Environment(\.themes) private var themes
    let title = "Home"
    let language: CustomLanguage
    
    private var themeSwitcher: some HTML {
        Section {
            if let theme = themes.first(where: {$0.colorScheme == .light}) {
                Button {
                    Image(systemName: "sun")
                } actions: {
                    SwitchTheme(theme)
                }
                .role(.light)
                .margin(.horizontal, .xSmall)
                .foregroundStyle(.darkOrange)
                .font(.title5)
            }
            
            if let theme = themes.first(where: {$0.colorScheme == .dark}) {
                Button {
                    Image(systemName: "moon")
                } actions: {
                    SwitchTheme(theme)
                }
                .role(.dark)
                .margin(.horizontal, .xSmall)
                .foregroundStyle(.yellow)
                .font(.title5)
            }
        }
        .position(.fixedBottom)
        .background(.steelBlue)
        .frame(height: 50)
        .frame(maxWidth: .percent(100%), alignment: .center)
    }
    
    var portfolio: PortfolioPageModel? {
        decode.callAsFunction("\(language.rawValue).json", as: PortfolioPageModel.self)
    }
    
    var body: some HTML {
        if let portfolio {
            NavigationBarView(name: portfolio.name, language: language)
            IntroductionView(job: portfolio.role, description: portfolio.description)
            ExperienceView(title: .experience,
                           jobs: portfolio.jobs,
                           language: language)
            ProjectsView(title: .projects,
                         projects: portfolio.projects,
                         language: language)
            EducationView(title: .education,
                          educations: portfolio.education,
                          language: language)
            SocialView(title: .contact, socialStack: portfolio.socialMedia)
            themeSwitcher
        }
    }
    
    init(language: CustomLanguage) {
        self.language = language
    }
}
