//
//  ContactViewModel.swift
//  Firebase_Test
//
//  Created by Yusril on 11/05/23.
//

import Foundation
import FirebaseFirestore

class ContactViewModel: ObservableObject {
    @Published var contacts = [Contact]()
    
    private var db = Firestore.firestore()
    
    func fetcData() {
        db.collection("contacts").addSnapshotListener{( querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("no document")
                
                return
            }
            
            self.contacts = documents.map{( queryDocument) -> Contact in
                let data = queryDocumentSnapshot.data()
                let name = data["name"] as? String ?? ""
                
                return Contact(name: name)
            }
        }
    }
}
