//
//  Page.swift
//  InteractiveStory
//
//  Created by Henry Moran on 12/5/17.
//  Copyright © 2017 Henry Moran. All rights reserved.
//

import Foundation

class Page {
    let story: Story
    
    // creating a type alias (which is basically renaming a type howoever you want)
    typealias Choice = (title: String, page: Page)
    
    var firstChoice: Choice?
    var secondChoice: Choice?
    
    init(story: Story) {
        self.story = story
    }
    
}

extension Page {
    
    func addChoiceWith(title: String, story: Story) -> Page {
        let page = Page(story: story)
        return addChoiceWith(title: title, page: page)
    }
    
    func addChoiceWith(title: String, page: Page) -> Page {
        
        switch (firstChoice, secondChoice) {
        case (.some, .some): return self
        case (.none, .none), (.none, .some): firstChoice = (title, page)
        case (.some, .none): secondChoice = (title, page)
        }
        
        return page
    }
}
