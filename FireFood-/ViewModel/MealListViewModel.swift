//
//  MealListViewModel.swift
//  FireFood-
//
//  Created by Anestis Tsolakidis on 23.02.24.
//

import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift


class MealListViewModel: ObservableObject {
    
    private var listener: ListenerRegistration?
    @Published var meals: [FireMeal] = []
    
}





  func createMeal(title: String, description: String) {
    guard let userId = FirebaseManager.shared.userId else { return }
    
    let meal = FireMeal(userId: userId, title: title, description: description)
    
    do {
        try FirebaseManager.shared.database.collection("meals").addDocument(from: meal)
    } catch let error {
        print("Fehler beim Speichern des Meals: \(error)")
    }
}
    
    

