//
//  showEnterAPassphraseViewController.swift
//  private message
//
//  Created by admin on 7/18/18.
//  Copyright © 2018 admin. All rights reserved.
//

import Foundation
import UIKit
import CoreData
//var enteredPassphraseInTextView: String = ""
var alertedTitle:String = ""
var alertedMessage:String = ""
let kayAction = UIAlertAction(title: "kay", style: .default, handler: nil)
var messageDisplay: String = ""
let enteredPassphraseContent = EnteredPassphrase()
var alertedMessageIntermediary = ""
var alertedTitleIntermediary = ""
class showEnterAPassphraseViewController: UIViewController {
    
    @IBOutlet weak var passphraseEntry: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        passphraseEntry.text = ""
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        
        switch identifier {
        case "Enter":
            print(enteredPassphraseContent.content as String?)
            print("enter bar button item tapped")
        case "cancelEnterAPassphrase":
            print("cancel bar button item tapped")
            
        default:
            print("unexpected segue identifier")
        }
    
    }
    @IBAction func clearOnCancel(_ sender: UIBarButtonItem) {
        print(enteredPassphraseContent.content as String?)
        //enteredPassphraseContent.content = nil
    }
    @IBAction func showAlert(_ sender: UIBarButtonItem) {
        print(enteredPassphraseContent.content as String?)
        print(alertedTitle)
        print(alertedMessage)
        //let alertController = alert
        enteredPassphraseContent.content = passphraseEntry.text
        print(passphraseEntry.text)
        print(alertedTitle)
        print(alertedMessage)
        alertedMessage = alertedMessageIntermediary
        alertedTitle = alertedTitleIntermediary
        if passphraseArray.contains(enteredPassphraseContent.content) {
            print(passphraseEntry.text)
            for x in 0...passphraseArray.count-1 {
                if enteredPassphraseContent.content == passphraseArray[x] {
                    print("alert was displayed with message")
                    if let messageArray = messageArray[x]{
                    alertedTitle = messageArray
                    print(alertedTitle)
                    alertedMessage = "If you can see this, my program worked and you put the right passphrase (i hope)"
                    print(alertedMessage)
                    let alert = UIAlertController(title: alertedTitle, message: alertedMessage ,  preferredStyle: .alert)
                    let alertController = alert
                    alert.addAction(kayAction)
                    self.present(alertController,animated: true,completion: nil)
                    }
                }
            }
        }
    
        else {
            //messageDisplay = "Wrong passphrase, or an error in my code"
            print("alert was displayed with preset message")
            alertedTitle = "NO MESSAGE FOR YOU"
            alertedMessage = "If you can see this, my program worked and you put the wrong passphrase (I hope)"
            let alert = UIAlertController(title: alertedTitle, message: alertedMessage ,  preferredStyle: .alert)
            let alertController = alert
            alert.addAction(kayAction)
            self.present(alertController,animated: true,completion: nil)
        }
        
    }
    
}
