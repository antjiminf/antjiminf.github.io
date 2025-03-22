import Foundation

struct PortfolioPageModel {
    let name: String
    let role: String
    let description: String
    let jobs: [MyJob]
    let education: [Education]
    let projects: [Project]
    let socialMedia: [SocialMedia]
}

struct MyJob {
    let companyName: String
    let role: String
    let location: String
    let date: String
    let descriptions: [String]
    let techStack: [String]
}

struct Education {
    let institution: String
    let degree: String
    let date: String
    let location: String
    let descriptions: [String]
    let techStack: [String]
}

struct Project {
    let name: String
    let description: String
    let url: String
    let techStack: [String]
}

struct SocialMedia {
    let iconUrl: String
    let url: String
}
