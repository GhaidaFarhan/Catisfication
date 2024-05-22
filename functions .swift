//
//  functions .swift
//  App6
//
//  Created by Ghaida Farhan on 5/6/24.
//

import Foundation


enum viewsPage: String ,  CaseIterable {
   case Ocean , Forest , Cloud , Rain
    
    var viewsImages: String {
        switch self {
        case .Ocean :
            return "Ocean"
        case .Forest:
            return "Forest"
        case .Cloud:
            return "Cloud"
        case .Rain:
            return "Rain"
        }
    }
}

struct Jokes : Hashable {
    var question: String
    var answer: String
}





  /*
  1. Why did the cats ask for a drum set? They wanted to make some mewsic!
  2. What's a cat's favorite TV show? Claw and Order.
  3. How did the mom cat know she was pregnant? Her test was pawsitive.
  4. What normally happens when kitties go on a first date? They hiss.
  5. What's a cat's favorite cereal? Mice Krispies.
  6. What color do kittens love the most? Purrple.
  7. What does the cat say after making a joke? "Just kitten!"
  8. When cats need to go to the airport, who do they call? A tabby.
  9. Why did the cat have to go to an accountant? They got caught up in a purramid scheme.
  10. What made the cat upgrade his phone? He wanted to finally get pawtrait mode.
  */





























