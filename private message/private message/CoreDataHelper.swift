//
//  CoreDataHelper.swift
//  private message
//
//  Created by admin on 8/21/18.
//  Copyright © 2018 admin. All rights reserved.
//
/*
import Foundation
import UIKit
import CoreData
struct CoreDataHelperMessages {
    static let contextMessage: NSManagedObjectContext = {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            fatalError()
        }
        
        let persistentContainer = appDelegate.persistentContainer
        let context = persistentContainer.viewContext
        
        return context
    }()
    static func newMessage() -> MessageContent {
        let message = NSEntityDescription.insertNewObject(forEntityName: "MessageContent", into: contextMessage) as! MessageContent
        
        return message
    }
    static func saveMessage() {
        do {
            try contextMessage.save()
        } catch let error {
            print("Could not save \(error.localizedDescription)")
        }
    }
    static func retrieveMessages() -> [MessageContent] {
        do {
            let fetchRequest = NSFetchRequest<MessageContent>(entityName: "MessageContent")
            let results = try contextMessage.fetch(fetchRequest)
            
            return results
        } catch let error {
            print("Could not fetch \(error.localizedDescription)")
            
            return []
        }
    }
    
}
struct CoreDataHelperPassphrases {
    static let contextPassphrase: NSManagedObjectContext = {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            fatalError()
        }
        
        let persistentContainer = appDelegate.persistentContainer
        let context = persistentContainer.viewContext
        
        return context
    }()
    static func newPassphrase() -> PassphraseContent {
        let passphrase = NSEntityDescription.insertNewObject(forEntityName: "PassphraseContent", into: contextPassphrase) as! PassphraseContent
        
        return passphrase
    }
    static func savePassphrase() {
        do {
            try contextPassphrase.save()
        } catch let error {
            print("Could not save \(error.localizedDescription)")
        }
    }
    static func retrievePassphrase() -> [PassphraseContent] {
        do {
            let fetchRequest = NSFetchRequest<PassphraseContent>(entityName: "PassphraseContent")
            let results = try contextPassphrase.fetch(fetchRequest)
            
            return results
        } catch let error {
            print("Could not fetch \(error.localizedDescription)")
            
            return []
        }
    }
    
}
*/
