import Foundation
import Ignite

struct Home: HTML {
    @Environment(\.decode) var decode
    let title = "Home"
    let language: CustomLanguage
    
//    var portfolio = Profile? {
//        decode.callAsFunction("\(language.rawValue).json", as: Profile.self)
//    }
    
    var body: some HTML {
        NavigationBarView(name: "Antonio Jiménez", language: language)
        IntroductionView(job: "Full Stack developer / iOS developer", description: "This is my description")
        ExperienceView(title: .experience,
                       jobs: [MyJob(companyName: "Numier", role: "FullStack Developer", location: "Seville, Spain", date: "march 2023 - juny 2023", descriptions: ["Lots"], techStack: ["Flutter", "PHP"])],
                       language: language)
        EducationView(title: .education,
                      educations: [Education(institution: "Apple Coding Academy", degree: "iOS Developer", date: "2024", location: "", descriptions: ["Something"], techStack: ["Swift", "SwiftData"])],
                      language: language)
        ProjectsView(title: .projects,
                     projects: [Project(name: "Cinema Wisdom", description: "App to discover movies", url: "https://github.com/antjiminf/cinema_wisdom", techStack: ["Swift", "SwiftUI"])],
                     language: language)
    }
    
//    init(language: CustomLanguage) {
//        self.language = language
//    }
}
