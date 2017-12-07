//
//  ViewController.swift
//  InteractiveStory
//
//  Created by Henry Moran on 12/4/17.
//  Copyright © 2017 Henry Moran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "startAdventure" {
            
                do {
                    if let name = nameTextField.text {
                        if name == "" {
                            throw AdventureError.nameNotProvided
                        } else {
                            guard let pageController = segue.destination as? PageController else {
                                return
                            }
                            pageController.page = Adventure.story(withName: "Henry")
                        }
                        }
                } catch AdventureError.nameNotProvided {
                    let alertController = UIAlertController(title: "Name Not Provided", message: "Provide a name to start the story", preferredStyle: .alert)
                    
                    let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                    alertController.addAction(action)
                    
                    present(alertController, animated: true, completion: nil)
                } catch let error {
                    fatalError("\(error.localizedDescription)")
            }
        }
    }
    
}

