/* 
Copyright (c) 2021 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Prev_out : Codable {
	let spent : Bool?
	let spending_outpoints : [Spending_outpoints]?
	let tx_index : Int?
	let type : Int?
	let addr : String?
	let value : Int?
	let n : Int?
	let script : String?

	enum CodingKeys: String, CodingKey {

		case spent = "spent"
		case spending_outpoints = "spending_outpoints"
		case tx_index = "tx_index"
		case type = "type"
		case addr = "addr"
		case value = "value"
		case n = "n"
		case script = "script"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		spent = try values.decodeIfPresent(Bool.self, forKey: .spent)
		spending_outpoints = try values.decodeIfPresent([Spending_outpoints].self, forKey: .spending_outpoints)
		tx_index = try values.decodeIfPresent(Int.self, forKey: .tx_index)
		type = try values.decodeIfPresent(Int.self, forKey: .type)
		addr = try values.decodeIfPresent(String.self, forKey: .addr)
		value = try values.decodeIfPresent(Int.self, forKey: .value)
		n = try values.decodeIfPresent(Int.self, forKey: .n)
		script = try values.decodeIfPresent(String.self, forKey: .script)
	}

}