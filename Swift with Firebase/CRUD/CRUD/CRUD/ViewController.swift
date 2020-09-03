//
//  ViewController.swift
//  CRUD
//
//  Created by Juan Sebastian on 11/08/20.
//  Copyright © 2020 Juan Sebastian. All rights reserved.
//

import UIKit
import Firebase
import FirebaseFirestore
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let db = Firestore.firestore()
        
        // =====ADDING A DOCUMENT=====
        
        // See: https://firebase.google.com/docs/firestore/manage-data/add-data
        // Creating collection either it already exists in Database or not.
        // db.collection("wine").addDocument(data: ["year":2017, "type":"cab", "label":"Stoney Path"])
        
        db.collection("wine").addDocument(data: ["year":2017, "type":"pinot-noir", "label":"Peller Estates"])
        // After this, a document is added, it has a collection named "wine" and a random document named "6iDWfGEKhys7N6qEZit".
        
        // ===== GETTING THE DOCUMENT ID =====
        
        let newDocument = db.collection("wine").document() // make a new document inside the collection
        
      
        newDocument.setData(["year":2017, "type":"gamay-noir", "label": "Peller Estates","id":newDocument.documentID])
          // set data is to replace the data in the document with whatever dictionary you are passing.
        
        // ===== ADDING A DOCUMENT WITH SPECIFIC DOCUMENT ID / REPLACING THE DATA =====
        
        db.collection("wine").document("pinot-noir-2017").setData(["test":"test"])
        // making a new document with the name "pinot-noir-2017 in "wine" collection and insert a label called "test" with the value of "test"
        
        db.collection("wine").document("pinot-noir-2017").setData(["hi":"hello"])
        // the label of the data is replaced to "hi" and the value of the data is replaced to "hello"
        
        db.collection("wine").document("pinot-noir-2017").setData(["hi":"hello","newLabel":"newValue"],merge:true)
        // adding a label called newLabel and a value called newValue inside the document pinot-noir 2017
        // Merge function is to merge the new label and new value into the document.
        
        // ===== UPDATING A SPECIFIC DOCUMENT ID =====
        db.collection("wine").document("stoneypath-cab-2017").setData(["year":2017, "type":"gamay-noir", "label":"Peller Estates"])
        
        // ===== DETECTING ERRORS =====
        db.collection("wine").addDocument(data: ["test":"test"]) { (error) in
            if let error = error{
                // there was an error
            }
            else{
                // error is nil, so operation completed successfully
            }
        }
        // ===== DELETE A DOCUMENT =====
        // See: https://firebase.google.com/docs/firestore/manage-data/delete-data
        
        db.collection("wine").document("6iDWfGEKhys7N6qEZitC").delete()
        // Delete a document called 6iDWfGEKhys7N6qEZitC in collection wine
        
        // ===== DELETE A FIELD =====
        db.collection("wine").document("stoneypath-cab-2017").updateData(["type":FieldValue.delete()])
        // It will delete one field from document stoneypath-cab-2017
        
        // ===== DETECT FOR ERRORS, USE COMPLETION PARAMETER =====
        
        // read a specific document
        // See: https://firebase.google.com/docs/firestone/query-data/get-data
        db.collection("wine").document("TI9ntrx5tFAJ1tD3zKO").delete { (error) in
        if error != nil{
            // there was an error
        }
        else{
            
            // Deleted successfully
        }
            
            db.collection("wine").document("ZWihn84hXa21To1UQNDz").getDocument { (document, error) in
                
                // Check for error
                if error == nil {
                    // Check if that document exists
                    if document != nil && document!.exists{
                        let documentData = document!.data()
                    }
                }
            }
        // ===== GETTING ALL DOCUMENTS FROM A COLLECTION =====
            db.collection("wine").getDocuments { (snapshot, error) in
                
                if error == nil && snapshot != nil{
                    
                    for document in snapshot!.documents{
                        let documentData = document.data()
                        // returning all documents from the place where all document lives inside the for loop and accessing the particular dictionary data
                    }
                    // snapshot?.documents is the place where all document lives
                }
            }
        
            // ===== GETTING A SUBSET OF DOCUMENT =====
            db.collection("wine").whereField("year", isEqualTo:2017).getDocuments{ (snapshot,error) in
                // grabbing all the wines that was produced in year 2017
                if error == nil && snapshot != nil{
                    
                    for document in snapshot!.documents{
                        let documentData = document.data()
                        // returning all documents from the place where all document lives inside the for loop and accessing the particular dictionary data
                    }
                    // snapshot?.documents is the place where all document lives
                }
            }
        }
        
    }
}

