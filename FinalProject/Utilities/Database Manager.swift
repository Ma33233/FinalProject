//
//  Database Manager.swift
//  FinalProject
//
//  Created by Maan Abdullah on 13/09/2022.
//

import Foundation
import Firebase
import FirebaseAuth
import FirebaseFirestore
import FirebaseStorage
final class DatabaseManager{
    
    static let shared = DatabaseManager()
    private let fireStore = Firestore.firestore()
    private let authRef = Auth.auth()
    private let storageRef = Storage.storage()
}
