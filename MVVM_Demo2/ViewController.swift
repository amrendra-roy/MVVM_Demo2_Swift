//
//  ViewController.swift
//  MVVM_Demo2
//
//  Created by Amrendra on 06/11/17.
//  Copyright © 2017 Amrendra. All rights reserved.
//

import UIKit

//https://medium.com/ios-os-x-development/ios-architecture-patterns-ecba4c38de52
//https://www.objc.io/issues/13-architecture/mvvm/.  [Good]

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier=="GreetingVC" {
            
            // Assembling of MVVM
            let model = Person(firstName: "David", lastName: "Blaine")
            let viewModel = GreetingViewModel(person: model)
            let view = segue.destination as! GreetingViewController //GreetingViewController()
            view.viewModel = viewModel
        }
        
    }
 

}
