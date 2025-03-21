import Foundation
import Ignite

struct IntroductionView: HTML {
    let job: String
    let description: String
    
    var body: some HTML {
        Text(job)
            .horizontalAlignment(.center)
            .margin(.top, 100)
            .font(.title1)
        
        Divider()
        
        Text(description)
            .font(.body)
    }
}
