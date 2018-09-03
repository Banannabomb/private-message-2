//
//  showCreateAPassphraseViewController.swift
//  private message
//
//  Created by admin on 7/18/18.
//  Copyright © 2018 admin. All rights reserved.
//

import Foundation
import UIKit
import CoreData
var passphraseArray: [String?] = []
class showCreateAPassphraseViewController: UIViewController {
    
    @IBOutlet weak var passphraseTextView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        passphraseTextView.text = nil
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        
        switch identifier {
        case "saveCreateAPassphrase":
            if passphraseTextView.text == nil {
                
            }
            let passphrase = Content1(passphraseContent: passphraseTextView.text)
            print("save bar button item tapped")
            passphrase?.passphraseContent = passphraseTextView.text ?? ""
            print(passphrase?.passphraseContent)
            passphraseArray.append(passphrase?.passphraseContent)
        case "cancelCreateAPassphrase":
            print("cancel bar button item tapped")
        default:
            print("unexpected segue identifier")
        }
    }
    
}

