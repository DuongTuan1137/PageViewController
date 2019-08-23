//
//  PViewController.swift
//  x
//
//  Created by AnhDCT on 8/15/19.
//  Copyright © 2019 AnhDCT. All rights reserved.
//

import UIKit

class PViewController: UIViewController {
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var lbl: UILabel!
    let nameImg:String
    var nameAnimal:String
    let information:String
    override func viewDidLoad() {
        super.viewDidLoad()
        name.text = nameAnimal
        lbl.text = information
        img.image = UIImage(named: nameImg)

       
    }
    init(nameAnimal:String,information:String,nameImg:String) {
        self.nameAnimal = nameAnimal
        self.information = information
        self.nameImg = nameImg
        super.init(nibName: "PViewController", bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction func deletePage(_ sender: UIButton) {
        
    }
    

}
