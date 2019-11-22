//
//  ViewController.swift
//  unwind_or_dismiss
//
//  Created by hiraoka on 2019/11/22.
//  Copyright © 2019 hiraoka. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func unwindToViewController(_ unwindSegue: UIStoryboardSegue) {
        let sourceViewController = unwindSegue.source
        label.text = "unwind from \n\(sourceViewController)"
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {[weak self] in
            self?.performSegue(withIdentifier: "showOther", sender: self)
        }
        
    }
}

