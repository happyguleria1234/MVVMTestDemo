/* 
Copyright (c) 2021 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Json4Swift_Base : Codable {
	let user_id : String?
	let is_request : String?
	let golf_id : String?
	let stripe_account_status : String?
	let image : String?
	let user_name : String?
	let account_id : String?
	let customer_id : String?
	let first_name : String?
	let last_name : String?
	let time_zone : String?
	let isgolf_registered : String?
	let dob : String?
	let gender : String?
	let mobile_no : String?
	let hometown : String?
	let profession : String?
	let member_course : String?
	let golf_handicap : String?
	let password : String?
	let confirm_password : String?
	let email : String?
	let email_verification : String?
	let verification_code : String?
	let disable : String?
	let allow_push : String?
	let allow_location : String?
	let fb_token : String?
	let google_token : String?
	let apple_token : String?
	let creation_at : String?

	enum CodingKeys: String, CodingKey {

		case user_id = "user_id"
		case is_request = "is_request"
		case golf_id = "golf_id"
		case stripe_account_status = "stripe_account_status"
		case image = "image"
		case user_name = "user_name"
		case account_id = "account_id"
		case customer_id = "customer_id"
		case first_name = "first_name"
		case last_name = "last_name"
		case time_zone = "time_zone"
		case isgolf_registered = "isgolf_registered"
		case dob = "dob"
		case gender = "gender"
		case mobile_no = "mobile_no"
		case hometown = "hometown"
		case profession = "profession"
		case member_course = "member_course"
		case golf_handicap = "golf_handicap"
		case password = "password"
		case confirm_password = "confirm_password"
		case email = "email"
		case email_verification = "email_verification"
		case verification_code = "verification_code"
		case disable = "disable"
		case allow_push = "allow_push"
		case allow_location = "allow_location"
		case fb_token = "fb_token"
		case google_token = "google_token"
		case apple_token = "apple_token"
		case creation_at = "creation_at"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		user_id = try values.decodeIfPresent(String.self, forKey: .user_id)
		is_request = try values.decodeIfPresent(String.self, forKey: .is_request)
		golf_id = try values.decodeIfPresent(String.self, forKey: .golf_id)
		stripe_account_status = try values.decodeIfPresent(String.self, forKey: .stripe_account_status)
		image = try values.decodeIfPresent(String.self, forKey: .image)
		user_name = try values.decodeIfPresent(String.self, forKey: .user_name)
		account_id = try values.decodeIfPresent(String.self, forKey: .account_id)
		customer_id = try values.decodeIfPresent(String.self, forKey: .customer_id)
		first_name = try values.decodeIfPresent(String.self, forKey: .first_name)
		last_name = try values.decodeIfPresent(String.self, forKey: .last_name)
		time_zone = try values.decodeIfPresent(String.self, forKey: .time_zone)
		isgolf_registered = try values.decodeIfPresent(String.self, forKey: .isgolf_registered)
		dob = try values.decodeIfPresent(String.self, forKey: .dob)
		gender = try values.decodeIfPresent(String.self, forKey: .gender)
		mobile_no = try values.decodeIfPresent(String.self, forKey: .mobile_no)
		hometown = try values.decodeIfPresent(String.self, forKey: .hometown)
		profession = try values.decodeIfPresent(String.self, forKey: .profession)
		member_course = try values.decodeIfPresent(String.self, forKey: .member_course)
		golf_handicap = try values.decodeIfPresent(String.self, forKey: .golf_handicap)
		password = try values.decodeIfPresent(String.self, forKey: .password)
		confirm_password = try values.decodeIfPresent(String.self, forKey: .confirm_password)
		email = try values.decodeIfPresent(String.self, forKey: .email)
		email_verification = try values.decodeIfPresent(String.self, forKey: .email_verification)
		verification_code = try values.decodeIfPresent(String.self, forKey: .verification_code)
		disable = try values.decodeIfPresent(String.self, forKey: .disable)
		allow_push = try values.decodeIfPresent(String.self, forKey: .allow_push)
		allow_location = try values.decodeIfPresent(String.self, forKey: .allow_location)
		fb_token = try values.decodeIfPresent(String.self, forKey: .fb_token)
		google_token = try values.decodeIfPresent(String.self, forKey: .google_token)
		apple_token = try values.decodeIfPresent(String.self, forKey: .apple_token)
		creation_at = try values.decodeIfPresent(String.self, forKey: .creation_at)
	}

}