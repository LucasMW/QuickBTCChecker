//
//  ContentView.swift
//  QuickBTCCheck
//
//  Created by Lucas Menezes on 3/16/21.
//  Copyright © 2021 Lucas Menezes. All rights reserved.
//

import SwiftUI



func satToBTCStr(sat: Int?) -> String{
    //    163711 ->  0.00163711
    guard let sats = sat else {
        return "??? BTC"
    }
    let double = Double(sats)/(1000 * 1000 * 100)
    print(double)
    return "\(double) BTC"
}
struct ContentView: View {
    @State var address : String = ""
    @State var balance : String = ""
    @State var received : String = ""
    @State var sent : String = ""
    @State var isShowingAlert = false
    @State var errorMessage : ErrorMessage? = nil
    
    var body: some View {
        VStack {
            Text("BTC Address Balance")
            //            .frame(maxWidth: .infinity, maxHeight: .infinity)
            HStack {
                Text("BTC Address")
                TextField("BTC Adddress", text: $address)
            }.padding()
            Button(action: {
                print(self.address)
                API().getAddressData(address: self.address) { response,error  in
                    if error != nil {
                        print(error!.title)
                        print(error!.description)
                        //self.isShowingAlert = true
                        self.errorMessage = error
                        return
                    }
                    self.sent = satToBTCStr(sat: response?.total_sent)
                    self.balance = satToBTCStr(sat: response?.final_balance)
                    self.received = satToBTCStr(sat: response?.total_received)
                    
                }
            }) {
                Text("Check")
            }
            Text("Sent \(sent)")
            Text("Received \(received)")
            Text("Current Balance \(balance)")
        }.padding(.horizontal, 8)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
//            .alert(isPresented: $isShowingAlert) {
//                return Alert(title: Text("Error"))
//        }
            .alert(item: $errorMessage) {err in
                //Alert(title: Text(err.title))
                Alert(title: Text(err.title), message: Text(err.description), dismissButton: .none)
        }
        
        
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
