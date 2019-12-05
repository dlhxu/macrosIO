//
//  FoodListRequestStruct.swift
//  macros.io
//
//  Created by derek.xu on 2019-12-04.
//  Copyright © 2019 Derek Xu. All rights reserved.
//

import Foundation

struct FoodListRequestStruct: Codable{
    var generalSearchInput: String?="default"
    var pageNumber: Int?=0
    var sortField: String?="default"
    var sortDirection: String?="default"
}
