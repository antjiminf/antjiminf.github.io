import Foundation
import Ignite

struct Home: HTML {
    @Environment(\.decode) var decode
    @Environment(\.themes) private var themes
    let title = "Home"
    let language: CustomLanguage
    
    private var themeSwitcher: some HTML {
        Section {
            ForEach(themes) { theme in
                Button(theme.name.capitalized) {
                    SwitchTheme(theme)
                }
                .role(.light)
                .margin(.horizontal, .xSmall)
            }
        }
        .position(.fixedBottom)
        .background(.firebrick)
        .frame(height: 50)
        .frame(maxWidth: .percent(100%), alignment: .center)
    }
    
//    var portfolio = Profile? {
//        decode.callAsFunction("\(language.rawValue).json", as: Profile.self)
//    }
    
    var body: some HTML {
        NavigationBarView(name: "Antonio Jiménez Infante", language: language)
        IntroductionView(job: "Full Stack developer / iOS developer", description: "This is my description")
        ExperienceView(title: .experience,
                       jobs: [MyJob(companyName: "Numier", role: "FullStack Developer", location: "Seville, Spain", date: "march 2023 - juny 2023", descriptions: ["Lots"], techStack: ["Flutter", "PHP"])],
                       language: language)
        ProjectsView(title: .projects,
                     projects: [Project(name: "Cinema Wisdom", description: "App to discover movies", url: "https://github.com/antjiminf/cinema_wisdom", techStack: ["Swift", "SwiftUI"])],
                     language: language)
        EducationView(title: .education,
                      educations: [Education(institution: "Apple Coding Academy", degree: "iOS Developer", date: "2024", location: "", descriptions: ["Something"], techStack: ["Swift", "SwiftData"])],
                      language: language)
        SocialView(title: .contact, socialStack: [SocialMedia(iconName: "envelope", url: "mailto:antoniojz1998@gmail.com"),
                                                  SocialMedia(iconName: "github", url: "https://github.com/antjiminf"),
                                                  SocialMedia(iconName: "linkedin", url: "https://www.linkedin.com/in/antonio-jimenez-infante")])
        themeSwitcher
    }
    
//    init(language: CustomLanguage) {
//        self.language = language
//    }
}
