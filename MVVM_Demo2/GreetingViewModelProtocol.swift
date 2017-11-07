//
//  GreetingViewModelProtocol.swift
//  MVVM_Demo2
//
//  Created by Amrendra on 06/11/17.
//  Copyright © 2017 Amrendra. All rights reserved.
//

import Foundation

protocol GreetingViewModelProtocol: class {
    
    var greeting: String? { get }
    var greetingDidChange: ( (GreetingViewModelProtocol)->() )? { get set }
    init(person: Person)
    func showGreeting()
}
