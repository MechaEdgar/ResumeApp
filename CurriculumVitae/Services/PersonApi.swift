//
//  PersonApi.swift
//  CurriculumVitae
//
//  Created by Edgar Escorza on 7/29/19.
//  Copyright © 2019 Edgar Escorza. All rights reserved.
//

import Foundation

class PersonApi {
    
    func getRandomPersonUrlSession() {
        
        guard let url = URL(string: PERSON_URL) else { return }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            
            guard error == nil else {
                debugPrint(error.debugDescription)
                return
            }
            
            guard let data = data else { return }
            
            do {
                let jsonAny = try JSONSerialization.jsonObject(with: data, options: [])
                guard let json =  jsonAny as? [String: Any] else { return }
                let person = self.parsePersonManual(json: json)
                
                print(person.name)
                print(person.mass)
                print(person.height)
                print(person.birthYear)
                print(person.gender)
                
            } catch {
                debugPrint(error.localizedDescription)
                return
            }
        }
        task.resume()
    }
    
    private func parsePersonManual(json: [String: Any]) -> Person {
        let name = json["name"] as? String ?? ""
        let height = json["height"] as? String ?? ""
        let mass = json["mass"] as? String ?? ""
        let birthYear = json["birth_year"] as? String ?? ""
        let gender = json["gender"] as? String ?? ""
        
        return Person(name: name, height: height, mass: mass, birthYear: birthYear, gender: gender)
    }
}
