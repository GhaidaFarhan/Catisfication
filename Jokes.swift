//
//  Jokes.swift
//  App6
//
//  Created by Ghaida Farhan on 5/21/24.
//

import SwiftUI

struct AllJokes: View {
    let jokes = [Jokes(question: "Why did the cats ask for a drum set?", answer: "They wanted to make some mewsic!")
                 ,Jokes(question: "What's a cat's favorite TV show?", answer: "Claw and Order.")
                 ,Jokes(question: "How did the mom cat know she was pregnant?", answer: "Her test was pawsitive.")
                 ,Jokes(question: "What normally happens when kitties go on a first date?", answer: "They hiss.")
                 ,Jokes(question: "What's a cat's favorite cereal?", answer: "Mice Krispies.")
                 ,Jokes(question: "What color do kittens love the most?", answer: "Purrple.")
                 ,Jokes(question: "What does the cat say after making a joke?", answer: "'Just kitten!'")
                 ,Jokes(question: "When cats need to go to the airport, who do they call?", answer: "A tabby.")
                 ,Jokes(question: "Why did the cat have to go to an accountant?", answer: "They got caught up in a purramid scheme.")
                 ,Jokes(question: "What made the cat upgrade his phone?", answer: "He wanted to finally get pawtrait mode.")]
    
    
    var body: some View {
       
            VStack{
                TabView{
                    
                        ForEach(jokes, id: \.self) { comedy in
                            VStack{
                            Text("\(comedy.question)")
                                .font(.custom("Sparky Stones Regular", size: 30))
                                .padding(25)
                            
                                .background(.ultraThinMaterial)
                                .cornerRadius(40)
                            
                            
                            
                            Text("\(comedy.answer)")
                                .font(.custom("Sparky Stones Regular", size: 30))
                                .padding(20)
                            
                        }
                }
            }.tabViewStyle(.page)
        }
    }
}
#Preview {
    AllJokes()
}
