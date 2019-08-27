//
//  ViewController.swift
//  x
//
//  Created by AnhDCT on 7/16/19.
//  Copyright © 2019 AnhDCT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func del(_ sender: UIButton) {
        alert()
    }
    private func alert(){
        let alertDelete = UIAlertController(title: "Do you want delete this item", message: "Yes/No", preferredStyle: .alert)
        let no = UIAlertAction(title: "No", style: .cancel, handler: nil)
        let yes = UIAlertAction(title: "Yes", style: .default) { (a) in
            NotificationCenter.default.post(name: NSNotification.Name("A"), object: nil)
        }
        alertDelete.addAction(no)
        alertDelete.addAction(yes)
        present(alertDelete, animated: true, completion: nil)
    }
}

