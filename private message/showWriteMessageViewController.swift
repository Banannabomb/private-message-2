//
//  showWriteMessageViewController.swift
//  private message
//
//  Created by admin on 7/18/18.
//  Copyright © 2018 admin. All rights reserved.
//

import Foundation
import UIKit
import CoreData
import os.log
//var messageArray: [ MessageContent] = CoreDataHelperMessages.retrieveMessages()
var messageArray: [String?] = []
class showWriteMessageViewController: UIViewController {
    
    @IBOutlet weak var messageTextView: UITextView!
    override func viewDidLoad() {
        if let savedMessages = loadMessages() {
            messageArray.append(savedMessages)
        }
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        messageTextView.text = nil
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        
        switch identifier {
        case "saveWriteMessage":
            let message = Content(messageContent: messageTextView.text)
            print("save bar button item tapped")
            message?.messageContent = messageTextView.text ?? ""
            print(message?.messageContent)
            messageArray.append(message?.messageContent)
            saveMessages()
        case "cancelWriteMessage":
            print("cancel bar button item tapped")
            
        default:
            print("unexpected segue identifier")
        }
    }
    private func saveMessages() {
        let isSuccessfulSave = NSKeyedArchiver.archiveRootObject(messageArray, toFile: Content.ArchiveURL.path)
        if isSuccessfulSave {
            os_log("Messages successfully saved.", log: OSLog.default, type: .debug)
        } else {
            os_log("Failed to save messages...", log: OSLog.default, type: .error)
        }
    }
    private func loadMessages() -> String? {
        return NSKeyedUnarchiver.unarchiveObject(withFile: Content.ArchiveURL.path) as! String?
    }
    
}
