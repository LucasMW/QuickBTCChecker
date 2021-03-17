/* 
Copyright (c) 2021 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Txs : Codable {
	let ver : Int?
	let inputs : [Inputs]?
	let weight : Int?
	let block_height : Int?
	let relayed_by : String?
	let out : [Out]?
	let lock_time : Int?
	let result : Int?
	let size : Int?
	let block_index : Int?
	let time : Int?
	let tx_index : Int?
	let vin_sz : Int?
	let hash : String?
	let vout_sz : Int?

	enum CodingKeys: String, CodingKey {

		case ver = "ver"
		case inputs = "inputs"
		case weight = "weight"
		case block_height = "block_height"
		case relayed_by = "relayed_by"
		case out = "out"
		case lock_time = "lock_time"
		case result = "result"
		case size = "size"
		case block_index = "block_index"
		case time = "time"
		case tx_index = "tx_index"
		case vin_sz = "vin_sz"
		case hash = "hash"
		case vout_sz = "vout_sz"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		ver = try values.decodeIfPresent(Int.self, forKey: .ver)
		inputs = try values.decodeIfPresent([Inputs].self, forKey: .inputs)
		weight = try values.decodeIfPresent(Int.self, forKey: .weight)
		block_height = try values.decodeIfPresent(Int.self, forKey: .block_height)
		relayed_by = try values.decodeIfPresent(String.self, forKey: .relayed_by)
		out = try values.decodeIfPresent([Out].self, forKey: .out)
		lock_time = try values.decodeIfPresent(Int.self, forKey: .lock_time)
		result = try values.decodeIfPresent(Int.self, forKey: .result)
		size = try values.decodeIfPresent(Int.self, forKey: .size)
		block_index = try values.decodeIfPresent(Int.self, forKey: .block_index)
		time = try values.decodeIfPresent(Int.self, forKey: .time)
		tx_index = try values.decodeIfPresent(Int.self, forKey: .tx_index)
		vin_sz = try values.decodeIfPresent(Int.self, forKey: .vin_sz)
		hash = try values.decodeIfPresent(String.self, forKey: .hash)
		vout_sz = try values.decodeIfPresent(Int.self, forKey: .vout_sz)
	}

}