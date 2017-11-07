//
//  GreetingViewModel.swift
//  MVVM_Demo2
//
//  Created by Amrendra on 06/11/17.
//  Copyright © 2017 Amrendra. All rights reserved.
//

import Foundation
class GreetingViewModel: GreetingViewModelProtocol {
    
    let person: Person
    
    var greeting: String? {
        didSet {
            self.greetingDidChange?(self)
        }
    }
    
    var greetingDidChange: ((GreetingViewModelProtocol) -> ())?
    
    required init(person: Person) {
        self.person = person
    }
    
    @objc func showGreeting() {
        self.greeting = "Hello" + " " + self.person.firstName + " " + self.person.lastName
    }
}
