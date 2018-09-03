//
//  Content.swift
//  private message
//
//  Created by admin on 8/2/18.
//  Copyright © 2018 admin. All rights reserved.
//
import Foundation
import os.log
class Content: NSObject, NSCoding {
    
    // MARK: - Properties
    var messageContent:String = ""
    //MARK: Archiving Paths
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("messages")

    //MARK: Types
    struct PropertyKey {
        static let messageContent = "messageContent"
    }
    init?(messageContent: String){
        guard !messageContent.isEmpty else {
            return nil
        }
        self.messageContent = messageContent
    }
    //MARK: NSCoding
    func encode(with aCoder: NSCoder) {
        aCoder.encode(messageContent, forKey: PropertyKey.messageContent)
    }
    required convenience init?(coder aDecoder: NSCoder) {
        guard let messageContent = aDecoder.decodeObject(forKey: PropertyKey.messageContent) as? String else {
            os_log("Unable to decode message", log: OSLog.default, type: .debug)
            return nil
        }
        self.init(messageContent: messageContent)
    }
}
class Content1: NSObject, NSCoding {
    
    // MARK: - Properties
    var passphraseContent:String = ""
    //MARK: Archiving Paths
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("passphrases")
    
    //MARK: Types
    struct PropertyKey {
        static let passphraseContent = "passphraseContent"
    }
    init?(passphraseContent: String){
        guard !passphraseContent.isEmpty else {
            return nil
        }
        self.passphraseContent = passphraseContent
    }
    //MARK: NSCoding
    func encode(with aCoder: NSCoder) {
        aCoder.encode(passphraseContent, forKey: PropertyKey.passphraseContent)
    }
    required convenience init?(coder aDecoder: NSCoder) {
        guard let passphraseContent = aDecoder.decodeObject(forKey:PropertyKey.passphraseContent) as? String else {
            os_log("Unable to decode the passphrase", log: OSLog.default, type: .debug)
            return nil
        }
        self.init(passphraseContent: passphraseContent)
    }
}
