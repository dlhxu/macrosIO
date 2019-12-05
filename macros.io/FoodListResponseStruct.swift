//
//  FoodListResponseStruct.swift
//  macros.io
//
//  Created by derek.xu on 2019-11-29.
//  Copyright © 2019 Derek Xu. All rights reserved.
//

import Foundation

struct FoodListResponseStruct: Codable{
    var foodSearchCriteria: FoodSearchCriteriaStruct
    var totalHits: Int
    var totalPages: Int
    var foods: [FoodStruct]
}

struct FoodSearchCriteriaStruct: Codable{
    var generalSearchInput: String
    var pageNumber: Int
    var requireAllWords: Bool
}

struct FoodStruct: Codable{
    var fdcId: Int?
    var description: String?
    var dataType: String?
    var gtinUpc: String?
    var brandOwner: String?
    var allHighlightFields: String?
    var score: Float?
}
