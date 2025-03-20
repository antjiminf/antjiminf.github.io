import Foundation
import Ignite

struct IntroductionView: HTML {
    let job: String
    let description: String
    
    var body: some HTML {
        Text(job)
            .margin(.top, 50)
            .frame(alignment: .center)
            .font(.title1)
        
        Divider()
        
        Text(description)
            .font(.body)
    }
}
