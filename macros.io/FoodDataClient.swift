//
//  FoodDataClient.swift
//  macros.io
//
//  Created by derek.xu on 2019-11-29.
//  Copyright © 2019 Derek Xu. All rights reserved.

import Alamofire
import Foundation

class FoodDataClient {
    
    let session = URLSession.shared
    let apiKey = ProcessInfo.processInfo.environment["API_KEY"]
    
    
    //MARK USDA API Requests
    
    // Get list of foods that match criteria supplied by model
    func getFoodList(food: String, completionHandler: @escaping (Result<FoodListResponseStruct, Error>) -> Void) -> Void{
        let url = URL(string: "https://api.nal.usda.gov/fdc/v1/search?api_key=" + apiKey!)!
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        var requestBody = FoodListRequestStruct()
        requestBody.generalSearchInput = food
        requestBody.pageNumber = 1
        requestBody.sortField = "publishedDate"
        requestBody.sortDirection = "desc"
        
        AF.request(url, method: .post, parameters: requestBody, encoder: JSONParameterEncoder.prettyPrinted).validate()
            .responseDecodable(of: FoodListResponseStruct.self) { response in
                //        debugPrint("Response: \(response)")
                
                switch response.result{
                case .success(let value as FoodListResponseStruct):
                    completionHandler(.success(value))
                    
                case .failure(let error):
                    completionHandler(.failure(error))
                }
        }
    }
    
    func getFoodId(){
        
    }
    
    func handleClientError(_ error: Error?){
        print("client side error!")
        print(error!.localizedDescription)
    }
    
    func handleServerError(_ response: HTTPURLResponse?){
        print("server side error, non 200 error code encountered: ")
        print(response!.statusCode)
        print(response!)
    }
    
}
