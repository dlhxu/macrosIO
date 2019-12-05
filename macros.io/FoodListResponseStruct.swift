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


struct FoodData: Codable{
    var description: String?
    var servingSize: Float?
    var servingSizeUnit: String?
    var householdServingFullText: String?
    var labelNutrients: LabelNutrients?
    var brandedFoodCategory: String?
    var fdcId: Int?
}

struct NutrientVal: Codable{
    var value: Float?
}

struct LabelNutrients: Codable{
    var fat: NutrientVal?
    var saturatedFat: NutrientVal?
    var transFat: NutrientVal?
    var cholesterol: NutrientVal?
    var sodium: NutrientVal?
    var carbohydrates: NutrientVal?
    var fiber: NutrientVal?
    var sugars: NutrientVal?
    var protein: NutrientVal?
    var calcium: NutrientVal?
    var iron: NutrientVal?
    var calories: NutrientVal?
}
