//
//  API.swift
//  QuickBTCCheck
//
//  Created by Lucas Menezes on 3/16/21.
//  Copyright © 2021 Lucas Menezes. All rights reserved.
//

import Foundation
import Alamofire

struct ErrorMessage : Identifiable {
    var id : Int
    var title : String
    var description : String
}
class API {
    let baseUrl = "https://blockchain.info/rawaddr/"
    
    func getAddressData(address : String, completion : @escaping (AddressResponse?, ErrorMessage? )->()) {
           let url = "\(baseUrl)\(address)"
           print(url)
           Alamofire.request(url).responseJSON { (response) in
               switch response.result {
               case .success(_):
                
                let jsonDecoder = JSONDecoder()
                guard let data = response.data else {
                    completion(nil, ErrorMessage(id: 1, title: "Load Error", description: "Could not get Data"))
                    return
                }
                guard let responseModel = try? jsonDecoder.decode(AddressResponse.self, from: data) else {
                    completion(nil, ErrorMessage(id: 2, title: "Parse Error", description:  "Could not parse data"))
                    return
                }
                print("address \(responseModel.address.unsafelyUnwrapped)")
                print("received: \(responseModel.total_received.unsafelyUnwrapped)")
                print("sent: \(responseModel.total_sent.unsafelyUnwrapped)")
                print("balance \(responseModel.final_balance.unsafelyUnwrapped)")
                completion(responseModel, nil)

               case .failure(let error):
                print(response.description)
                completion(nil, ErrorMessage(id: 3, title: "Network Error", description: error.localizedDescription))
               }
           }
       }
    
}
