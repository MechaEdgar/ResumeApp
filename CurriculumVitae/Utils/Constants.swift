//
//  Constants.swift
//  CurriculumVitae
//
//  Created by Edgar Escorza on 7/29/19.
//  Copyright © 2019 Edgar Escorza. All rights reserved.
//

import UIKit

let BLACK_BG = UIColor.black.withAlphaComponent(0.6).cgColor


let URL_BASE =  InfoPlistParser.getStringValue(forKey: "BaseURL")
let PERSON_URL = URL_BASE + InfoPlistParser.getStringValue(forKey: "PersonURL")

typealias PersonResponseCompletion = (Person?) -> Void
