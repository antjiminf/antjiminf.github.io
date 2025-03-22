import Foundation

enum NavOption: String, CaseIterable {
    
    case experience
    case education
    case projects
    case contact
    
    var icon: String {
        switch self {
        case .experience:
            return "💼"
        case .education:
            return "📚"
        case .projects:
            return "💻"
        case .contact:
            return "✉️"
        }
    }
    
    func display(_ language: CustomLanguage) -> String {
        switch (self, language) {
            case (.experience, .english):
                return "\(self.icon) Experience"
            case (.education, .english):
                return  "\(self.icon) Education"
            case (.projects, .english):
                return "\(self.icon) Projects"
            case (.contact, .english):
                return "\(self.icon) Contact"
            case (.experience, .spanish):
                return "\(self.icon) Experiencia"
            case (.education, .spanish):
                return "\(self.icon) Formación"
            case (.projects, .spanish):
                return "\(self.icon) Proyectos"
            case (.contact, .spanish):
                return "\(self.icon) Contacto"
        }
    }
}
