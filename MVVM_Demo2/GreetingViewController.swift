//
//  GreetingViewController.swift
//  MVVM_Demo2
//
//  Created by Amrendra on 06/11/17.
//  Copyright © 2017 Amrendra. All rights reserved.
//

import UIKit

class GreetingViewController: UIViewController {

    var viewModel: GreetingViewModel! {
        didSet {
            self.viewModel.greetingDidChange = { [unowned self] viewModel in
                print("Greeting is = \(String(describing: viewModel.greeting))")
                self.greetingLbl.text = viewModel.greeting
        }
    }
    }    
    @IBOutlet weak var showGreetingButton: UIButton!
    @IBOutlet weak var greetingLbl: UILabel!
    
        override func viewDidLoad() {
        super.viewDidLoad()
            let selector = #selector(self.viewModel.showGreeting)
            self.showGreetingButton.addTarget(self.viewModel, action: selector, for: .touchUpInside)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
  
}


