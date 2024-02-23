//
//  FireMeal.swift
//  FireFood-
//
//  Created by Anestis Tsolakidis on 23.02.24.
//

import Foundation
import FirebaseFirestoreSwift

struct FireMeal: Codable, Identifiable  {
    @DocumentID var id: String?
    
    var userId: String
    var title: String
    var description: String
}

