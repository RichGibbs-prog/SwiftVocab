//
//  DefinitionViewController.swift
//  SwiftVocabulary
//
//  Created by Richard Gibbs on 5/11/20.
//  Copyright © 2020 Rich Gibbs. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {


    @IBOutlet weak var vocabWordLabel: UILabel! 
    @IBOutlet weak var definitionText: UITextView!
    
    var vocabWord: VocabularyWord?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    

    func updateViews() {
        if let vocabWord = vocabWord {
            definitionText.text = vocabWord.definition
            vocabWordLabel.text = vocabWord.word
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

