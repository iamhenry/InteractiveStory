//
//  PageController.swift
//  InteractiveStory
//
//  Created by Henry Moran on 12/6/17.
//  Copyright © 2017 Henry Moran. All rights reserved.
//

import UIKit

class PageController: UIViewController {
    
    var page: Page?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(page: Page) {
        self.page = page
        super.init(nibName: nil, bundle: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .blue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
 

}
