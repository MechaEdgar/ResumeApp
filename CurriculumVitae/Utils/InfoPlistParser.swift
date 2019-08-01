//
//  InfoPlistParser.swift
//  CurriculumVitae
//
//  Created by Edgar Escorza on 8/1/19.
//  Copyright © 2019 Edgar Escorza. All rights reserved.
//

import Foundation

struct InfoPlistParser {
    static func getStringValue(forKey key: String) -> String {
        guard let parser = Bundle.main.infoDictionary?[key] as? String else {
            fatalError("Could not find value for key \(key) in Info.Plist")
        }
        return parser
    }
}
