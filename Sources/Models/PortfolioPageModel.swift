import Foundation

struct PortfolioPageModel: Decodable {
    let name: String
    let role: String
    let description: String
    let jobs: [MyJob]
    let education: [Education]
    let projects: [Project]
    let socialMedia: [SocialMedia]
}

struct MyJob: Decodable {
    let companyName: String
    let role: String
    let location: String
    let date: String
    let descriptions: [String]
    let techStack: [String]
}

struct Education: Decodable {
    let institution: String
    let degree: String
    let date: String
    let location: String
    let descriptions: [String]
    let techStack: [String]
}

struct Project: Decodable {
    let name: String
    let description: String
    let url: String
    let techStack: [String]
}

struct SocialMedia: Decodable {
    let iconName: String
    let url: String
}
